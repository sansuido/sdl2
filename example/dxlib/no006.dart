// https://dxlib.xsrv.jp/dxprogram.html#N6
// 5.サウンドのベル基本
// 5.Sound novel basics
import 'dart:ffi';
import 'dart:math';
import 'package:ffi/ffi.dart';
import 'package:sdl2/sdl2.dart';

const gTitle = 'DXLIB Tutorial 06';
const gScreenWidth = 640;
const gScreenHeight = 480;
const gFontPath = 'res/SourceHanCodeJP.ttc';
//const gFontPath = 'C:/Windows/Fonts/msgothic.ttc';
const gFontSize = 24;
const gString = '　ゲームプログラムとは、いやプログラムとは'
    'ある事柄を実現するプログラムの方法を説明されても理解できないことがある。B'
    '@　なぜならそのプログラム技法も何かの基本的な技法の組み合わせで出来ているからだ。B'
    '@　これはその他の学問も基本がわからないと応用が利かないということと同じ現象で、'
    '別に特に珍しいことでもない。B'
    'C　しかしゲームプログラムとなると覚えなくてはならない基礎が沢山あり、'
    'さらにある程度クオリティの高いソフトを作ろうとすると色々なプログラム技法を'
    '習得しなくてはならない。B'
    '@　しかもある程度レベルが高くなると自分で技法を編み出すか、技術レベルの高い'
    'プログラマーに聞くなどするしか方法がなく大変厄介である。B'
    'というかそのせいでゲームプログラムの敷居は高くなっているといえる。BE';

final gTextColor = SdlColorEx.rgbaToU32(0, 0, 0, 255);
final gAlertColor = SdlColorEx.rgbaToU32(255, 0, 0, 255);

class Game {
  Pointer<SdlWindow> window = nullptr;
  Pointer<SdlRenderer> renderer = nullptr;
  Pointer<SdlTexture> pressAnyKeyTexture = nullptr;
  var charaTextures = <String, Pointer<SdlTexture>>{};
  var displayString = '';
  var displayPos = 0;
  var running = false;
  var buttonWait = false;
  var tick = 0;

  bool init() {
    if (sdlInit(SDL_INIT_VIDEO) != 0) {
      return false;
    }
    if (ttfInit() != 0) {
      return false;
    }
    window = SdlWindowEx.create(
        title: gTitle,
        w: gScreenWidth,
        h: gScreenHeight,
        flags: SDL_WINDOW_RESIZABLE);
    if (window == nullptr) {
      return false;
    }
    renderer = window.createRenderer(
        -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (renderer == nullptr) {
      return false;
    }
    return loadCharaTextures() && loadPressAnyKeyTexture();
  }

  bool loadCharaTextures() {
    var font = TtfFontEx.open(gFontPath, gFontSize);
    if (font == nullptr) {
      return false;
    }
    for (var n = 0; n < gString.length; n++) {
      var chara = gString[n];
      if (charaTextures.containsKey(chara) == false) {
        var surface = font.renderUtf8Blended(chara, gTextColor);
        if (surface != nullptr) {
          var texture = renderer.createTextureFromSurface(surface);
          charaTextures[chara] = texture;
          surface.free();
        }
      }
    }
    font.close();
    return true;
  }

  bool loadPressAnyKeyTexture() {
    var font = TtfFontEx.open(gFontPath, gFontSize);
    if (font == nullptr) {
      return false;
    }
    var surface =
        font.renderUtf8Shaded('[PRESS ANY KEY]', gTextColor, gAlertColor);
    if (surface != nullptr) {
      pressAnyKeyTexture = renderer.createTextureFromSurface(surface);
      surface.free();
    }
    font.close();
    return true;
  }

  void handleEvents() {
    var event = calloc<SdlEvent>();
    while (event.poll() != 0) {
      switch (event.type) {
        case SDL_QUIT:
          running = false;
          break;
        case SDL_KEYDOWN:
          if (buttonWait) {
            buttonWait = false;
          }
          break;
        default:
          break;
      }
    }
    event.callocFree();
  }

  void update() {
    if (buttonWait == false) {
      if (tick > 2) {
        if (displayPos < gString.length) {
          switch (gString[displayPos]) {
            // ボタン押し待ち
            case 'B':
              buttonWait = true;
              break;
            // クリア文字
            case 'C':
              displayString = '';
              break;
            // 終了文字
            case 'E':
              running = false;
              break;
            // その他
            default:
              displayString += gString[displayPos];
              break;
          }
          displayPos++;
        }
        tick = 0;
      }
      tick++;
    }
  }

  void render() {
    renderer.setDrawColor(255, 255, 255, 255);
    renderer.clear();
    var drawX = 0;
    var drawY = 0;
    var height = 0;
    for (var n = 0; n < displayString.length; n++) {
      var chara = displayString[n];
      switch (chara) {
        // 改行文字
        case '@':
          if (drawX > 0) {
            drawX = 0;
            drawY += height;
            height = 0;
          }
          break;
        default:
          var texture = charaTextures[chara];
          if (texture != nullptr) {
            var size = texture!.getSize()!;
            if (chara != '。' &&
                chara != '、' &&
                (drawX + size.x) > window.getSize().x) {
              drawX = 0;
              drawY += height;
              height = 0;
            }
            renderer.copy(texture,
                dstrect: Rectangle(drawX, drawY, size.x, size.y));
            drawX += size.x.toInt();
            height = size.y.toInt() > height ? size.y.toInt() : height;
          }
          break;
      }
    }
    if (buttonWait) {
      var size = pressAnyKeyTexture.getSize()!;
      drawX = 0;
      drawY += height;
      renderer.copy(pressAnyKeyTexture,
          dstrect: Rectangle(drawX, drawY, size.x, size.y));
    }
    renderer.present();
  }

  void run() {
    running = true;
    while (running) {
      handleEvents();
      update();
      render();
    }
  }

  void close() {
    charaTextures.forEach((key, texture) {
      texture.destroy();
    });
    pressAnyKeyTexture.destroy();
    renderer.destroy();
    window.destroy();
    ttfQuit();
    sdlQuit();
  }
}

int main() {
  var game = Game();
  if (game.init() == true) {
    game.run();
  } else {
    print(sdlGetError());
  }
  game.close();
  return 0;
}

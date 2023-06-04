# MaskedScreenDisplayForTutorial
Tutorials and walkthroughs often overlay a spotlight view on the main content screen.  
This SwiftUI sample app implemented this functionality.

## Environment

* Xcode 14.3
* iOS 14 and later
* SwiftUI(3+)

## Sample GIF

![article_230529_03](https://github.com/MilanistaDev/Zenn-docs/assets/8732417/f3ba5740-400d-444e-8ebc-8babba09a256)

## 仕様 / Specification

今回のサンプルの仕様は下記のようにします。  
The specifications for this sample app are as follows.

### Main specifications of this App

* Overlay the spotlight view over the main screen with the TabBar and NavigationBar
* Display the spotlight view 1 second after displaying the main screen (no animation)
* Release the spotlight state by tapping the spotlight view screen
* The spotlight is a 64pt circle and is displayed above the button at the bottom right of the screen.
* Display function description balloons over spotlights

### 今回の主な仕様

* TabBar と NavigationBar があるメイン画面の上にスポットライトビューを画面全体に被せる
* スポットライトビューはメイン画面表示後から1秒後に表示させる(アニメーションなし)
* スポットライトビューの画面をタップしたらスポットライト状態を解除する
* スポットライトは 64pt の円とし，画面右下のボタンの上に表示する
* 機能説明の吹き出しをスポットライトの上に表示する

## 実装ポイント / Point of implementation

以下の実装のポイントをおさえます。  
Study the following implementation points.

### Point of implementation

* Review the basic writing style of SwiftUI
* Allow SwiftUI to use UIKit's `UIModalPresentationStyle.overFullScreen`
* Cut out part of the View to make it look like a spotlight

### 今回の実装のポイント

* SwiftUI の基本的な書き方の復習
* SwiftUI で UIKit の `UIModalPresentationStyle.overFullScreen` を使えるようにする
* View の一部を切り取ってスポットライトのように表示させる

## Article

**Zenn**  
[TBD]()


## Contact

Please feel free to contact us if you find a bug or have any feedback.  
Suggestions for adding functions and code corrections are also welcome.

```swift
let name = "Takuya Aso" 
let email = "milanista224" + "@" + "gmail.com"
let profession = "iOS Engineer"
let location = "Tokyo"
```

使ってみてよかったので共有する
今回使用するファイルはこちら
https://github.com/material-components/material-components-ios


## インストール

Githubの手順通りに進めていく

1. cocoapodsのインストール（インストール済みの場合はスキップ）

```
sudo gem install cocoapods 
```

2. podファイル作成(作成済みの場合はスキップ)

```
pod init
```

3. podファイルに下記を追加

```
pod 'MaterialComponents'
```

4. コンポーネントのインストール

```
pod install
```

5. Xcodeで開くワークスペースを変更


![スクリーンショット 2017-08-08 23.07.50.png](https://qiita-image-store.s3.amazonaws.com/0/139360/c27e72a6-afbd-cdb4-8a88-843338b8ffcd.png "スクリーンショット 2017-08-08 23.07.50.png")


## 使ってみる

### Raised button

storybordにボタンを追加してclassを「MDCButton」にする

![スクリーンショット 2017-08-08 23.11.37.png](https://qiita-image-store.s3.amazonaws.com/0/139360/7b2b9c31-4ed5-d7c7-a935-1411b943df2d.png "スクリーンショット 2017-08-08 23.11.37.png")

すると、マテリアルボタンができる

![MaterialButton.gif](https://qiita-image-store.s3.amazonaws.com/0/139360/e3247bf0-4992-0254-8c8d-2bbd94186fee.gif "MaterialButton.gif")


### Floating action button

これも同じ手順で下記を「MDCFloatingButton」を設定する

![スクリーンショット 2017-08-08 23.15.30.png](https://qiita-image-store.s3.amazonaws.com/0/139360/ac743488-337b-af18-7e8a-961d0846a806.png "スクリーンショット 2017-08-08 23.15.30.png")

すると、Floating Buttonが作成できる	

![FloatingButton.gif](https://qiita-image-store.s3.amazonaws.com/0/139360/c3f330d3-b799-f236-c3eb-183f9c270eec.gif "FloatingButton.gif")


### ボタンの色や、背景色を変更する場合は下記のコードを追加


- 文字色の変更

```swift
materialButton.setTitleColor(UIColor.white, for: .normal)
```


- 背景変更

```swift
materialButton.setBackgroundColor(UIColor.blue, for: .normal)
```

### Material dialog

- podファイルに下記を追加する

```
pod 'MaterialComponents/Dialogs'
```

- インストールする

```
pod install
```

- ダイアログを出したいときに下記のコードを追加する

```swift
let alertController = MDCAlertController(title: "Material Dialog", message: "This is Material Dialog! Let's Start Now!")
let action = MDCAlertAction(title:"OK")
alertController.addAction(action)
        
present(alertController, animated:true)
```

すると、ダイアログが出る

![MaterialDialog2.gif](https://qiita-image-store.s3.amazonaws.com/0/139360/e70c8878-064e-6647-a792-37b4671a17ed.gif "MaterialDialog2.gif")


他にもいろんなcomponentが用意されているのでぜひ使ってみてください
https://material.io/components/ios/






# BYSwiftButton

Simple and customizable button in Swift.

<a><img src="https://github.com/bayramyelec/BYSwiftButton/blob/1ad6eb35f4e8fcf8b44feb75c60121d90d4afad9/Gif/1.gif" width="200" /></a>
<a><img src="https://github.com/bayramyelec/BYSwiftButton/blob/1ad6eb35f4e8fcf8b44feb75c60121d90d4afad9/Gif/2.gif" width="200" /></a>
<a><img src="https://github.com/bayramyelec/BYSwiftButton/blob/91214af731522d8ec4382f0ac46f77a618befc61/Gif/4.gif" width="200" /></a>

## Properties

- Easy to Use: Quickly integrated.
- Customizability: Color, size, rounded corners and icon support.
- UIKit Support: Optimized for UIKit projects.

  
## Installation 

### Swift Package Manager (SPM)

1- Open your project in Xcode.

2- Click File > Add Packages...

3- Enter the following URL and click the Add Package button:

```bash 
  https://github.com/bayramyelec/BYSwiftButton
```
    
# Usage

### Skeuomorphic Button

<a><img src="https://github.com/bayramyelec/BYSwiftButton/blob/1ad6eb35f4e8fcf8b44feb75c60121d90d4afad9/Gif/1.gif" width="300" /></a>

```swift
    let skeuoButton = BYSkeuomorphicButton(title: "Press me", textColor: .black, backgroundColor: .systemGray6, cornerRadius: 10)
    skeuoButton.translatesAutoresizingMaskIntoConstraints = false
    stackView.addArrangedSubview(skeuoButton)
    NSLayoutConstraint.activate([
      skeuoButton.heightAnchor.constraint(equalToConstant: 50)
    ])
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `title`      | `string` | **Button Text.**. |
| `textColor`      | `UIColor` | **Button Text Color.**. |
| `backGroundColor`      | `UIColor` | **Button Background Color.**. |
| `cornerRadius`      | `CGFloat` | **Button Corner Radius.**. |

### Neon Button

<a><img src="https://github.com/bayramyelec/BYSwiftButton/blob/1ad6eb35f4e8fcf8b44feb75c60121d90d4afad9/Gif/2.gif" width="300" /></a>

```swift
    let neonButton = BYNeonButton(title: "Press me", shadowColor: .systemCyan, cornerRadius: 20)
    neonButton.translatesAutoresizingMaskIntoConstraints = false
    stackView.addArrangedSubview(neonButton)
    NSLayoutConstraint.activate([
      neonButton.heightAnchor.constraint(equalToConstant: 50)
    ])
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `title`      | `string` | **Button Text.**. |
| `shadowColor`      | `UIColor` | **Button Shadow Color.**. |
| `cornerRadius`      | `CGFloat` | **Button Corner Radius.**. |

### Pressable Button

<a><img src="https://github.com/bayramyelec/BYSwiftButton/blob/91214af731522d8ec4382f0ac46f77a618befc61/Gif/4.gif" width="300" /></a>

```swift
    let pressableButton = BYPressableButton(title: "Press me", backgroundColor: .lightGray, textColor: .black, shadowColor: .darkGray, cornerRadius: 10)
    pressableButton.translatesAutoresizingMaskIntoConstraints = false
    stackView.addArrangedSubview(pressableButton)
    NSLayoutConstraint.activate([
      pressableButton.heightAnchor.constraint(equalToConstant: 50)
    ])
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `title`      | `string` | **Button Text.**. |
| `backGroundColor`      | `UIColor` | **Button Background Color.**. |
| `textColor`      | `UIColor` | **Button Text Color.**. |
| `shadowColor`      | `UIColor` | **Button Shadow Color.**. |
| `cornerRadius`      | `CGFloat` | **Button Corner Radius.**. |


# LICENSE

[MIT](https://github.com/bayramyelec/BYSwiftButton/blob/220287420a26a778bb075f255f16b4e9993b6bcd/LICENSE)




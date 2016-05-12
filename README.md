# DiceCoefficient

### Calculate the similarity of strings using the [Sørensen–Dice coefficient](https://en.wikipedia.org/wiki/S%C3%B8rensen%E2%80%93Dice_coefficient).

## Usage

### String+DiceCoefficient
```diceCoefficient(otherString: String)```

Returns a Float from 0 to 1, where 1 indicates strings are (case insensitively) identical

```swift
let stringOne = "croquet"
stringOne.diceCoefficient("tekken") // -> 0.0
stringOne.diceCoefficient("criques") // -> 0.5
stringOne.diceCoefficient("croquet") // -> 1.0
```

## Installation

### CocoaPods

DiceCoefficient is available using [CocoaPods](http://cocoapods.org). Add the following line to your Podfile:

```ruby
pod "DiceCoefficient"
```

### Carthage

DiceCoefficient is available using [Carthage](https://github.com/Carthage/Carthage).

Add the following line to your `Cartfile`:

```ogdl
github "shivbaijal/DiceCoefficient" >= 1.0
```

### Swift Package Manager

DiceCoefficient is available using [Swift Package Manager](https://swift.org/package-manager/).
Add the following in your `Package.swift`:

```Swift
    import PackageDescription

    let package = Package(
      name: "CoolestAppEver",
      dependencies: [
        .Package(url: "https://github.com/shivbaijal/DiceCoefficient.git", majorVersion: 0)
      ]
    )
```

### Manual

You can simply add the `DiceCoefficient.swift` file to your Xcode project.

## More Info About The Sørensen–Dice Coefficient

* [The Sørensen–Dice Coefficient's  Wikipedia page](https://en.wikipedia.org/wiki/S%C3%B8rensen%E2%80%93Dice_coefficient)

## License

DiceCoefficient is available under the MIT license, see the [LICENSE](https://github.com/shivbaijal/DiceCoefficient/blob/master/LICENSE) file for more info.

SAMultisectorControl
===========

SAMultisectorControl allows you to create multiselect control with beautiful design and circule structure. It's allows users in easy way changing values. Easy in use and have high ergonomic level.

![An example of using SAMultisectorControl](docs/preview.jpeg)

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like SAMultisectorControl in your projects. 

Put code below to your Podfile:

```ruby
platform :ios, '7.0'
pod "SAMultisectorControl"
```

## Example

This code will add 3 select-circles to control's view:

```objectivec
//colors for circles
UIColor *redColor = [UIColor colorWithRed:245.0/255.0 green:76.0/255.0 blue:76.0/255.0 alpha:1.0];
UIColor *blueColor = [UIColor colorWithRed:0.0 green:168.0/255.0 blue:255.0/255.0 alpha:1.0];
UIColor *greenColor = [UIColor colorWithRed:29.0/255.0 green:207.0/255.0 blue:0.0 alpha:1.0];

//creating setctors objects
SAMultisectorSector *sector1 = [SAMultisectorSector sectorWithColor:redColor maxValue:16.0];
SAMultisectorSector *sector2 = [SAMultisectorSector sectorWithColor:blueColor maxValue:8.0];
SAMultisectorSector *sector3 = [SAMultisectorSector sectorWithColor:greenColor maxValue:1000.0];

//setting tags
sector1.tag = 0;
sector2.tag = 1;
sector3.tag = 2;

//setting start and end values
sector1.endValue = 13.0;
sector2.endValue = 3.0;
sector3.startValue = 300.0;
sector3.endValue = 650.0;

//displaying sectors
[self.multisectorControl addSector:sector1];
[self.multisectorControl addSector:sector2];
[self.multisectorControl addSector:sector3];
```

## Main features
- easy in use;
- selecting minimum and maximum values;
- flexible configurations.

## Build Requirements
iOS >= 6.0

## Frameworks
- CoreGraphics
- UIKit

## Design
The idea of circular range selectors was inspired by this [dribbble](http://dribbble.com/shots/1350793-Search-Preferences-UI "dribbble") experiment.

## License
SAMultisectorControl is available under the MIT license. See the LICENSE file for more info.

## Contact
Jaroslav Khorishchenko<br>
websnipter@gmail.com


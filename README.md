
[![Platform](https://img.shields.io/cocoapods/p/AppOrderFiles.svg?style=flat)](http://cocoapods.org/pods/AppOrderFiles)
[![CI Status](http://img.shields.io/travis/yulingtianxia/AppOrderFiles.svg?style=flat)](https://travis-ci.org/yulingtianxia/AppOrderFiles)
[![Version](https://img.shields.io/cocoapods/v/AppOrderFiles.svg?style=flat)](http://cocoapods.org/pods/AppOrderFiles)
[![GitHub release](https://img.shields.io/github/release/yulingtianxia/AppOrderFiles.svg)](https://github.com/yulingtianxia/AppOrderFiles/releases)
[![Twitter Follow](https://img.shields.io/twitter/follow/yulingtianxia.svg?style=social&label=Follow)](https://twitter.com/yulingtianxia)

# AppOrderFiles

The easiest way to generate order files for Mach-O using Clang SanitizerCoverage. Improving your App Performance.

Enjoy it!!!

## Feature

- [x] Swift/Objective-C/C/C++ 
- [x] All Methods and Functions
- [x] All Blocks
- [x] iOS/macOS/tvOS/watchOS

## Usage

Just call `AppOrderFiles()`.

```objc
AppOrderFiles(^(NSString *orderFilePath) {
    NSLog(@"OrderFilePath:%@", orderFilePath);
});
```

After generating "app.order" file, just move it to your project workspace, and fill in "Order File" in build settings. 

AppOrderFiles also print results in debug console.

## Installation

**NOTE**: In build settings of your Xcode project/target, add `-fsanitize-coverage=func,trace-pc-guard` under "Other C Flags". If you are using Swift, also add `-sanitize-coverage=func` and `-sanitize=undefined` under "Other Swift Flags".

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate AppOrderFiles into your Xcode project using CocoaPods, specify it in your `Podfile`:


```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!
target 'MyApp' do
	pod 'AppOrderFiles'
end
```

You need replace "MyApp" with your project's name.

Then, run the following command:

```bash
$ pod install
```

AppOrderFiles works under Clang SanitizerCoverage, you can modify Xcode build settings manually, or using `Podfile`.

```
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['OTHER_CFLAGS'] = '-fsanitize-coverage=func,trace-pc-guard'
      config.build_settings['OTHER_SWIFT_FLAGS'] = '-sanitize-coverage=func -sanitize=undefined'
    end
  end
end
```

## Reference

- [Clang 10 documentation](https://clang.llvm.org/docs/SanitizerCoverage.html#tracing-pcs)
- [Improving App Performance with Order Files](https://medium.com/@michael.eisel/improving-app-performance-with-order-files-c7fff549907f)

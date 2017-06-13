# iOS应用内手动切换语言
iOS手动切换显示语言

基本API包括下面三个
#### NSBundle+AppLanguageSwitch.h

```objective-c
//设置语言
+ (void)setCusLanguage:(NSString *)language;
//获取语言
+ (NSString *)getCusLanguage;
//恢复成系统语言
+ (void)restoreSysLanguage;
```
通知key一个

```objective-c
//当app语言改变之后发送通知
NSString * const ZZAppLanguageDidChangeNotification;
```
## Requirements

| StoryBoard | Xib  | NSLocalizedString  |
|:--------------------:|:---------------------------:|:----------------------------:|
| √ | √ | √ |

更多用法请看demo，觉得好用的话别忘star一下哦！

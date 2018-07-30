//
//  Commons.h
//  CrossBorderECommerce
//
//  Created by Rainer on 2018/7/30.
//  Copyright © 2018年 Rainer. All rights reserved.
//

#ifndef Commons_h
#define Commons_h

#define kSCREEN_HEIGHT  MAX([UIScreen mainScreen].bounds.size.height,[UIScreen mainScreen].bounds.size.width)
#define kSCREEN_WIDTH   MIN([UIScreen mainScreen].bounds.size.height,[UIScreen mainScreen].bounds.size.width)


#define kWeakSelf  typeof(self) __weak weakSelf = self;// 弱引用self
#define kStrongSelf  typeof(weakSelf) __strong strongSelf = weakSelf;// 强引用weakSelf
#define kBlockSelf __block typeof(self) blockSelf = self;// __block

#define weakify(o) autoreleasepool{} __weak typeof(o) o##Weak = o; //弱引用
#define strongify(o) autoreleasepool{} __strong typeof(o) o = o##Weak;//强引用

#define kDeviceSystemVersion [[[UIDevice currentDevice] systemVersion] floatValue] // 设备系统版本号
#define kIOS8  ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
#define kIOS10 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 10.0)
#define kIOS11 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 11.0)


#define NavBarHeight 64
#define iPhoneXNavBarHeight 88
#define KNavigationBarHeight (KIsiPhoneX ? 88:64)//导航栏高度
#define KiPhoneBottomNoSafeAreaDistance (KIsiPhoneX ? 34:0)//底部非安全区域的高度（iPhoneX是34，其它iPhone是0）
#define KIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)


#define StringFormat(...) [NSString stringWithFormat:__VA_ARGS__]


//RGB颜色
#define kRGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
// 随机颜色
#define KRandomColor kRGB(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

// 十六进制颜色
#define kCOLOR_WITH_HEX(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexValue & 0xFF)) / 255.0 alpha:1.0f]

//字体大小
#define kFont(a) [UIFont systemFontOfSize:a]


#endif /* Commons_h */

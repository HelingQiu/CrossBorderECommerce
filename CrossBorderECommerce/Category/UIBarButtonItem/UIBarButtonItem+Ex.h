//
//  UIBarButtonItem+Ex.h
//  LSaleClothingForiPhone
//
//  Created by 杨荣 on 2016/12/20.
//  Copyright © 2016年 杨荣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Ex)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title;

@end

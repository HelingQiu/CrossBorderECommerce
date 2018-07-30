//
//  UIBarButtonItem+Ex.m
//  LSaleClothingForiPhone
//
//  Created by 杨荣 on 2016/12/20.
//  Copyright © 2016年 杨荣. All rights reserved.
//

#import "UIBarButtonItem+Ex.h"

@implementation UIBarButtonItem (Ex)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    CGSize size = btn.currentBackgroundImage.size;
    btn.frame = CGRectMake(btn.frame.origin.x, btn.frame.origin.y, size.width, size.height);
//    btn.backgroundColor = KRandomColor;
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
//    
//    UIImage *normalImage = [[UIImage imageNamed:image] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
//    UIImage *selectedImage = [[UIImage imageNamed:highImage] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
//
//    
//    [btn setImage:normalImage forState:UIControlStateNormal];
//    [btn setImage:selectedImage forState:UIControlStateHighlighted];
//    btn.frame = CGRectMake(0, 0, 64, 44);
//    btn.backgroundColor = KRandomColor;
//    
//    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title {
    return  [[UIBarButtonItem alloc] initWithTitle:title style:(UIBarButtonItemStylePlain) target:target action:action];
}

@end

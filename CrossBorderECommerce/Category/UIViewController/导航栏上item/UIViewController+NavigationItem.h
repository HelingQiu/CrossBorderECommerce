//
//  UIViewController+NavigationItem.h
//  LSaleClothingForIphone
//
//  Created by 杨荣 on 2017/1/19.
//  Copyright © 2017年 乐售云科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

// 左右按钮宽度
static CGFloat KItemWidth = 54.f;


typedef enum : NSUInteger {
    BarButtonItemLeft,  // 左按钮
    BarButtonItemRight, // 右按钮
} BarButtonItem;// 导航栏上按钮类型

@interface UIViewController (NavigationItem)


/**
 设置导航栏左右按钮标题

 @param barButtonItem 导航栏上按钮类型
 @param action 点击触发事件
 @param title 标题
 */
- (void)setBarButton:(BarButtonItem)barButtonItem action:(SEL)action title:(NSString *)title;


/**
 设置导航栏左右按钮图片

 @param barButtonItem 导航栏上按钮类型
 @param action 点击触发事件
 @param imageName 图片名字
 */
- (void)setBarButton:(BarButtonItem)barButtonItem action:(SEL)action imageName:(NSString *)imageName;
- (UIButton *)addBarButton:(BarButtonItem)barButtonItem action:(SEL)action imageName:(NSString *)imageName;


/**
 设置导航栏上标题

 @param title 标题
 */
- (void)setBarTitle:(NSString *)title;
- (void)setBarTitle:(NSString *)title subTitle:(NSString *)subTitle;// 上标题和下标题（下标题颜色为灰色，字体略小）





// 返回按钮触发事件
- (void)backButtonAction;

@end

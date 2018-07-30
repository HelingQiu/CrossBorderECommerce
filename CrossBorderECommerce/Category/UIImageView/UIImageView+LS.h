//
//  UIImageView+LS.h
//  LsIPadHDClothing
//
//  Created by admin on 14/12/22.
//  Copyright (c) 2014年 吴小洁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (LS)
/**
 *  创建UIImageView
 *  @param frame 位置大小
 *  @param image 图片
 *  @param superView 父视图
 *  @return 返回一个UIImageView
 */
+ (UIImageView *)imageWithFrame:(CGRect)frame image:(UIImage *)image inView:(UIView *)superView;

@end

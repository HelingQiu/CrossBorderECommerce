//
//  UIImageView+LS.m
//  LsIPadHDClothing
//
//  Created by admin on 14/12/22.
//  Copyright (c) 2014年 吴小洁. All rights reserved.
//

#import "UIImageView+LS.h"

@implementation UIImageView (LS)

+ (UIImageView *)imageWithFrame:(CGRect)frame image:(UIImage *)image inView:(UIView *)superView
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = image;
    [superView addSubview:imageView];
    return imageView;
}

@end

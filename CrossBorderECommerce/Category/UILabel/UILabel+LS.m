//
//  UILabel+LS.m
//  LsIPadHDClothing
//
//  Created by admin on 14/12/22.
//  Copyright (c) 2014年 吴小洁. All rights reserved.
//

#import "UILabel+LS.h"

@implementation UILabel (LS)

+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment font:(CGFloat)font inView:(UIView *)superView
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    if (text) {
        label.text = text;
    }
    
    if (textColor) {
        label.textColor = textColor;
    }
    if (alignment) {
        label.textAlignment = alignment;
    }
    if (font) {
        label.font = kFont(font);
    }
    [superView addSubview:label];
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text attributedString:(NSAttributedString *)attributedString textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment font:(CGFloat)font inView:(UIView *)superView
{
    UILabel * label = [self labelWithFrame:frame text:text textColor:textColor alignment:alignment font:font inView:superView];
    if (attributedString) {
        label.attributedText = attributedString;
    }
    return label;
}


+ (UILabel *)creatLabelWithText:(NSString *)text
                      textColor:(UIColor *)textColor
                       fontSize:(CGFloat)fontSize
                      alignment:(NSTextAlignment)alignment
                         inView:(UIView *)parentView
                     constraint:(void(^)(MASConstraintMaker *make))constraint
{
    UILabel *label = [UILabel labelWithFrame:CGRectZero text:text textColor:textColor alignment:alignment font:fontSize inView:parentView];
    [label mas_makeConstraints: constraint];
    return label;
}


@end

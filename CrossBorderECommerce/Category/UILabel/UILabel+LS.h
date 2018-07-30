//
//  UILabel+LS.h
//  LsIPadHDClothing
//
//  Created by admin on 14/12/22.
//  Copyright (c) 2014年 吴小洁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LS)
/**
 *  创建label
 *  @param frame 位置大小
 *  @param text 文字
 *  @param textColor 文字颜色
 *  @param alignment 文字对齐方式
 *  @param font 文字大小
 *  @param superView 父视图
 *  @return 返回一个label
 */
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment font:(CGFloat)font inView:(UIView *)superView;

+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text attributedString:(NSAttributedString *)attributedString textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment font:(CGFloat)font inView:(UIView *)superView;


+ (UILabel *)creatLabelWithText:(NSString *)text
                      textColor:(UIColor *)textColor
                       fontSize:(CGFloat)fontSize
                      alignment:(NSTextAlignment)alignment
                         inView:(UIView *)parentView
                     constraint:(void(^)(MASConstraintMaker *make))constraint;


@end

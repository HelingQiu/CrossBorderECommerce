//
//  CBENavigationTitleView.m
//  CrossBorderECommerce
//
//  Created by Rainer on 2018/7/30.
//  Copyright © 2018年 Rainer. All rights reserved.
//

#import "CBENavigationTitleView.h"

@implementation CBENavigationTitleView

- (void)setFrame:(CGRect)frame {
    
    [super setFrame:CGRectMake(0, 0, self.superview.bounds.size.width, self.superview.bounds.size.height)];
    if (kIOS11) {
        [super setFrame:CGRectMake(-8, 0, kSCREEN_WIDTH, 44)];
    }
}

+ (instancetype)titleView {
    
    CGFloat navigationBarHeight = 44.f;
    CGRect frame = CGRectMake(0, 0, kSCREEN_WIDTH, navigationBarHeight);
    CBENavigationTitleView *view = [[CBENavigationTitleView alloc] initWithFrame:frame];
    return view;
}

@end

//
//  CBEBaseController.h
//  CrossBorderECommerce
//
//  Created by Rainer on 2018/7/30.
//  Copyright © 2018年 Rainer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBEBaseController : UIViewController

/**
 需要就把scrollView加到视图上，方便适配
 */
@property (nonatomic,strong) UIScrollView *baseScrollView;

@end

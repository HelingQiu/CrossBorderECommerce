//
//  CBEBaseNavigationController.m
//  CrossBorderECommerce
//
//  Created by Rainer on 2018/7/30.
//  Copyright © 2018年 Rainer. All rights reserved.
//

#import "CBEBaseNavigationController.h"
#import "CBENavigationTitleView.h"
#import "UIViewController+NavigationItem.h"

@interface CBEBaseNavigationController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@end

@implementation CBEBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 是否透明
    self.navigationBar.translucent = NO;
    
    __weak typeof(self) weakSelf = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = weakSelf;
        self.delegate = weakSelf;
    }
    
    // 设置导航栏背景颜色，默认是白色的
    self.navigationBar.barTintColor = [UIColor whiteColor];
    
    [self.navigationBar setTintColor:[UIColor clearColor]];// 这个是当前导航控制器
}

#pragma mark - UIGestureRecognizerDelegate
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    //    // 判断要显示的控制器是否是自己
    //    BOOL isHomeController = [viewController isKindOfClass:[LSHomeController class]];
    //    [viewController.navigationController setNavigationBarHidden:isHomeController animated:YES];
    
    viewController.navigationItem.title = nil;
    viewController.navigationItem.leftBarButtonItem = nil;
    viewController.navigationItem.hidesBackButton = YES;
    viewController.navigationItem.titleView = [CBENavigationTitleView titleView];
    viewController.navigationItem.titleView.backgroundColor = [UIColor whiteColor];
    
    if (self.viewControllers.count > 0) {
        
        [viewController setBarButton:(BarButtonItemLeft) action:@selector(backButtonAction) imageName:@"顶部反回箭头"];
        
        
        // psh过去默认返回按钮是统一的
        //        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"顶部反回箭头" highImage:nil];
        // push过去m默认隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
        
    }
    
    [super pushViewController:viewController animated:animated];
    
    // 修正push控制器tabbar上移问题
    if (kIOS11){
        CGRect frame = self.tabBarController.tabBar.frame;
        frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
        self.tabBarController.tabBar.frame = frame;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

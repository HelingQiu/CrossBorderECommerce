//
//  UIViewController+NavigationItem.m
//  LSaleClothingForIphone
//
//  Created by 杨荣 on 2017/1/19.
//  Copyright © 2017年 乐售云科技有限公司. All rights reserved.
//

#import "UIViewController+NavigationItem.h"

// 导航栏上标题BaseTag
static NSInteger KBaseTag_Title = 4677;


@implementation UIViewController (NavigationItem)


- (void)setBarButton:(BarButtonItem)barButtonItem action:(SEL)action title:(NSString *)title {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    if (barButtonItem == BarButtonItemLeft) {
        button.frame = CGRectMake(0, 0, KItemWidth, KItemWidth);
    }else if (barButtonItem == BarButtonItemRight) {
        button.frame = CGRectMake(kSCREEN_WIDTH-KItemWidth, 0, KItemWidth, 44);
    }
    [button setTitle:title forState:(UIControlStateNormal)];
    [button setTitleColor:kRGB(50, 123, 247) forState:(UIControlStateNormal)];
    button.titleLabel.font = kFont(15);
    [self.navigationItem.titleView addSubview:button];

//    button.backgroundColor = KRandomColor;//
}
- (void)setBarButton:(BarButtonItem)barButtonItem action:(SEL)action imageName:(NSString *)imageName {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    if (barButtonItem == BarButtonItemLeft) {
        button.frame = CGRectMake(0, 0, KItemWidth, 44);
    }else if (barButtonItem == BarButtonItemRight) {
        button.frame = CGRectMake(kSCREEN_WIDTH-KItemWidth, 0, KItemWidth, 44);
    }
    
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    [button setImage:image forState:(UIControlStateNormal)];
    [self.navigationItem.titleView addSubview:button];

//    button.backgroundColor = KRandomColor;//
}

- (UIButton *)addBarButton:(BarButtonItem)barButtonItem action:(SEL)action imageName:(NSString *)imageName {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    
    if (barButtonItem == BarButtonItemLeft) {
        button.frame = CGRectMake(0, 0, KItemWidth, 44);
    }else if (barButtonItem == BarButtonItemRight) {
        button.frame = CGRectMake(kSCREEN_WIDTH-KItemWidth, 0, KItemWidth, 44);
    }
    
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    [button setImage:image forState:(UIControlStateNormal)];
    return button;

}

- (void)setBarTitle:(NSString *)title {
    
    UILabel *senderLabel = [self.navigationItem.titleView viewWithTag:KBaseTag_Title];
    
    if (!senderLabel) {
        UILabel *label = [[UILabel alloc] init];
        label.tag = KBaseTag_Title;
        label.frame = CGRectMake(KItemWidth, 0, kSCREEN_WIDTH-KItemWidth*2, 44);
        label.textAlignment = NSTextAlignmentCenter;
        label.text = title;
        label.font = [UIFont boldSystemFontOfSize:17.f];
        [self.navigationItem.titleView addSubview:label];
    }
    senderLabel.text = title;

//    senderLabel.backgroundColor = KRandomColor;//
}

- (void)setBarTitle:(NSString *)title subTitle:(NSString *)subTitle {
    
    UILabel *senderLabel = [self.navigationItem.titleView viewWithTag:KBaseTag_Title];
    
    if (!senderLabel) {
        UILabel *label = [[UILabel alloc] init];
        label.numberOfLines = 2;
        label.tag = KBaseTag_Title;
        label.frame = CGRectMake(KItemWidth, 0, kSCREEN_WIDTH-KItemWidth*2, 44);
        label.textAlignment = NSTextAlignmentCenter;
        label.text = title;
        label.font = kFont(15);
        
        NSString *titleAll = StringFormat(@"%@\n%@",title, subTitle);
        NSRange range = [titleAll rangeOfString:subTitle];
        NSMutableAttributedString *attrTitle = [[NSMutableAttributedString alloc] initWithString:titleAll];
        [attrTitle addAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor], NSFontAttributeName: kFont(13)} range:range];
        label.attributedText = attrTitle;
        
        [self.navigationItem.titleView addSubview:label];
    }
    senderLabel.text = title;

}

- (void)backButtonAction {
    [self.navigationController popViewControllerAnimated:YES];
}

@end

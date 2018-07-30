//
//  UITableView+Ex.h
//  LSaleClothingForIphone
//
//  Created by 杨荣 on 2017/11/16.
//  Copyright © 2017年 乐售云科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Ex)

- (void)setEstimatedHeightDisable;// 设置估计高度为禁用（用来适配iOS11下UITableView不走heightForHeaderInSection方法等）

@end

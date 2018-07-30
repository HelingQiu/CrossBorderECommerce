//
//  UITableView+Ex.m
//  LSaleClothingForIphone
//
//  Created by 杨荣 on 2017/11/16.
//  Copyright © 2017年 乐售云科技有限公司. All rights reserved.
//

#import "UITableView+Ex.h"

@implementation UITableView (Ex)

- (void)setEstimatedHeightDisable {
    self.estimatedRowHeight = 0;
    self.estimatedSectionHeaderHeight = 0;
    self.estimatedSectionFooterHeight = 0;
}

@end

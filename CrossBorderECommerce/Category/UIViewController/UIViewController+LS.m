//
//  UIViewController+LS.m
//  LSaleClothingForIpad
//
//  Created by HLF MAC on 16/10/21.
//  Copyright © 2016年 Salewell. All rights reserved.
//

#import "UIViewController+LS.h"

static const char tagKey;
@implementation UIViewController(LS)

- (NSNumber *)tag
{
    
    return objc_getAssociatedObject(self, &tagKey);
}

- (void)setTag:(NSNumber *)tag
{
    objc_setAssociatedObject(self, &tagKey, tag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

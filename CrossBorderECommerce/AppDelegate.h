//
//  AppDelegate.h
//  CrossBorderECommerce
//
//  Created by Rainer on 2018/7/30.
//  Copyright © 2018年 Rainer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end


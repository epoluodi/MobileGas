//
//  JVFloatingDrawer.h
//  泽臻小店
//
//  Created by xiaoguang yang on 15/5/5.
//  Copyright (c) 2015年 Apollo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MainNavController.h"
#import "SettingViewController.h"

@class JVFloatingDrawerViewController;
@class JVFloatingDrawerSpringAnimator;
@class MainNavController;
@class SettingViewController;

@interface JVFloatingDrawer : NSObject
{
     UIStoryboard *drawersStoryboard;

}




@property (nonatomic, strong) JVFloatingDrawerViewController *drawerViewController;
@property (nonatomic, strong) JVFloatingDrawerSpringAnimator *drawerAnimator;

@property (nonatomic, strong) SettingViewController *settingview;

@property (nonatomic, strong) MainNavController *mainnavview;

- (void)toggleLeftDrawer:(id)sender animated:(BOOL)animated;
-(void)showView:(UIViewController *)viewcontrol;
-(void)closeDrawer;
- (void)configureDrawerViewController;

@end

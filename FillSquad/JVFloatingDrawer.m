//
//  JVFloatingDrawer.m
//  泽臻小店
//
//  Created by xiaoguang yang on 15/5/5.
//  Copyright (c) 2015年 Apollo. All rights reserved.
//

#import "JVFloatingDrawer.h"
#import "JVFloatingDrawerViewController.h"
#import "JVFloatingDrawerSpringAnimator.h"


@implementation JVFloatingDrawer



-(instancetype)init
{
    drawersStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    _drawerViewController =self.drawerViewController;
    _drawerAnimator =self.drawerAnimator;
    [self configureDrawerViewController];
    

    
    return [super init];
    
}





-(void)showView:(UIViewController *)viewcontrol
{
    [viewcontrol presentViewController:_drawerViewController animated:YES completion:nil];
    
}
- (JVFloatingDrawerSpringAnimator *)drawerAnimator {
    if (!_drawerAnimator) {
        _drawerAnimator = [[JVFloatingDrawerSpringAnimator alloc] init];
    }
 
    return _drawerAnimator;
}

- (JVFloatingDrawerViewController *)drawerViewController {
    if (!_drawerViewController) {
        _drawerViewController = [[JVFloatingDrawerViewController alloc] init];
    }
    
    return _drawerViewController;
}


- (SettingViewController *)getSettingViewControl {
    if (!_settingview) {
        
        _settingview = [drawersStoryboard instantiateViewControllerWithIdentifier:@"settingview"];
        _settingview.drawerview=self;
    }
    
    return _settingview;
}



- (void)configureDrawerViewController {
    self.drawerViewController.leftViewController = self.getSettingViewControl;

    self.drawerViewController.centerViewController = self.getMainview;
    
    self.drawerViewController.animator = self.drawerAnimator;
    self.drawerViewController.view.backgroundColor = [UIColor blueColor];
//    self.drawerViewController.backgroundImage = [UIImage imageNamed:@"settingback"];
}

- (MainNavController *)getMainview {
    if (!_mainnavview) {
        _mainnavview = [drawersStoryboard instantiateViewControllerWithIdentifier:@"mainnavview"];
//        _MainViewController.drawerview=self;
    }
    
    return _mainnavview;
}

- (void)toggleLeftDrawer:(id)sender animated:(BOOL)animated {
    [self.drawerViewController toggleDrawerWithSide:JVFloatingDrawerSideLeft animated:animated completion:nil];
}
-(void)closeDrawer
{
    [self.drawerViewController closeDrawerWithSide:JVFloatingDrawerSideLeft animated:YES completion:nil];
}

@end

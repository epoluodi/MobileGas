//
//  AppDelegate.h
//  FillSquad
//
//  Created by 程嘉雯 on 15/11/23.
//  Copyright © 2015年 com.fillsquad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JVFloatingDrawer.h"
#import <GoogleMaps/GoogleMaps.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    GMSServices *googleservice;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) JVFloatingDrawer *jvfdrawerview;

@end


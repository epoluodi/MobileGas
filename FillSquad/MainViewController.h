//
//  MainViewController.h
//  FillSquad
//
//  Created by 程嘉雯 on 15/11/23.
//  Copyright © 2015年 com.fillsquad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <GoogleMaps/GoogleMaps.h>


@interface MainViewController : UIViewController
{
    UIBarButtonItem *leftitem;
    AppDelegate *app;
}


@property (weak, nonatomic) IBOutlet UINavigationItem *navtitle;
@property (weak, nonatomic) IBOutlet GMSMapView *GMapView;



@end

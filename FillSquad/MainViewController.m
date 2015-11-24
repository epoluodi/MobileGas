//
//  MainViewController.m
//  FillSquad
//
//  Created by 程嘉雯 on 15/11/23.
//  Copyright © 2015年 com.fillsquad. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize navtitle;
@synthesize GMapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    navtitle.title=@"";
    app= (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    leftitem = [[UIBarButtonItem alloc]
                  initWithTitle:@"个人"
                  style:UIBarButtonItemStyleBordered
                  target:self
                  action:@selector(selectLeftAction)];
    //    [leftButton setImage:[UIImage imageNamed:@"setting"]];
    //    [leftButton setImageInsets:UIEdgeInsetsMake(5, 0, 0, 8)];
    //

    [navtitle setLeftBarButtonItem:leftitem];
    // Do any additional setup after loading the view.
    
    
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.868
                                                            longitude:151.2086
                                                                 zoom:6];
    GMapView.camera = camera;
}


-(void)selectLeftAction
{
    [app.jvfdrawerview toggleLeftDrawer:self animated:YES];
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

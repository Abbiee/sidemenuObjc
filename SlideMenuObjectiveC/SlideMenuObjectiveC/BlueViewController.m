//
//  BlueViewController.m
//  SlideMenuObjectiveC
//
//  Created by Pintlab Technologies on 02/02/17.
//  Copyright © 2017 Abbie. All rights reserved.
//

#import "BlueViewController.h"
#import "DPSlideMenuViewController.h"

@interface BlueViewController ()
{
    DPSlideMenuViewController *slideMenu;
}



@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    slideMenu =[[DPSlideMenuViewController alloc]init];
    [slideMenu initSwipeAndTap:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)blueMenuButtonAction:(id)sender {
    
     [slideMenu menuBtnClick:self];
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

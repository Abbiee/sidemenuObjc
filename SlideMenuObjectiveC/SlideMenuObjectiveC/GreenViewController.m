//
//  GreenViewController.m
//  SlideMenuObjectiveC
//
//  Created by Pintlab Technologies on 02/02/17.
//  Copyright © 2017 Abbie. All rights reserved.
//

#import "GreenViewController.h"
#import "DPSlideMenuViewController.h"
@interface GreenViewController ()
{
    DPSlideMenuViewController *slideMenu;
}

@end

@implementation GreenViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)orangeButtonAction:(id)sender {
    
    
}
- (IBAction)greenMenuButtonAction:(id)sender {
    
     [slideMenu menuBtnClick:self];
}

@end

//
//  ViewController.m
//  SlideMenuObjectiveC
//
//  Created by Pintlab Technologies on 02/02/17.
//  Copyright © 2017 Abbie. All rights reserved.
//

#import "ViewController.h"
#import "DPSlideMenuViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UITableView *sampleTableView;
    DPSlideMenuViewController *slideMenu;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    slideMenu=[[DPSlideMenuViewController alloc]init];
    [slideMenu initView:@"greenViewController" ViewController:self];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"tableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //etc.
    return cell;
}
// number of row in the section, I assume there is only 1 row
- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
         [slideMenu PushBtnClick:[NSString stringWithFormat:@"greenViewController"] ViewController:self BouncingAnimation:NO];
    }
    else if (indexPath.row == 1)
    {
         [slideMenu PushBtnClick:[NSString stringWithFormat:@"blueController"] ViewController:self BouncingAnimation:NO];
    }
    else if (indexPath.row == 2)
    {
        [slideMenu PushBtnClick:[NSString stringWithFormat:@"greenViewController"] ViewController:self BouncingAnimation:NO];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

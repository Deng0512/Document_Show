//
//  ViewController.m
//  TestView
//
//  Created by 连喜 邓 on 2016/12/19.
//  Copyright © 2016年 连喜 邓. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * typeShowButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    typeShowButton.frame =CGRectMake(0, 90, self.view.frame.size.width, 45);
    [typeShowButton setTitle:@"entView" forState:UIControlStateNormal];
    [typeShowButton addTarget:self action:@selector(entDetialShow:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:typeShowButton];

}

-(void)entDetialShow:(UIButton *)button
{
    MainViewController *detailView =[[MainViewController alloc]init];
    [self presentViewController:detailView animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

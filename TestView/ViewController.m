//
//  ViewController.m
//  TestView
//
//  Created by 连喜 邓 on 2016/12/19.
//  Copyright © 2016年 连喜 邓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor colorWithRed:16.0/255 green:36.0/255 blue:49.0/255 alpha:1.0];
    self.menuDataArray = [[NSArray alloc] initWithObjects:@"泡泡图",@"散点图",@"柱状图",@"折线图",@"饼图",@"雷达图",@"k线图",@"仪表盘",@"热力图",@"关系图",@"图形展示", nil];
    self.menuTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 100, self.view.frame.size.height)];
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
    self.menuTableView.separatorStyle = UITableViewScrollPositionNone;
    self.menuTableView.backgroundColor = [UIColor colorWithRed:36.0/255 green:147.0/255 blue:162.0/255 alpha:1.0];
    [self.view addSubview:self.menuTableView];
    
    self.underDetailView =[[UIView alloc]initWithFrame:CGRectMake(self.menuTableView.frame.size.width, 20, self.view.frame.size.width-self.menuTableView.frame.size.width, self.view.frame.size.height-20)];
    self.underDetailView.backgroundColor =[UIColor clearColor];
    [self.view addSubview:self.underDetailView];
    [self showPooView];
}

#pragma mark ===
#pragma mark tableview委托
#pragma mark ===
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuDataArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellName = @"cellName";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    }
    cell.contentView.backgroundColor =[UIColor colorWithRed:36.0/255 green:147.0/255 blue:162.0/255 alpha:1.0];
    [cell.contentView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    UIView * lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 69, self.menuTableView.frame.size.width, 0.5)];
    lineView.backgroundColor =[UIColor whiteColor];
    [cell.contentView addSubview:lineView];
    
    UILabel * detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100,70)];
    detailLabel.font =[UIFont systemFontOfSize:16];
    detailLabel.backgroundColor = [UIColor clearColor];
    detailLabel.textAlignment =NSTextAlignmentCenter;
    detailLabel.text =[self.menuDataArray objectAtIndex:indexPath.row];
    detailLabel.textColor = [UIColor whiteColor];
    [cell.contentView addSubview:detailLabel];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.underDetailView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    if (indexPath.row==0) {
        [self showPooView];
    }else if (indexPath.row==1){
    }else if (indexPath.row==2){
    }else if (indexPath.row==3){
    }else if (indexPath.row==4){
    }else if (indexPath.row==5){
    }else if (indexPath.row==6){
    }else if (indexPath.row==7){
    }else if (indexPath.row==8){
    }else if (indexPath.row==9){
    }else if (indexPath.row==10){
    }
}

#pragma mark ================================================================================
#pragma mark === 泡泡图
#pragma mark ================================================================================
-(void)showPooView{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

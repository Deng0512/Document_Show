//
//  ViewController.h
//  TestView
//
//  Created by 连喜 邓 on 2016/12/19.
//  Copyright © 2016年 连喜 邓. All rights reserved.
//
/*!
 @header ViewController.h
 @abstract 首页
 @author 连喜 邓
 @version 1.00 2016/12/19 Creation
 */

#import <UIKit/UIKit.h>

/*!
 @class
 @abstract 首页，控制显示ui
 */
@interface ViewController : UIViewController

/*!
 @property
 @abstract 左边标题选择tableview控件
 */
@property(nonatomic,strong)UITableView * menuTableView;

/*!
 @property
 @abstract 左边标题选择数组数据
 */
@property(nonatomic,strong)NSArray *menuDataArray;

/*!
 @property
 @abstract 右侧展示界面初始化
 */
@property(nonatomic,strong)UIView *underDetailView;

/*!
 @method
 @abstract 左侧目录点击
 @discussion 点击分别显示右侧各类图标：1，泡泡图；2，散点图；3，柱状图；4，折线图；5，饼图；6，雷达图；7，k线图；8，仪表盘；9，热力图；10，关系图；
 @param tableView 选中的tableview
 @param indexPath 选中列
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
@end


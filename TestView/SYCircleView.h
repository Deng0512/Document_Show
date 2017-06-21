//
//  SYCircleView.h
//  VisionField
//
//  Created by 连喜 邓 on 2016/12/5.
//  Copyright © 2016年 连喜 邓. All rights reserved.
//
/*!
 @header SYCircleView.h
 @abstract 画圆
 @author 连喜 邓
 @version 1.00 2016/12/5 Creation
 */

#import <UIKit/UIKit.h>

/*!
 @class
 @abstract 工具类 画圆
 */
@interface SYCircleView : UIView
/*!
 @property
 @abstract 圆环外线宽设置
 */
@property (nonatomic, assign) CGFloat borderWidth;
/*!
 @property
 @abstract 圆环外线颜色设置
 */
@property (nonatomic, assign) UIColor *borderColor;
/*!
 @property
 @abstract 圆背景颜色设置
 */
@property (nonatomic, assign) UIColor *backgroundsColor;

/*!
 @method
 @abstract 初设化设置
 @discussion 默认设置实心圆，另外设置borderWidth参数则会显示圆环
 @param center 显示圆的中心点设置
 @param radius 圆半径设置
 */
- (instancetype)initWithCenter:(CGPoint)center radius:(CGFloat)radius;
@end

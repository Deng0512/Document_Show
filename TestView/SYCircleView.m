//
//  SYCircleView.m
//  VisionField
//
//  Created by 连喜 邓 on 2016/12/5.
//  Copyright © 2016年 连喜 邓. All rights reserved.
//

#import "SYCircleView.h"

@implementation SYCircleView

- (instancetype)initWithCenter:(CGPoint)center radius:(CGFloat)radius {
    
    self = [super init];
    
    if (self) {
        self.frame = CGRectMake(center.x - radius, center.y - radius, radius * 2.0, radius * 2.0);
        //self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = radius;
        self.layer.masksToBounds = YES;
    }
    return self;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}

-(void)setBackgroundsColor:(UIColor *)backgroundsColor{
    _backgroundsColor =backgroundsColor;
    self.backgroundColor =backgroundsColor;
}

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

@end

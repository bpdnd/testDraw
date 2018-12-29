//
//  FiveView.m
//  testDraw
//
//  Created by Admin on 2018/12/29.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FiveView.h"

@implementation FiveView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerTopLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    maskLayer.frame = rect;
    maskLayer.path = path.CGPath;
    self.layer.mask = maskLayer;
}


@end

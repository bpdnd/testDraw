//
//  FourFiveView.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FourFiveView.h"

@implementation FourFiveView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect{
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(75, 50) radius:30 startAngle:0 endAngle:M_PI/2 clockwise:YES];
    CGPoint center = CGPointMake(75, 50);
    //添加一根线到圆心
    [path addLineToPoint:center];
    //关闭路径，是从终点到起点
    [path closePath];
    [path stroke];
    //使用填充，默认就会自动关闭路径，（终点到起点）这样就可以不写[path closePath];
    [path fill];
    
    /////
    UIBezierPath *twoPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(75, 50) radius:20 startAngle:M_PI/2 endAngle:M_PI clockwise:YES];
    CGPoint twoCenter = CGPointMake(75, 50);
    [[UIColor redColor] setFill];
    //添加一根线到圆心
    [twoPath addLineToPoint:twoCenter];
    //关闭路径，是从终点到起点
    [twoPath closePath];
    [twoPath stroke];
    //使用填充，默认就会自动关闭路径，（终点到起点）这样就可以不写[path closePath];
    [twoPath fill];
    
    
}
@end

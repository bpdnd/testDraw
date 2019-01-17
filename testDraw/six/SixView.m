//
//  SixView.m
//  testDraw
//
//  Created by Admin on 2019/1/17.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "SixView.h"

@implementation SixView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx, 50, 50);
    CGContextAddLineToPoint(ctx, 100, 50);
    CGContextAddLineToPoint(ctx, 120, 30);
    CGContextAddLineToPoint(ctx, 140, 50);
    CGContextAddLineToPoint(ctx, 140, 100);
    CGContextAddLineToPoint(ctx, 50, 100);
    [[UIColor greenColor] set];
    CGContextSetLineWidth(ctx, 2);
    CGContextSetLineCap(ctx, kCGLineCapRound); //起点和终点圆角
    CGContextSetLineJoin(ctx, kCGLineJoinRound);// 拐角圆角
    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
    
    
    
    //扇形
    UIBezierPath *twoPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(250, 100) radius:60 startAngle:M_PI/2 endAngle:M_PI clockwise:YES];
    CGPoint twoCenter = CGPointMake(250, 100);
    //添加一根线到圆心
    [twoPath addLineToPoint:twoCenter];
    //方式一
    [[UIColor blackColor] setStroke];
    [twoPath closePath];//关闭路径，是从终点到起点
    [twoPath stroke];
    //方式二
    //[[UIColor redColor] setFill];
    //[twoPath fill];//使用填充，默认就会自动关闭路径，（终点到起点）这样就可以不写[path closePath];
}
@end

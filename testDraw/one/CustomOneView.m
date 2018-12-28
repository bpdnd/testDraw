//
//  CustomOneView.m
//  testDraw
//
//  Created by Admin on 2018/12/27.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "CustomOneView.h"

@implementation CustomOneView

/*
 Only override drawRect: if you perform custom drawing.
 An empty implementation adversely affects performance during animation.

*/
- (void)drawRect:(CGRect)rect {
    
    //参考：https://www.cnblogs.com/wanghuaijun/p/5870699.html
    
    //1 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //--------实心圆
    //2 画图
    CGContextAddEllipseInRect(ctx, CGRectMake(10, 10, 50, 50));
    [[UIColor greenColor] set];
    //3 渲染
    CGContextFillPath(ctx);
    
    
    
    //--------空心圆
    CGContextAddEllipseInRect(ctx, CGRectMake(70, 10, 50, 50));
    [[UIColor redColor] set];
    CGContextStrokePath(ctx);
    
    
    //--------椭圆
    CGContextAddEllipseInRect(ctx, CGRectMake(130, 10, 100, 50));
    [[UIColor purpleColor] set];
    CGContextFillPath(ctx);
    
    
    //--------直线
    CGContextMoveToPoint(ctx, 20, 80); //起点
    CGContextAddLineToPoint(ctx, 70, 80);//拐点
    CGContextAddLineToPoint(ctx, 20, 120);//终点
    //CGContextSetRGBStrokeColor(ctx, 0, 1.0, 0, 1.0);颜色
    [[UIColor redColor] set]; //两种设置颜色的方式都可以
    CGContextSetLineWidth(ctx, 2.0f);//线的宽度
    CGContextSetLineCap(ctx, kCGLineCapRound); //起点和终点圆角
    CGContextSetLineJoin(ctx, kCGLineJoinRound);// 拐角圆角
    CGContextStrokePath(ctx); //渲染（直线只能绘制空心的，不能调用CGContextFillPath(ctx);）
    
    //--------三角形
    CGContextMoveToPoint(ctx, 10, 150); //第一个点
    CGContextAddLineToPoint(ctx, 60, 100);//第二个点
    CGContextAddLineToPoint(ctx, 100, 150);//第三个点
    [[UIColor greenColor] set];
    CGContextClosePath(ctx); //闭合回路
    CGContextStrokePath(ctx);
    
    //--------矩形
    CGContextAddRect(ctx, CGRectMake(20, 170, 100, 50));
    [[UIColor orangeColor] set];
    CGContextStrokePath(ctx); //空心
    //CGContextFillPath(ctx); //实心
    
    //--------圆弧
    CGContextAddArc(ctx, 200, 170, 50, 0, M_PI_2, 0); //M_PI = 圆周率 2*M_PI= 圆  M_PI=半圆
    [[UIColor grayColor] set];
    CGContextStrokePath(ctx);
    /*
     CGContextClosePath(ctx);
     CGContextFillPath(ctx);
     */
    //--------文字
    NSString *str = @"你在红楼，我在西游";
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor redColor]; // 文字颜色
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:14]; // 字体
    [str drawInRect:CGRectMake(20, 250, 300, 30) withAttributes:dict];
    
    //---------虚线
    CGContextMoveToPoint(ctx, 20, 300); //起点
    CGContextAddLineToPoint(ctx, 200, 350); //终点
    [[UIColor blackColor] set];
    CGContextSetLineWidth(ctx, 2);
    CGFloat lengths[] = {10,5};
    CGContextSetLineDash(ctx, 2,lengths, 2);
    CGContextStrokePath(ctx);
    
}

@end

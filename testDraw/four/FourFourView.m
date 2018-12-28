//
//  FourFourView.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FourFourView.h"

@implementation FourFourView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect{
    //圆的起点是中心点右边的点
    //ArcCenter:圆心坐标
    //radius:半径
    //startAngle:弧度起始角度
    //endAngle:弧度结束M_PI==180度
    //clockwise:YES:顺时针NO:逆时针
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(0, 50) radius:25 startAngle:0 endAngle:M_PI/2 clockwise:YES];
    [path stroke];
}
@end

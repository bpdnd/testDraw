//
//  FourThreeView.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FourThreeView.h"

@implementation FourThreeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect{
    //cornerRadius：圆角半径，如果圆角半径不等于正方形长或宽的一半，绘制出来就是圆
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 100, 50)];
    [path stroke];
}
@end

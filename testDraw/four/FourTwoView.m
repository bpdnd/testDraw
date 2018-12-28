//
//  FourTwoView.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FourTwoView.h"

@implementation FourTwoView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect{
    //cornerRadius：圆角半径，如果圆角半径等于正方形长或宽的一半，绘制出来就是圆
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50) cornerRadius:25];
    [path stroke];
    //路径填充，必须是一个完整的封闭路径
    //[path fill];
}
@end

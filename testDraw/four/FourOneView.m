//
//  FourOneView.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FourOneView.h"

@implementation FourOneView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect{
    //cornerRadius：圆角半径（绘制矩形的左上角开始，也就是0，5）
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 10, 50, 50) cornerRadius:5];
    [path stroke];
}
@end

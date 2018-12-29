//
//  FiveViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FiveViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    //参考：https://www.cnblogs.com/jaesun/p/iOS-CAShapeLayerUIBezierPath-hua-xian.html
    [self changeBackBtn];
    FiveView *fiveView = [[FiveView alloc]initWithFrame:CGRectMake(20, 20, 50, 50)];
    fiveView.backgroundColor = [UIColor redColor];
    [self.view addSubview:fiveView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

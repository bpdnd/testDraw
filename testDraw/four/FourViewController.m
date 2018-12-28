//
//  FourViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    
    //参考 ：https://blog.csdn.net/hejiasu/article/details/72979012
    [super viewDidLoad];
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    self.oneView.backgroundColor = [UIColor grayColor];
    self.twoView.backgroundColor = [UIColor grayColor];
    self.threeView.backgroundColor = [UIColor grayColor];
    self.fourView.backgroundColor = [UIColor grayColor];
    self.fiveView.backgroundColor = [UIColor grayColor];

}
//矩形
-(FourOneView *)oneView{
    if (!_oneView) {
        _oneView = [[FourOneView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
        [self.view addSubview:_oneView];
    }
    return _oneView;
}
//圆
-(FourTwoView *)twoView{
    if (!_twoView) {
        _twoView = [[FourTwoView alloc]initWithFrame:CGRectMake(20, 130, 100, 100)];
        [self.view addSubview:_twoView];
    }
    return _twoView;
}
//椭圆
-(FourThreeView *)threeView{
    if (!_threeView) {
        _threeView = [[FourThreeView alloc]initWithFrame:CGRectMake(20, 240, 150, 100)];
        [self.view addSubview:_threeView];
    }
    return _threeView;
}
//弧
-(FourFourView *)fourView{
    if (!_fourView) {
        _fourView = [[FourFourView alloc]initWithFrame:CGRectMake(20, 350, 150, 100)];
        [self.view addSubview:_fourView];
    }
    return _fourView;
}
//扇形
-(FourFiveView *)fiveView{
    if (!_fiveView) {
        _fiveView = [[FourFiveView alloc]initWithFrame:CGRectMake(20, 460, 150, 100)];
        [self.view addSubview:_fiveView];
    }
    return _fiveView;
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

//
//  OneViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    self.oneView.backgroundColor = [UIColor whiteColor];
}
-(CustomOneView *)oneView{
    if (!_oneView) {
        _oneView = [[CustomOneView alloc]initWithFrame:self.view.bounds];
        [self.view addSubview:_oneView];
    }
    return _oneView;
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

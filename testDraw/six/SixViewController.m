//
//  SixViewController.m
//  testDraw
//
//  Created by Admin on 2019/1/17.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "SixViewController.h"

@interface SixViewController ()

@end

@implementation SixViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    self.sixView.backgroundColor = [UIColor whiteColor];
}
-(SixView *)sixView{
    if (!_sixView) {
        _sixView = [[SixView alloc]initWithFrame:self.view.bounds];
        [self.view addSubview:_sixView];
    }
    return _sixView;
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

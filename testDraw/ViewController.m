//
//  ViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/24.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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

@end

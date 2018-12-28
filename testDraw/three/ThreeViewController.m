//
//  ThreeViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    self.baseImageView.image = [UIImage imageNamed:@"base"];
    
    self.newImageView.backgroundColor = [UIColor redColor];
    [self cutImage];
}
-(UIImageView *)baseImageView{
    if (!_baseImageView) {
        _baseImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        [self.view addSubview:_baseImageView];
    }
    return _baseImageView;
}
-(UIImageView *)newImageView{
    if (!_newImageView) {
        _newImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 250, 100, 100)];
        [self.view addSubview:_newImageView];
    }
    return _newImageView;
}

//截图
-(void)cutImage{
    CGRect frame = CGRectMake(300, 300, 800, 800); //800 800 是相对与图片的像素尺寸（注意，不是iOS默认的点尺寸）
    CGImageRef imageRef = CGImageCreateWithImageInRect(self.baseImageView.image.CGImage,frame);
    UIImage *result = [UIImage imageWithCGImage:imageRef scale:self.baseImageView.image.scale orientation:UIImageOrientationUp];
    self.newImageView.image = result;
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

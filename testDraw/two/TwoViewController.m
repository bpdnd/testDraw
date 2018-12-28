//
//  TwoViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    self.imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.imageView];
    [self draw];
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
-(void)draw{
    __weak typeof(self) weakSelf = self;
    CGRect frame = self.imageView.frame;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        /* 1.设置当前上下文中绘制的区域 */
        UIGraphicsBeginImageContextWithOptions(frame.size, NO, 0);
        /* 2.获取当前上下文 */
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        /* 绘制一个圆 */
        CGContextAddEllipseInRect(context, CGRectMake(20, 20, 100, 100));
        /* 设置画笔颜色和宽度 */
        CGContextSetLineWidth(context, 10);
        [[UIColor greenColor] setStroke];
        /* 开始绘制 */
        CGContextStrokePath(context);
        /* 从当前上下文中获取绘制的内容 */
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        /* 关闭上下文 */
        UIGraphicsEndImageContext();
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.imageView.image = image;
        });
    });
}

-(void)baseDraw{
    /*
     链接：https://www.jianshu.com/p/e20a2ffc7583
     UIGraphicsBeginImageContextWithOptions(CGSizeMake(100，100),NO,0);
     获得用来处理图片的图形上下文,函数不仅仅是创建了一个适用于图形操作的上下文，并且该上下文也属于当前上下文。
     参数说明：
     第一个参数表示所要创建的图片的尺寸
     第二个参数用来指定所生成图片的背景是否为不透明，如上我们使用YES而不是NO，则我们得到的图片背景将会是黑色，显然这不是我想要的
     第三个参数指定生成图片的缩放因子，这个缩放因子与UIImage的scale属性所指的含义是一致的。传入0则表示让图片的缩放因子根据屏幕的分辨率而变化，所以我们得到的图片不管是在单分辨率还是视网膜屏上看起来都会很好
    */
    //1 获取上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(200, 200), NO, 0);
    
 
    //当绘制完成后，需要从当前上下文中获取绘制的内容，而这个内容是一个UIImage对象
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
}







@end

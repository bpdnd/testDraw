//
//  FourViewController.h
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FourOneView.h"
#import "FourTwoView.h"
#import "FourThreeView.h"
#import "FourFourView.h"
#import "FourFiveView.h"
#import "UIViewController+Extend.h"
@interface FourViewController : UIViewController
@property(nonatomic,strong) FourOneView *oneView;
@property(nonatomic,strong) FourTwoView *twoView;
@property(nonatomic,strong) FourThreeView *threeView;
@property(nonatomic,strong) FourFourView *fourView;
@property(nonatomic,strong) FourFiveView *fiveView;




@end

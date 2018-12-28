//
//  ViewController.h
//  testDraw
//
//  Created by Admin on 2018/12/24.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+Extend.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong) NSMutableArray *dataSource;

@end


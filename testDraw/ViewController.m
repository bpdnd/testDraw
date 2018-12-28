//
//  ViewController.m
//  testDraw
//
//  Created by Admin on 2018/12/24.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "ViewController.h"
static NSString *cellId = @"cellRe";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];    
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.dataSource = [NSMutableArray arrayWithArray:@[@"基础_OneViewController",@"two_TwoViewController",@"截图_ThreeViewController"]];
    [self.tableView reloadData];
    
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.tableFooterView = [[UIView alloc]init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}
#pragma tableViewData
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellId];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (self.dataSource.count != 0) {
        NSArray *arr = [[NSString stringWithFormat:@"%@",[self.dataSource objectAtIndex:indexPath.row]] componentsSeparatedByString:@"_"];
        
        cell.textLabel.text = [arr firstObject];
    }
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
#pragma tableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     NSArray *arr = [[NSString stringWithFormat:@"%@",[self.dataSource objectAtIndex:indexPath.row]] componentsSeparatedByString:@"_"];
    UIViewController *vc = [[NSClassFromString([arr lastObject]) alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}







@end

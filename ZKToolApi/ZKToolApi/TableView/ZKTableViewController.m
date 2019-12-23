//
//  ZKTableViewController.m
//  ZKCommonTool
//
//  Created by ZK on 2019/12/19.
//  Copyright © 2019 dhc. All rights reserved.
//

#import "ZKTableViewController.h"

@interface ZKTableViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ZKTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addTableView];
}

- (void)addTableView
{
    [self.view addSubview:self.tableView];
}

- (void)setBackGroundColor:(UIColor *)backGroundColor
{
    self.tableView.backgroundColor = backGroundColor;
}

- (UITableView *)tableView
{
    if (_tableView == nil) {
        
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        
        _tableView.delegate = self;
        
        _tableView.dataSource = self;
                
        _tableView.backgroundColor = [UIColor whiteColor];
        
        _tableView.showsVerticalScrollIndicator = NO;
                
        _tableView.tableFooterView = [[UIView alloc] init];
        
    }
    
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 140;
}
// 头视图代理
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}
// 脚视图代理
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}





@end

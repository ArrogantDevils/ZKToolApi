//
//  ZKTableViewController.h
//  ZKCommonTool
//
//  Created by ZK on 2019/12/19.
//  Copyright © 2019 dhc. All rights reserved.
//

#import "ZKNavgationController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZKTableViewController : ZKNavgationController

@property (nonatomic, copy) UITableView *tableView;

@property (nonatomic, copy) UIColor *backGroundColor;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section;

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section;

@end

NS_ASSUME_NONNULL_END

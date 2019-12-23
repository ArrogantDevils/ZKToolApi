//
//  ZKNavgationController.m
//  ZKCommonTool
//
//  Created by ZK on 2019/12/19.
//  Copyright © 2019 dhc. All rights reserved.
//

#import "ZKNavgationController.h"

@interface ZKNavgationController () <UIGestureRecognizerDelegate>
{
    id <UIGestureRecognizerDelegate> _delegate;
}

@end

@implementation ZKNavgationController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
//    [self.navigationController.navigationBar setBarTintColor:Main_Color];
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    
    [button setImage:[UIImage imageNamed:@"Back"] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}

- (void)setTitleString:(NSString *)titleString
{
    [self.navigationItem setTitle:titleString];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.hidesBottomBarWhenPushed = YES;
    
    [super viewWillAppear:animated];
    
    if (self.navigationController.viewControllers.count > 1) {
        // 记录系统返回手势的代理
        _delegate = self.navigationController.interactivePopGestureRecognizer.delegate;
        // 设置系统返回手势的代理为当前控制器
        self.navigationController.interactivePopGestureRecognizer.delegate = self;
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    // 设置系统返回手势的代理为我们刚进入控制器的时候记录的系统的返回手势代理
    self.navigationController.interactivePopGestureRecognizer.delegate = _delegate;
    
    self.tabBarController.hidesBottomBarWhenPushed = YES;
}

#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.navigationController.childViewControllers.count > 1;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return self.navigationController.viewControllers.count > 1;
}

@end

//
//  UIView+Tool.h
//  CommonTool
//
//  Created by ZK on 2019/12/9.
//  Copyright © 2019 dhc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Tool)


/// 在自定义View中进行压栈操作
/// @param view 一般传self.
+ (UIViewController *)viewController:(UIView *)view;

@end

NS_ASSUME_NONNULL_END

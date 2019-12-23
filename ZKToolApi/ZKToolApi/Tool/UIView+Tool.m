//
//  UIView+Tool.m
//  CommonTool
//
//  Created by ZK on 2019/12/9.
//  Copyright © 2019 dhc. All rights reserved.
//

#import "UIView+Tool.h"

@implementation UIView (Tool)

+ (UIViewController *)viewController:(UIView *)view
{
    for (UIView *next = [view superview]; next; next = next.superview) {
        
        UIResponder *nextResponder = [next nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            
            return (UIViewController *)nextResponder;
        }
    }
    
    return nil;
}

@end

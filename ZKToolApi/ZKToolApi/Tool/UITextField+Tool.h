//
//  UITextField+Tool.h
//  CommonTool
//
//  Created by ZK on 2019/12/9.
//  Copyright © 2019 dhc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (Tool)

+ (NSMutableAttributedString *)getPlaceholder:(NSString *)placeholder Color:(UIColor *)color Font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END

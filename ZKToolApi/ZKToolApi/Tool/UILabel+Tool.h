//
//  UILabel+Tool.h
//  CommTool
//
//  Created by ZK on 2019/12/9.
//  Copyright © 2019 dhc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Tool)

/// 改变字符串中具体某字符串的颜色
/// @param label 要做改变的label
/// @param changeString 需要改变的字符串
/// @param allColor 整个lable的文字颜色
/// @param markColor 改变的文字的颜色
/// @param fontSize 改变的文字的字体大小

+ (void)messageAction:(UILabel *)label changeString:(NSString *)changeString andAllColor:(UIColor *)allColor andMarkColor:(UIColor *)markColor andMarkFondSize:(float)fontSize;

@end

NS_ASSUME_NONNULL_END

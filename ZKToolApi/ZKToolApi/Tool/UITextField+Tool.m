//
//  UITextField+Tool.m
//  CommonTool
//
//  Created by ZK on 2019/12/9.
//  Copyright © 2019 dhc. All rights reserved.
//

#import "UITextField+Tool.h"

@implementation UITextField (Tool)

 + (NSMutableAttributedString *)getPlaceholder:(NSString *)placeholder Color:(UIColor *)color Font:(UIFont *)font
{
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:placeholder];
    
    [text addAttribute:NSForegroundColorAttributeName
                        value:color
                        range:NSMakeRange(0, placeholder.length)];
    
    [text addAttribute:NSFontAttributeName
                        value:font
                        range:NSMakeRange(0, placeholder.length)];
        
    return text;
}

@end

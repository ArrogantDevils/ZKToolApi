//
//  UILabel+Tool.m
//  CommTool
//
//  Created by ZK on 2019/12/9.
//  Copyright © 2019 dhc. All rights reserved.
//

#import "UILabel+Tool.h"

@implementation UILabel (Tool)

+ (void)messageAction:(UILabel *)theLab changeString:(NSString *)change andAllColor:(UIColor *)allColor andMarkColor:(UIColor *)markColor andMarkFondSize:(float)fontSize
{
    NSString *tempStr = theLab.text;
    
    NSMutableAttributedString *strAtt = [[NSMutableAttributedString alloc] initWithString:tempStr];
    
    [strAtt addAttribute:NSForegroundColorAttributeName value:allColor range:NSMakeRange(0, [strAtt length])];
    
    NSRange markRange = [tempStr rangeOfString:change];
    
    [strAtt addAttribute:NSForegroundColorAttributeName value:markColor range:markRange];
    
    [strAtt addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue" size:fontSize] range:markRange];
    
    theLab.attributedText = strAtt;
}

@end

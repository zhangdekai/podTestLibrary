//
//  UILabel+Space.m
//  ThinkSharer
//
//  Created by 张德凯 on 2017/6/16.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import "UILabel+Space.h"
#import "UIColor+YMHCustoms.h"

#define lableH(font) ((font.lineHeight))

@implementation UILabel (Space)

+ (UILabel *)labelWithSpace:(CGFloat)space wordFont:(CGFloat)font
                 labelWidth:(CGFloat)width string:(NSString *)string {
    
    UILabel *label = [[UILabel alloc]init];
    label.font = [UIFont systemFontOfSize:font];
    label.textColor = [UIColor blackColor];
    
    label.numberOfLines = 0;
    
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc]initWithString:string];
    
    NSMutableParagraphStyle *paragraStyle = [[NSMutableParagraphStyle alloc]init];
    
    paragraStyle.lineSpacing = space;
    
    [attributeStr addAttribute:NSParagraphStyleAttributeName value:paragraStyle
                         range:NSMakeRange(0, string.length)];
    
    label.attributedText = attributeStr;
    [label sizeToFit];
    
    return label;
}

+ (UILabel *)customCommonLabel:(NSString *)title {
    UILabel *section = [[UILabel alloc]init];
    section.textColor = [UIColor generalTitleFontBlackColor];
    section.font = [UIFont systemFontOfSize:17];
    section.text = title;
    
    return section;
}

//这个方法仅仅计算两行文字的高度,其先计算一行的文字高度*2 + 行高
+(CGFloat)getSpaceLabelwithLineSpace:(CGFloat)NumberLine WorSpace:(CGFloat)WarSpace withFont:(CGFloat)font withWidth:(CGFloat)width {
    
    NSString *string = @"这是一个";
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
//        paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
        paraStyle.alignment = NSTextAlignmentLeft;
//        [paraStyle setLineSpacing:LineSpace];
//        paraStyle.firstLineHeadIndent = 0.0;
//        paraStyle.paragraphSpacingBefore = 0.0;
//        paraStyle.headIndent = 0;
//        paraStyle.tailIndent = 0;
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:font], NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:@0.0f
                          };
    CGSize size = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height *2 + NumberLine;
}


+(CGFloat)getallSpaceLabelwithstring:(NSString *)Textstring LineSpace:(CGFloat)LineSpace WorSpace:(CGFloat)WarSpace withFont:(CGFloat)font withWidth:(CGFloat)width {
    
    NSString *string = Textstring;
    
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
            paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
            [paraStyle setLineSpacing:LineSpace];
            paraStyle.firstLineHeadIndent = 0.0;
            paraStyle.paragraphSpacingBefore = 0.0;
            paraStyle.headIndent = 0;
            paraStyle.tailIndent = 0;
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:font], NSParagraphStyleAttributeName:paraStyle, NSKernAttributeName:@0.0f
                          };
    CGSize size = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    return size.height;
}


+(CGFloat)p_titleHeightStr:(NSString *)s withWidth:(CGFloat)width withfont:(UIFont *)font
{
    CGRect r=[s boundingRectWithSize:CGSizeMake(width,((lableH(font) * 0.4) + (font.pointSize))*2) options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:font} context:nil];
    return r.size.height;
}




@end

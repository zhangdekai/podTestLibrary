//
//  UILabel+Space.h
//  ThinkSharer
//
//  Created by 张德凯 on 2017/6/16.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UILabel (Space)

///**
// 修改label内容距 `top` `left` `bottom` `right` 边距
// */
//@property (nonatomic, assign) UIEdgeInsets yf_contentInsets;


/**
 带行间距的label

 @param space 间距
 @param font 字体
 @param width label 宽度
 @param string string
 @return UILabel
 */
+ (UILabel *)labelWithSpace:(CGFloat)space wordFont:(CGFloat)font
                 labelWidth:(CGFloat)width string:(NSString *)string;



/**
 常用Label

 @param title 标题
 @return UILabel
 */
+ (UILabel *)customCommonLabel:(NSString *)title;

+(CGFloat)getSpaceLabelwithLineSpace:(CGFloat)NumberLine WorSpace:(CGFloat)WarSpace withFont:(CGFloat)font withWidth:(CGFloat)width;

+(CGFloat)getallSpaceLabelwithstring:(NSString *)Textstring LineSpace:(CGFloat)LineSpace WorSpace:(CGFloat)WarSpace withFont:(CGFloat)font withWidth:(CGFloat)width;

+(CGFloat)p_titleHeightStr:(NSString *)s withWidth:(CGFloat)width withfont:(UIFont *)font;

@end

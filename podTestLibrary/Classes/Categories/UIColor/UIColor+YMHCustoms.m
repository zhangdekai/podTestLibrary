//
//  UIColor+YMHCustoms.m
//  ThinkSharer
//
//  Created by 张德凯 on 2017/6/15.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import "UIColor+YMHCustoms.h"
#import "UIColor+YMHAddition.h"

@implementation UIColor (YMHCustoms)

+ (UIColor *)mainColorBlue {//海蓝
    return [UIColor ymh_colorWithHex:0x57bdd4];
    
}

+ (UIColor *)mainColorRed {//红色
    return [UIColor ymh_colorWithHex:0xdd2a01];
    
}

+ (UIColor *)mainColorBlueA {//海蓝A
    return [UIColor ymh_colorWithHex:0xa0ccd7];
    
}

+ (UIColor *)viewShaowColor { //阴影颜色 0x221815
    return [UIColor ymh_colorWithHex:0x221815];

}

+ (UIColor *)generalTitleFontBlackColor
{
    return [UIColor ymh_colorWithHex:0x333333];
}

+ (UIColor *)generalTitleFontGrayColor
{
    return [UIColor ymh_colorWithHex:0x666666];
}

+ (UIColor *)generalSubTitleFontGrayColor
{
    return [UIColor ymh_colorWithHex:0x999999];
}

+ (UIColor *)generalSubTitleFontGrayColorA
{
    return [UIColor ymh_colorWithHex:0xcccccc];
}

+ (UIColor *)generalSubTitleFontGrayColorB
{
    return [UIColor ymh_colorWithHex:0xbdbdbd];
}


/**
 *  background colors
 */

+ (UIColor *)backgroundGrayColorA
{
    return [UIColor ymh_colorWithHex:0xfafafa];
}

+ (UIColor *)backgroundGrayColorB
{
    return [UIColor ymh_colorWithHex:0xf4f4f4];
}

+ (UIColor *)backgroundGrayColorC
{
    return [UIColor ymh_colorWithHex:0xe5e5e5];
}


/**
 *  seperate colors
 */
+ (UIColor *)seperateThickLineColor
{
    return [UIColor ymh_colorWithHex:0xf4f4f4];
}

+ (UIColor *)seperateThinLineColor
{
    return [UIColor ymh_colorWithHex:0xe1e1e1];
}



+ (UIColor *)NavigationSeporLineColor {//海蓝
    return [UIColor ymh_colorWithHex:0xee5e5e5];
    
}


@end

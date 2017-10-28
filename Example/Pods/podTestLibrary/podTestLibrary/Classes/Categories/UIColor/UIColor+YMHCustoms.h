//
//  UIColor+YMHCustoms.h
//  ThinkSharer
//
//  Created by 张德凯 on 2017/6/15.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YMHCustoms)


/**
 海蓝  0x57bdd4

 @return UIColor
 */
+ (UIColor *)mainColorBlue; //海蓝    0x57bdd4

/**
 红色  e54040
 
 @return UIColor
 */
+ (UIColor *)mainColorRed; //红色     e54040

/**
 海蓝A(浅)  0xa0ccd7
 
 @return UIColor
 */

+ (UIColor *)mainColorBlueA;//海蓝A     0xa0ccd7
    


/**
 阴影颜色 0x221815

 @return UIColor
 */
+ (UIColor *)viewShaowColor; //阴影颜色 0x221815


/**
 黑色 标题内容 #333333

 @return UIColor
 */
+ (UIColor *)generalTitleFontBlackColor;//标题内容 #333333

/**
 灰色 标题 #666666

 @return UIColor
 */
+ (UIColor *)generalTitleFontGrayColor;//标题 #666666

/**
 灰色 副标题 #999999

 @return UIColor
 */
+ (UIColor *)generalSubTitleFontGrayColor;//副标题 #999999

/**
 灰色 副标题A #cccccc
 
 @return UIColor
 */
+ (UIColor *)generalSubTitleFontGrayColorA;

/**
 灰色 副标题A #bdbdbd
 
 @return UIColor
 */
+ (UIColor *)generalSubTitleFontGrayColorB;

/**
 灰色A 0xfafafa
 
 @return UIColor
 */
+ (UIColor *)backgroundGrayColorA;//底色A 0xfafafa
/**
 灰色B 0xf4f4f4
 
 @return UIColor
 */
+ (UIColor *)backgroundGrayColorB;//底色B #f4f4f4

/**
 灰色C 0xe5e5e5

 @return UIColor
 */
+ (UIColor *)backgroundGrayColorC;


/**
 粗分割线 #f4f4f4

 @return UIColor
 */
+ (UIColor *)seperateThickLineColor;//粗分割线 #f4f4f4

/**
 细分割线 #eeeeee
 
 @return UIColor
 */
+ (UIColor *)seperateThinLineColor;//细分割线 #eeeeee


/**
 设置navigation的底部分割线

 @return <#return value description#>
 */
+ (UIColor *)NavigationSeporLineColor;


@end

//
//  TSPublicTool.h
//  ThinkSharer
//
//  Created by 张德凯 on 2017/5/17.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TSActionAlterView.h"
#import "TSDatePickerView.h"
#import "PersonalOrCompanyView.h"
#import "TSVoiceManager.h"
#import "BasicViewController.h"
#import "ThinkSharer-Bridging-Header.h"

//可自行添加公共tool

typedef void(^AlterBlock)();


@interface TSPublicTool : NSObject


//用于导航栏titleView
+ (UILabel *)initWithTitle:(NSString *)title;

+ (UILabel *)initWithTitle:(NSString *)title color:(UIColor*)color;

//按比例获得所需尺寸
+ (CGFloat)getRealPX:(CGFloat)px;

//每行显示3个，获取行数
+ (NSInteger)getRealCount:(NSInteger)count;

//一位数组转化为二维数组
+ (NSMutableArray *)convertArray:(NSMutableArray *)array;

//首页操作提示
+ (TSActionAlterView *)shareInstance;


//个人机构选择
+ (PersonalOrCompanyView *)personInstance;


/**
 动态获取文字内容height

 @param string 文字
 @param font 字号
 @param width 宽度
 @return height
 
 */
+ (CGFloat)sizeWithString:(NSString*)string font:(UIFont*)font width:(CGFloat)width;


/**
 动态获取文字内容 width (单行)

 @param string 文字
 @param font 字号
 @return width
 */
+ (CGFloat)widthWithString:(NSString*)string font:(CGFloat)font;

/**
 动态获取文字内容 height (单行)
 
 @param string 文字
 @param font 字号
 @return height
 */

+ (CGFloat)heightWithString:(NSString*)string font:(CGFloat)font;

/**
 获取带间距的label height

 @param string NSString
 @param font font
 @param width width
 @param space space
 @return height
 */
+ (CGFloat)labelHeightWithString:(NSString *)string font:(CGFloat)font width:(CGFloat)width space:(CGFloat)space;


/**
 获取some view 相对UIWindow 的frame

 @param view UIView
 @return CGRect
 */
+ (CGRect)getRelativeCGrect:(UIView *)view;



/**
 展示分享view

 @param vc BasicViewController
 */
+ (void)showShareView:(BasicViewController *)vc;


/**
 判断objc是否为空，字符串是否为@“”

 @param objc objc
 @return yes／no
 */
+ (BOOL)objectIsEmpty:(id)objc;



/**
 判断字符串是否为空

 @param tmpString 被判断者
 @return NSString
 */
+ (NSString *)checkEmpty:(NSString *)tmpString;


/**
 获取当前时间 秒（时间戳）

 @return 时间戳
 */
+ (NSString *)getNowTimeTimestamp;


/**
 当前时间与时间差（最初的与服务器时间差）相加

 @return 时间戳
 */
+ (NSString *)getNowTimeTimestampAndAddServerTime;




/**
 或去某文件大小 单位 b 换算 MB  = 除以 （1024 * 1024）

 @param filePath file URL
 @return b
 */
+ (long long) fileSizeAtPath:(NSString*)filePath;


/**
 计算时间差（1小时，5分钟）
 
 @param timeGap NSTimeInterval
 @return NSString
 */
+ (NSString *)calculateTimeGap:(NSTimeInterval)timeGap;



/**
 OSS是否失效

 @return yes / no
 */
+ (BOOL)oSSInvaild;


/**
 检查字符串 checked（不为空和@“”，则返回，否则返回默认的 placeHold）

 @param checked NSString
 @param placeHold placeHold
 @return NSString
 */
+ (NSString *)checkString:(NSString *)checked placeHold:(NSString *)placeHold;


@end

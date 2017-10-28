//
//  UIFont+Extension.m
//  ThinkSharer
//
//  Created by CHEN QIANG on 2017/7/24.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import "UIFont+Extension.h"
#import <objc/runtime.h>
#define DesignUIScreen 375 //设计图尺寸
@implementation UIFont (Extension)
//+(void)load{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        
//        Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
//        
//        Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
//        
//        //交换系统方法
//        method_exchangeImplementations(newMethod, method);
//    });
//}

//+(UIFont *)adjustFont:(CGFloat)fontSize{
//    UIFont *newFont=nil;
////    if (is_iPad) {
////        newFont = [UIFont adjustFont:fontSize];
////    }else
////    {
//        newFont = [UIFont adjustFont:fontSize * [UIScreen mainScreen].bounds.size.width/DesignUIScreen];
////}
//    return newFont;
//}
@end

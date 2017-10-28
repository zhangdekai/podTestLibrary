//
//  NSString+Language.h
//  ThinkSharer
//
//  Created by 张德凯 on 2017/6/13.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Language)


/**
 语言国际化

 @return string
 */
- (NSString *)internationalLanguage;



/**
 检查字符串是否为空，为空返回@“”

 @return self or @“”
 */
- (NSString *)checkEmpty;


/**
 检查字符串是否为空

 @return BOOL
 */
- (BOOL)isEmptyString;

@end

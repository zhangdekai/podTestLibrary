//
//  NSString+Language.m
//  ThinkSharer
//
//  Created by 张德凯 on 2017/6/13.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import "NSString+Language.h"

@implementation NSString (Language)

- (NSString *)internationalLanguage {
    
    return NSLocalizedString(self, self);
}


- (NSString *)checkEmpty {
    
    if (self == nil || self == NULL) {
        return @"";
    }
    
    if ([self isKindOfClass:[NSNull class]]) {
        return @"";
    }
    
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return @"";
    }
    
    return self;
}

- (BOOL)isEmptyString {
    
    if (self == nil || self == NULL) {
        return YES;
    }
    
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    
    return NO;
}


- (BOOL)emptyString:(id)tmpString {
    
    if (tmpString == nil || tmpString == NULL) {
        return YES;
    }
    
    if ([tmpString isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    
    return NO;
}



@end

//
//  TSPublicTool.m
//  ThinkSharer
//
//  Created by 张德凯 on 2017/5/17.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import "TSPublicTool.h"
#import "TSUserCenterSharerView.h"

@implementation TSPublicTool

+ (UILabel *)initWithTitle:(NSString *)title {
    
    UILabel *label = [[UILabel alloc]init];
    label.text = title;
    label.textAlignment = NSTextAlignmentCenter;
    
    label.font = [UIFont systemFontOfSize:18];
    
    label.textColor = [UIColor generalTitleFontBlackColor];
    
    [label sizeToFit];
    
    label.center = CGPointMake(ScreenWidth * 0.5, 22);
    
    
    return label;
}


+ (UILabel *)initWithTitle:(NSString *)title color:(UIColor*)color {
    
    UILabel *label = [[UILabel alloc]init];
    label.text = title;
    label.textAlignment = NSTextAlignmentCenter;
    
    label.font = [UIFont systemFontOfSize:18];
    
    label.textColor = color;
    
    [label sizeToFit];
    
    label.center = CGPointMake(ScreenWidth * 0.5, 22);
    
    return label;
    
}


+ (CGFloat)getRealPX:(CGFloat)px {
    
    CGFloat scle = ScreenWidth / 375.0;
    
    return px * scle;
}

+ (NSInteger)getRealCount:(NSInteger)count {
    
    NSInteger a = count / 3;
    if (a < 1) {
        return 1;
    }
    NSInteger b = count % 3;
    
    if (b > 0) {
        a += 1;
    }
    return a;
}


+ (NSMutableArray *)convertArray:(NSMutableArray *)array{
    
    NSInteger count = (array.count / 3);//行
    if (array.count > 0 && count == 0) {
        count = 1;
    } else {
        NSInteger arrayNum = array.count % 3;
        if (arrayNum != 0) {
            count += 1;
        }
    }
    
    NSMutableArray *twoArray = [NSMutableArray array];
    NSMutableArray *origenArray  = [NSMutableArray arrayWithArray:array];
    NSInteger origenNum = array.count;
    

    for (int i = 0 ; i < count; i++) {
        if (origenNum == 0) {
            break;
        }
        
        NSLog(@"twoArray  %@",twoArray);
        NSMutableArray *array1 = [NSMutableArray array];

        for (int j = 0; j < 3; j++) {
            if (j >= origenNum) {
                [array1 addObject:@""];
            } else {
                [array1 addObject:origenArray[j]];
            }
            
        }
        
        [twoArray addObject:array1];
        
        for (int k = 0; k < 3; k++) {
            if (k < origenNum) {
                [origenArray removeObjectAtIndex:0];
            }
        }
        origenNum = origenArray.count;
                
    }
    NSLog(@"twoArray  %@",twoArray);

    return twoArray;

}


+ (TSActionAlterView *)shareInstance {
    static TSActionAlterView *shareView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareView = [[TSActionAlterView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
        
    });
    return shareView;
}


+ (CGFloat)labelHeightWithString:(NSString *)string font:(CGFloat)font width:(CGFloat)width space:(CGFloat)space {
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, width, 1)];
    
    label.font = [UIFont systemFontOfSize:font];
    
    label.numberOfLines = 0;
    
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc]initWithString:string];
    
    NSMutableParagraphStyle *paragraStyle = [[NSMutableParagraphStyle alloc]init];
    
    paragraStyle.lineSpacing = space;
    
    [attributeStr addAttribute:NSParagraphStyleAttributeName value:paragraStyle
                         range:NSMakeRange(0, string.length)];
    
    label.attributedText = attributeStr;
    
    [label sizeToFit];
    
    
    CGFloat height = label.frame.size.height;
    
    return height;
}


/**
 *  自适应字体
 */
+ (CGFloat)sizeWithString:(NSString*)string font:(UIFont*)font width:(CGFloat)width {
    
    CGRect rect = [string boundingRectWithSize:CGSizeMake(width,80000) options:NSStringDrawingTruncatesLastVisibleLine |   NSStringDrawingUsesFontLeading    |NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size.height;
}

+ (CGFloat)widthWithString:(NSString*)string font:(CGFloat)font {
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    label.font = [UIFont systemFontOfSize:font];
    label.numberOfLines = 1;
    label.text = string;
    [label sizeToFit];
    
    
    return label.frame.size.width;
}

+ (CGFloat)heightWithString:(NSString*)string font:(CGFloat)font {
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    label.font = [UIFont systemFontOfSize:font];
    label.numberOfLines = 1;
    label.text = string;
    [label sizeToFit];
    
    return label.frame.size.height;

}


+ (PersonalOrCompanyView *)personInstance {
    static PersonalOrCompanyView *shareView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareView = [[PersonalOrCompanyView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
        
    });
    return shareView;
}

+ (CGRect)getRelativeCGrect:(UIView *)view {
    UIWindow * window=[[[UIApplication sharedApplication] delegate] window];
    CGRect rect = [view convertRect:view.bounds toView:window];
    return rect;
}

+ (void)showShareView:(BasicViewController *)vc {
    TSUserCenterSharerView *alter = [[TSUserCenterSharerView alloc]init];
    [alter showViewFromBottom];
    
    alter.shareBlock = ^(NSString *shareType) {
        NSLog(@"分享类型   %@",shareType);
        [vc delayTime:0.5 execute:^{
            [vc showHudWithTextOnly:@"分享功能，敬请期待哦"];
        }];
    };
}

+ (BOOL)objectIsEmpty:(id)objc {
    if (objc == nil || objc == NULL) {
        return YES;
    }
    
    if ([objc isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([objc isKindOfClass:[NSString class]]) {
        if ([[objc stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
            return YES;
        }
    }    
    
    return NO;
}

+ (NSString *)checkEmpty:(NSString *)tmpString {
    
    if (tmpString == nil || tmpString == NULL) {
        return @"";
    }
    
    if ([tmpString isKindOfClass:[NSNull class]]) {
        return @"";
    }
    
    if ([[tmpString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return @"";
    }
    
    return tmpString;
}

+ (NSString *)getNowTimeTimestamp {
    
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    
    NSTimeInterval a = [dat timeIntervalSince1970];
    
    NSString*timeString = [NSString stringWithFormat:@"%0.f", a];//转为字符型
    
    return timeString;
    
}


+ (NSString *)getNowTimeTimestampAndAddServerTime {
    
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    
    NSTimeInterval a=[dat timeIntervalSince1970];
    
    NSString*timeString = [NSString stringWithFormat:@"%0.f", a];//转为字符型
    
    NSString *serverTime = AppLocalTimeAndServeTimeGap;
    
    double last = [timeString doubleValue] + [serverTime doubleValue];
    
    NSString *lastTime = [NSString stringWithFormat:@"%0.f", last];//转为字符型
    
    return lastTime;
    
}

+ (long long) fileSizeAtPath:(NSString*)filePath {
    
    NSFileManager* manager = [NSFileManager defaultManager];
    
    if ([manager fileExistsAtPath:filePath]){
        long long length = [[manager attributesOfItemAtPath:filePath error:nil] fileSize];
        return length ;
    }
    return 0;
}


+ (NSString *)calculateTimeGap:(NSTimeInterval)timeGap {
    if (timeGap == 0) {
        return @"";
    }
    
    NSTimeInterval time = timeGap;
    
    // 秒转分钟
    NSInteger minutes = time/60;
    if (minutes<60) {
        return [NSString stringWithFormat:@"%ld分钟",minutes];
    }
    
    // 秒转小时
    NSInteger hours = time/3600;
    if (hours<24) {
        return [NSString stringWithFormat:@"%ld小时",hours];
    }
    //秒转天数
    NSInteger days = time/3600/24;
    if (days < 30) {
        return [NSString stringWithFormat:@"%ld天",days];
    }
    //秒转月
    NSInteger months = time/3600/24/30;
    if (months < 12) {
        return [NSString stringWithFormat:@"%ld月",months];
    }
    //秒转年
    NSInteger years = time/3600/24/30/12;
    return [NSString stringWithFormat:@"%ld年",years];
}

+ (BOOL)oSSInvaild {
    NSString *expiration = [TSUserDefault objectForKey:@"ExpirationTimeGap"];
    if (expiration != nil) {
        NSString *current = [TSPublicTool getNowTimeTimestamp];
        if ([current doubleValue] + 100 < [expiration doubleValue]) {
            return YES;
        }
    }
    return NO;
}

+ (NSString *)checkString:(NSString *)checked placeHold:(NSString *)placeHold {
    if (checked) {
        if ([checked isEqualToString:@""]) {
            return placeHold;
        } else {
            return checked;
        }
    }
    return placeHold;
}



@end

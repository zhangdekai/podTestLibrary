//
//  TSVoiceManager.h
//  ThinkSharer
//
//  Created by 思享者2 on 2017/7/19.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSVoiceManager : NSObject


/*
 *获取系统音量滑块
 */
+(UISlider*)getSystemVolumSlider;


/*
 *获取系统音量大小
 */
+(CGFloat)getSystemVolumValue;

/*
 *设置系统音量大小
 */
+(void)setSysVolumWith:(double)value;

@end

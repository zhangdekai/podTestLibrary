//
//  TSMapManager.h
//  ThinkSharer
//
//  Created by 思享者2 on 2017/7/3.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSMapManager : NSObject



/**
 地图定位

 @return TSMapManager
 */
+ (TSMapManager *)loacteInstance;



/**
 单次定位

 @param locatedString block 返回place
 */
- (void)locating:(void(^)(NSString *place, double latitude, double longitude))locatedString;

@end

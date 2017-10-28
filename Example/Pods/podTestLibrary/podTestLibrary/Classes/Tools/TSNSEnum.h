//
//  TSNSEnum.h
//  ThinkSharer
//
//  Created by 思享者2 on 2017/9/9.
//  Copyright © 2017年 张德凯. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ThinksOrderType) {//订单类型
    ThinksOrderTypeStudyPreview,//学习预定
    ThinksOrderTypeReserveStudy,//订制学习
    ThinksOrderTypeTeachPublish,//授课发布
    ThinksOrderTypeReserveTeach,//订制制授课
};

@interface TSNSEnum : NSObject


@end

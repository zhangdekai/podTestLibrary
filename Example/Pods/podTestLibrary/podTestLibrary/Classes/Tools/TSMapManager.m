////
////  TSMapManager.m
////  ThinkSharer
////
////  Created by 思享者2 on 2017/7/3.
////  Copyright © 2017年 张德凯. All rights reserved.
////
//
//#import "TSMapManager.h"
//#import <AMapLocationKit/AMapLocationKit.h>
//
//
//@interface TSMapManager ()
//
//@property (nonatomic,strong) AMapLocationManager *locationManager;
//
//@end
//
//@implementation TSMapManager
//
//+ (TSMapManager *)loacteInstance{
//    static TSMapManager *map = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        map = [[TSMapManager alloc]init];
//        map.locationManager = [[AMapLocationManager alloc] init];
//    });
//    return map;
//}
//
////发起单次定位
//- (void)locating:(void(^)(NSString *place, double latitude, double longitude))locatedString {
//
//    // 带逆地理信息的一次定位（返回坐标和地址信息）
//    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
//    //   定位超时时间，最低2s，此处设置为2s
//    self.locationManager.locationTimeout =2;
//    //   逆地理请求超时时间，最低2s，此处设置为2s
//    self.locationManager.reGeocodeTimeout = 2;
//
//    // 带逆地理（返回坐标和地址信息）。将下面代码中的 YES 改成 NO ，则不会返回地址信息。
//    [self.locationManager requestLocationWithReGeocode:YES completionBlock:^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error) {
//
//        if (error) {
//            NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
//
//            if (error.code == AMapLocationErrorLocateFailed) {
//                return;
//            }
//        }
//        NSLog(@"高的地图。location  :  经度 %lf   纬度： %lf", location.coordinate.longitude,location.coordinate.latitude);
//        NSString *longitude = [NSString stringWithFormat:@"%lf",location.coordinate.longitude];
//        NSString *latitude = [NSString stringWithFormat:@"%lf",location.coordinate.latitude];
//        [TSUserDefault setObject:longitude forKey:@"longitude"];
//        [TSUserDefault setObject:latitude forKey:@"latitude"];
//
//        if (regeocode) {
//            NSString *place = [NSString stringWithFormat:@"%@",regeocode.formattedAddress];
//            if (locatedString) {
//                locatedString(place,location.coordinate.latitude ,location.coordinate.longitude);
//            }
//            NSLog(@"reGeocode:%@", regeocode);
//        }
//    }];
//}
//
//
//@end


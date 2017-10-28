////
////  UIImageView+YMHPlaceholder.m
////  CoreFrame
////
////  Created by 张德凯 on 2017/5/19.
////  Copyright © 2017年 张德凯. All rights reserved.
////
//
//#import "UIImageView+YMHPlaceholder.h"
//
//@implementation UIImageView (YMHPlaceholder)
//
//- (void)TSLoadImageWithTFSKey:(NSString *)tfsKey {
//    
//    [self TSLoadImageWithTFSKey:tfsKey contentMode:UIViewContentModeScaleToFill];
//}
//
//- (void)TSLoadImageAspectFillWithTFSKey:(NSString *)tfsKey
//{
//    [self TSLoadImageWithTFSKey:tfsKey contentMode:UIViewContentModeScaleAspectFill];
//}
//
//- (void)TSLoadImageWithTFSKey:(NSString *)tfsKey  contentMode :(UIViewContentMode)contentMode
//{
//    self.contentMode = contentMode;
//    [self sd_setImageWithURL:[NSURL URLWithString: tfsKey] placeholderImage:[UIImage imageNamed:@"testHeader"] completed:NULL];
//}
//
//- (void)TSLoadAvatarWithTFSKey:(NSString *)tfsKey
//{
//    [self TSLoadAvatarWithTFSKey:tfsKey contentMode:UIViewContentModeScaleToFill];
//}
//
//- (void)TSLoadAvatarWithTFSKey:(NSString *)tfsKey  contentMode:(UIViewContentMode)contentMode
//{
//    self.contentMode = contentMode;
//    [self sd_setImageWithURL:[NSURL URLWithString: tfsKey] placeholderImage:[UIImage imageNamed:@"app_default_avter_round"] completed:NULL];
//
//}
//
//- (void)TSLoadImageWithTFSKey:(NSString *)tfsKey contentMode :(UIViewContentMode)contentMode imageWidth :(NSInteger)width imageHeight :(NSInteger)height
//{
//    [self TSLoadImageWithTFSKey:tfsKey placeHolderImage:[UIImage imageNamed:@"testHeader"] contentMode:contentMode imageWidth:width imageHeight:height];
//}
//
//- (void)TSLoadImageWithURL:(NSString *)urlString placeHolderImage:(UIImage *)placeHolderImage {
//    
//    [self sd_setImageWithURL:[NSURL URLWithString:urlString]
//            placeholderImage:placeHolderImage
//                   completed:NULL];
//}
//
//- (void)TSLoadImageWithTFSKey:(NSString *)tfsKey placeHolderImage:(UIImage *)placeHolderImage contentMode:(UIViewContentMode)contentMode imageWidth:(NSInteger)width imageHeight:(NSInteger)height
//{
//    self.contentMode = contentMode;
//    NSArray *stringArray = [tfsKey componentsSeparatedByString:@"."];
//    NSString *realTFSKey = stringArray.firstObject;
//    NSString *string = nil;
//    if (stringArray.count > 1)  //  有多个
//    {
//        NSMutableString *mutableString = TSAPI_TFSUrl.mutableCopy;
//        [mutableString appendString:realTFSKey];
//        
//        for(NSInteger i = 0;i < stringArray.count;i++)
//        {
//            if (i != 0) //  非第一个
//            {
//                if (i != stringArray.count - 1) //  非最后一个
//                {
//                    [mutableString appendString:@"."];
//                    [mutableString appendString:stringArray[i]];
//                }
//                else    //  最后一个
//                {
//                    NSString *lastKeyComp = stringArray[i];
//                    if ([lastKeyComp containsString:@"png"] || [lastKeyComp containsString:@"jpg"] || [lastKeyComp containsString:@"gif"] || [lastKeyComp containsString:@"jpeg"] || [lastKeyComp containsString:@"bmp"])   //  图片后缀
//                    {
//                        lastKeyComp = stringArray[i];
//                    }
//                    else    //  非图片后缀
//                    {
//                        [mutableString appendString:@"."];
//                        [mutableString appendString:stringArray[i]];
//                        
//                        lastKeyComp = @"png";
//                    }
//                    [mutableString appendString:[NSString stringWithFormat:@"_%zdx%zd.%@",width,height,lastKeyComp]];
//                }
//            }
//        }
//        
//        string = mutableString.copy;
//    }
//    else    //  只有一个
//    {
//        string = [NSString stringWithFormat:@"%@%@_%zdx%zd.png",TSAPI_TFSUrl,realTFSKey,width,height];
//    }
//
//    [self sd_setImageWithURL:[NSURL URLWithString:string]
//            placeholderImage:placeHolderImage
//                   completed:NULL];
//}
//
//
//+ (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
//    
//    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
//        
//        return (UIImageView *)view;
//    }
//    
//    for (UIView *subview in view.subviews) {
//        
//        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
//        
//        if (imageView) {
//            
//            return imageView;
//            
//        }
//        
//    }
//    
//    return nil;
//    
//}
//
//+ (CGRect)changeImageViewSize:(UIImage *)image origenImageViewSize:(CGSize)imageViewSize {
//    
//    CGFloat origenWidth = imageViewSize.width;
//    CGFloat origenHeight = imageViewSize.height;
//    
//    CGSize tmpSize = image.size;
//    
//    CGFloat width = tmpSize.width;
//    CGFloat height = tmpSize.height;
//    
//    CGFloat scal = width / height;
//    CGFloat realHeight = 0;
//    CGFloat realWidth = 0;
//    
//    if (scal > 1) {
//        realWidth = origenWidth;
//        realHeight = realWidth / scal;
//    } else {
//        realHeight = origenHeight;
//        realWidth = realHeight * scal;
//        
//        if (realWidth > origenWidth) {//如果真实width > 原width
//            realWidth = origenWidth;
//            realHeight = realWidth * scal;
//        }
//    }
//    if (isnan(realWidth)) {
//        realWidth = ScreenWidth;
//    }
//    CGFloat X = (origenWidth - realWidth) == 0 ? 0 :(origenWidth - realWidth) / 2;
//
//    return CGRectMake(X,(origenHeight - realHeight) / 2, realWidth, realHeight);
//}
//
//+ (CGRect)changeImageSize:(CGRect)imageOrigenRect image:(UIImage *)image {//改变cell中 image size
//    
//    if (image == nil) {
//        return imageOrigenRect;
//    }
//    CGFloat origenX = imageOrigenRect.origin.x;
//    CGFloat origenY = imageOrigenRect.origin.y;
//    CGFloat origenWidth = imageOrigenRect.size.width;
//    CGFloat origenHeight = imageOrigenRect.size.height;
//    
//    CGSize tmpSize = image.size;//图片size
//    CGFloat width = tmpSize.width;
//    CGFloat height = tmpSize.height;
//    
//    CGFloat scal = width / height;
//    
//    CGFloat realHeight = 0;
//    CGFloat realWidth = 0;
//    
//    if (scal > 1) {
//        realWidth = origenWidth;
//        realHeight = realWidth / scal;
//        if (realHeight > origenHeight) {//如果真实height > 原height
//            realHeight = origenHeight;
//            realWidth = origenHeight * scal;
//        }
//    } else {
//        realHeight = origenHeight;
//        realWidth = realHeight * scal;
//        
//        if (realWidth > origenWidth) {//如果真实width > 原width
//            realWidth = origenWidth;
//            realHeight = realWidth * scal;
//        }
//    }
//    if (isnan(realWidth)) {
//        realWidth = origenWidth;
//    }
//    CGFloat X = (origenWidth - realWidth) == 0 ? origenX : origenX + ((origenWidth - realWidth) / 2);
//    
//    return CGRectMake(X,origenY, realWidth, realHeight);
//}
//
//
//@end


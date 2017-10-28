//
//  UIView+YMHAdditions.h
//  CoreFrame
//
//  Created by wangguangfeng on 15/10/18.
//  Copyright © 2015年 Beijing Yimay Holiday Information Science & Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YMHAdditions)

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;

@property (nonatomic, retain) UIColor *borderColor;

@property (nonatomic, readonly) UIViewController *viewController;

- (void)centerInSuperView;
- (void)aestheticCenterInSuperView;

- (UIImage *)imageForView;

//添加阴影 带弧度
- (void)addShadow;
//添加圆角
- (void)addCornerRadius:(CGFloat)radius;

/**
 添加圆角不添加边框
 
 @param values 圆角大小
 */
- (void)addCornerRadiusNoBorder:(CGFloat)values;

- (void)addShadowWithCorner:(CGFloat)radius ;
//添加阴影 带弧度
- (void)addShadowWithoutCorner;


/**
 常用灰色view 细条 30px

 @param rect CGRect
 @return UIView
 */
+ (UIView *)customCommonGrayView:(CGRect)rect;

/**
 常用灰色view 细线  1px
 
 @param rect CGRect
 @return UIView
 */
+ (UIView *)customCommonGrayLine:(CGRect)rect;



/**
 UIView 生成一张图片

 @param view view
 @return UIImage
 */
+ (UIImage*)imageFromView:(UIView*)view;

@end

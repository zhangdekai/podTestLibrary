//
//  UIView+YMHAdditions.m
//  CoreFrame
//
//  Created by wangguangfeng on 15/10/18.
//  Copyright © 2015年 Beijing Yimay Holiday Information Science & Technology Co.,Ltd. All rights reserved.
//

#import "UIView+YMHAdditions.h"
#import "UIColor+YMHCustoms.h"

@implementation UIView (YMHAdditions)


- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderWidth = 1;
    self.layer.borderColor = [borderColor CGColor];
}

- (void)centerInSuperView {
    if (self.superview) {
        CGFloat xPos = roundf((self.superview.frame.size.width - self.frame.size.width) / 2.f);
        CGFloat yPos = roundf((self.superview.frame.size.height - self.frame.size.height) / 2.f);
        [self setOrigin:CGPointMake(xPos, yPos)];
    }
}

- (void)aestheticCenterInSuperView {
    if (self.superview) {
        CGFloat xPos = roundf(([self.superview width] - [self width]) / 2.0);
        CGFloat yPos = roundf(([self.superview height] - [self height]) / 2.0) - ([self.superview height] / 8.0);
        [self setOrigin:CGPointMake(xPos, yPos)];
    }
}

- (void)makeMarginInSuperViewWithTopMargin:(CGFloat)topMargin leftMargin:(CGFloat)leftMargin rightMargin:(CGFloat)rightMargin andBottomMargin:(CGFloat)bottomMargin {
    if (self.superview) {
        CGRect r = self.superview.bounds;
        r.origin.x = leftMargin;
        r.origin.y = topMargin;
        r.size.width -= (leftMargin + rightMargin);
        r.size.height -= (topMargin + bottomMargin);
        [self setFrame:r];
    }
}

- (void)makeMarginInSuperViewWithTopMargin:(CGFloat)topMargin andSideMargin:(CGFloat)sideMargin {
    if (self.superview) {
        [self makeMarginInSuperViewWithTopMargin:topMargin leftMargin:sideMargin rightMargin:sideMargin andBottomMargin:topMargin];
    }
}

- (void)makeMarginInSuperView:(CGFloat)margin {
    if (self.superview) {
        [self makeMarginInSuperViewWithTopMargin:margin andSideMargin:margin];
    }
}

- (UIImage *)imageForView {
    CGSize size = self.frame.size;
    UIGraphicsBeginImageContext(size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (UIViewController *)viewController {
    for (UIView *next = self; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}


- (void)addShadow {
    self.layer.cornerRadius = 5;
    self.layer.borderWidth = 0.1;
    self.layer.borderColor = [UIColor generalSubTitleFontGrayColor].CGColor;
    
    
    [self.layer setShadowOffset:(CGSizeMake(0, 2))];
    [self.layer setShadowRadius:2];
    [self.layer setShadowOpacity:0.3];
    [self.layer setShadowColor:[UIColor viewShaowColor].CGColor];
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
}

- (void)addCornerRadius:(CGFloat)radius {
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = 0.6;
    self.layer.borderColor = [UIColor backgroundGrayColorC].CGColor;

}

- (void)addCornerRadiusNoBorder:(CGFloat)values
{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = values;
}



- (void)addShadowWithCorner:(CGFloat)radius {
    self.layer.cornerRadius = radius;
    self.layer.borderWidth = 0.1;
    self.layer.borderColor = [UIColor generalSubTitleFontGrayColor].CGColor;
    
    
    [self.layer setShadowOffset:(CGSizeMake(0, 2))];
    [self.layer setShadowRadius:radius];
    [self.layer setShadowOpacity:0.3];
    [self.layer setShadowColor:[UIColor viewShaowColor].CGColor];
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
}


- (void)addShadowWithoutCorner {

    self.layer.borderWidth = 0.1;
    self.layer.borderColor = [UIColor generalSubTitleFontGrayColor].CGColor;
    
    
    [self.layer setShadowOffset:(CGSizeMake(0, 2))];
    [self.layer setShadowRadius:2];
    [self.layer setShadowOpacity:0.3];
    [self.layer setShadowColor:[UIColor viewShaowColor].CGColor];
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;

}

+ (UIView *)customCommonGrayView:(CGRect)rect {
    UIView *line = [[UIView alloc]initWithFrame:rect];
    line.backgroundColor = [UIColor backgroundGrayColorA];
    return line;
}

+ (UIView *)customCommonGrayLine:(CGRect)rect {
    UIView *line = [[UIView alloc]initWithFrame:rect];
    line.backgroundColor = [UIColor seperateThinLineColor];
    return line;
}


+ (UIImage*)imageFromView:(UIView*)view {
    
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, YES, view.layer.contentsScale);
    
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;  
    
}






@end

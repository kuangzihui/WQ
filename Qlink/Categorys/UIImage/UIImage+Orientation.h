//
//  UIImage+Orientation.h
//  iOS-Categories (https://github.com/shaojiankui/iOS-Categories)
//
//  Created by Jakey on 15/1/4.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>
CGFloat DegreesToRadians(CGFloat degrees) {return degrees * M_PI / 180;};
CGFloat RadiansToDegrees(CGFloat radians) {return radians * 180/M_PI;};
@interface UIImage (Orientation)

+ (UIImage *)fixOrientation:(UIImage *)srcImg;
- (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)imageRotatedByRadians:(CGFloat)radians;

/*垂直翻转*/
- (UIImage *)flipVertical;
/*水平翻转*/
- (UIImage *)flipHorizontal;

@end

// UIImage+RoundedCorner.h
// Created by Trevor Harmon on 9/20/09.
// Free for personal or commercial use, with or without modification.
// No warranty is expressed or implied.

// Extends the UIImage class to support making rounded corners
#import <UIKit/UIKit.h>
@interface UIImage (RoundedCorner)
- (UIImage *)roundedCornerImage:(CGFloat)cornerSize borderSize:(CGFloat)borderSize;

- (UIImage *)imageWithCornerRadius:(CGFloat)radius;
//- (UIImage *)addBorderToSize:(CGSize)size lineWidth:(CGFloat)lineWidth;

@end

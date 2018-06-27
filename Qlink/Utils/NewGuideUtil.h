//
//  NewGuideUtil.h
//  Qlink
//
//  Created by Jelly Foo on 2018/6/26.
//  Copyright © 2018年 pan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewGuideUtil : NSObject

+ (UIView *)showNewGuideWithKey:(NSString *)key TapBlock:(void (^)(void))tapB;

@end

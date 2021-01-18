//
//  UIImage+ZJBundle.h
//  Demoz
//
//  Created by chenxi on 2021/1/18.
//  Copyright © 2021 zhangjin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ZJBundle)
+ (instancetype)zj_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass;
+ (instancetype)zj_imgWithName2:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END

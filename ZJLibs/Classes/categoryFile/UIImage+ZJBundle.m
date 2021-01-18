//
//  UIImage+ZJBundle.m
//  Demoz
//
//  Created by chenxi on 2021/1/18.
//  Copyright © 2021 zhangjin. All rights reserved.
//

#import "UIImage+ZJBundle.h"

@implementation UIImage (ZJBundle)
+ (instancetype)zj_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass {
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];
    NSString *imgName = [NSString stringWithFormat:@"%@.png", name];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundleName];
    NSString *path = [bundle pathForResource:imgName ofType:nil inDirectory:dir];
    return path?[UIImage imageWithContentsOfFile:path]:nil;

}
+ (instancetype)zj_imgWithName2:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass {
    
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];

    NSURL *url = [bundle URLForResource:bundleName withExtension:@"bundle"];
    NSBundle *targetBundle = [NSBundle bundleWithURL:url];
    UIImage *image = [UIImage imageNamed:name inBundle:targetBundle compatibleWithTraitCollection:nil];
    
    return image?image:[UIImage imageNamed:name inBundle:[NSBundle mainBundle] compatibleWithTraitCollection:nil];
}

@end

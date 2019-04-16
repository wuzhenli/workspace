//
//  UIImage+sell.m
//  SellLib
//
//  Created by li’Pro on 2019/4/16.
//  Copyright © 2019 JL. All rights reserved.
//

#import "UIImage+sell.h"

@implementation UIImage (sell)

+ (UIImage *)sl_imageWithName:(NSString *)name {
    NSString *pathStr = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"BookImage.bundle"];
    
    NSString *imgFilePath = [pathStr stringByAppendingPathComponent: name.pathExtension.length ? name : [NSString stringWithFormat:@"%@.png", name]];
    return [UIImage imageWithContentsOfFile:imgFilePath];
}


@end

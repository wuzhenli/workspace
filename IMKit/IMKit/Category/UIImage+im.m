//
//  UIImage+im.m
//  IMKit
//
//  Created by li’Pro on 2019/4/16.
//  Copyright © 2019 JL. All rights reserved.
//

#import "UIImage+im.h"

@implementation UIImage (im)


+ (UIImage *)im_imageWithName:(NSString *)name {
    NSString *pathStr = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"IMKitBundle.bundle"];
    NSString *imgFilePath = [pathStr stringByAppendingPathComponent: name.pathExtension.length ? name : [NSString stringWithFormat:@"%@.png", name]];
    return [UIImage imageWithContentsOfFile:imgFilePath];
}
@end

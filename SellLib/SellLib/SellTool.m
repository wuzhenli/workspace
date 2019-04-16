//
//  SellTool.m
//  SellLib
//
//  Created by li’Pro on 2019/4/16.
//  Copyright © 2019 JL. All rights reserved.
//

#import "SellTool.h"

@implementation SellTool

+ (NSString *)preSellBookName {
    return @"C++";
}

+ (UIImage *)sellBookImage {
    return [self imageWithName:@"six_live_ruf_scale"];
}


+ (UIImage *)imageWithName:(NSString *)imgName {
    NSString *pathStr = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"BookImage.bundle"];
    
    NSString *imgFilePath = [pathStr stringByAppendingPathComponent: imgName.pathExtension.length ? imgName : [NSString stringWithFormat:@"%@.png", imgName]];
    return [UIImage imageWithContentsOfFile:imgFilePath];
}

@end

//
//  IMEngine.m
//  IMKit
//
//  Created by li’Pro on 2019/4/16.
//  Copyright © 2019 JL. All rights reserved.
//

#import "IMEngine.h"
#import "UIImage+im.h"

@implementation IMEngine

+ (NSString *)engineName {
    return @"IMEngine name";
}

+ (UIImage *)engineShengYouImage {
    UIImage *img = [UIImage im_imageWithName:@"声优聊天区icon"];
    return img;
}

@end

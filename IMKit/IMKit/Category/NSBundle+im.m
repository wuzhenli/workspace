//
//  NSBundle+im.m
//  IMKit
//
//  Created by li’Pro on 2019/4/17.
//  Copyright © 2019 JL. All rights reserved.
//

#import "NSBundle+im.h"

@implementation NSBundle (im)

+ (UIView *)im_viewWithNibName:(NSString *)nibName {
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"IMKitBundle"withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
    // [tableView registerNib:@"CLpastCostsAddressCell"] bundle:bundle];
    
    
    return [[bundle loadNibNamed:nibName owner:nil options:nil] lastObject];
}

@end

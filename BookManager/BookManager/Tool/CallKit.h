//
//  CallKit.h
//  BookManager
//
//  Created by li’Pro on 2019/4/15.
//  Copyright © 2019 JL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CallKit : NSObject

+ (instancetype)shareCallKit ;

- (void)presentCallViewController:(UIViewController *)viewController ;

- (void)dismissCallViewController:(UIViewController *)viewController ;

@end

NS_ASSUME_NONNULL_END

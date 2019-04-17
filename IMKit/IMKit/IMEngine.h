//
//  IMEngine.h
//  IMKit
//
//  Created by li’Pro on 2019/4/16.
//  Copyright © 2019 JL. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IMChatView;

NS_ASSUME_NONNULL_BEGIN

@interface IMEngine : NSObject

+ (NSString *)engineName ;

+ (UIImage *)engineShengYouImage ;
+ (IMChatView *)getChatView ;

@end

NS_ASSUME_NONNULL_END

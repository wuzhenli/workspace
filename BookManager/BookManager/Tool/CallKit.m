//
//  CallKit.m
//  BookManager
//
//  Created by li’Pro on 2019/4/15.
//  Copyright © 2019 JL. All rights reserved.
//

#import "CallKit.h"


@interface CallKit ()

@property (strong, nonatomic) UIWindow *callWindow;

@end


@implementation CallKit

+ (instancetype)shareCallKit {
    static CallKit *_kit = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _kit = [CallKit new];
    });
    
    return _kit;
}


- (void)presentCallViewController:(UIViewController *)viewController {
    NSLog(@"\n************ present *************\n");
    NSLog(@"before keyWin:%@", [UIApplication sharedApplication].keyWindow);
    
    [[UIApplication sharedApplication].keyWindow endEditing:YES];
    
    UIWindow *callWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    callWindow.windowLevel = UIWindowLevelAlert;
    callWindow.rootViewController = viewController;
    [callWindow makeKeyAndVisible];
    NSLog(@"new keyWin:%@", callWindow);
    
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.3];
    animation.type = kCATransitionMoveIn;     //可更改为其他方式
    animation.subtype = kCATransitionFromTop; //可更改为其他方式
    [[callWindow layer] addAnimation:animation forKey:nil];
    
    self.callWindow = callWindow;
    NSLog(@"after keyWin:%@", [UIApplication sharedApplication].keyWindow);
    NSLog(@"------");
    NSLog(@"%@", [UIApplication sharedApplication].windows);
}

- (void)dismissCallViewController:(UIViewController *)viewController {
    NSLog(@"\n************ dismiss *************\n");
    
    if (nil == viewController) return;
    UIViewController *rootVC = viewController;
    while (rootVC.parentViewController) {
        rootVC = rootVC.parentViewController;
    }
    viewController = rootVC;
    
    if (self.callWindow.rootViewController == viewController) {
        [self.callWindow resignKeyWindow];
        self.callWindow.hidden = YES;
        id<UIApplicationDelegate> delegate = [UIApplication sharedApplication].delegate;
        [delegate.window makeKeyAndVisible];
        self.callWindow = nil;
    }
    
    [viewController dismissViewControllerAnimated:YES completion:nil];
    
    NSLog(@"after dismiss keyWin:%@", [UIApplication sharedApplication].keyWindow);
    NSLog(@"------");
    NSLog(@"%@", [UIApplication sharedApplication].windows);
}

@end

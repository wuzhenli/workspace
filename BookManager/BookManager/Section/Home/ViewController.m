//
//  ViewController.m
//  BookManager
//
//  Created by li’Pro on 2019/4/15.
//  Copyright © 2019 JL. All rights reserved.
//  https://www.jianshu.com/p/b6c59d8ed2c9
//  自动合并不同架构的 .a : https://www.jianshu.com/p/c796fcba1604

#import "ViewController.h"
//#import <BookObtain/BookObtain.h>
#import <BookObtain/BookObtain.h>
#import <SellLib/SellLib.h>
#import <IMKit/IMKit.h>

#import "CallingViewController.h"
#import "CallKit.h"



@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) UIButton *btnAdd;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblTitle.text = [BookObtain getBookName];
    self.lblTitle.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    self.imgView.image = [SellTool sellBookImage];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.imgView.image = [IMEngine engineShengYouImage];
    });
    
    NSLog(@"-----:%@", [IMEngine engineName]);
    
    IMChatView *chatView = [IMEngine getChatView];
    chatView.frame = CGRectMake(10, 300, 200, 50);
    [self.view addSubview:chatView];
    
    [self.view addSubview:self.btnAdd];
    self.btnAdd.frame = CGRectMake(10, 400, 100, 100);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    self.lblTitle.text = @"1112222 title";
    
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.25];
    animation.type = kCATransitionMoveIn;
    animation.subtype = kCATransitionFromTop;
    [self.lblTitle.layer addAnimation:animation forKey:nil];
    
    [self.view addSubview:self.lblTitle];
}

- (IBAction)btnCallingClicked:(id)sender {
    CallingViewController *vc = [CallingViewController new];
    [[CallKit shareCallKit] presentCallViewController:vc];
}

- (IBAction)btnShowWindowsClicked:(id)sender {
    NSLog(@"****** windows ******");
    NSLog(@"%@", [UIApplication sharedApplication].windows);
}

- (void)testAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    
    animation.additive;
}

- (void)btnAddClicked {
    self.lblTitle.text = @"btnAddCLicked1111";
}
- (void)injected {
    NSLog(@"%s", __func__);
}


#pragma -mark getter

- (UIButton *)btnAdd {
    if (!_btnAdd) {
        _btnAdd = [UIButton buttonWithType:UIButtonTypeContactAdd];
        [_btnAdd addTarget:self action:@selector(btnAddClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btnAdd;
}

@end

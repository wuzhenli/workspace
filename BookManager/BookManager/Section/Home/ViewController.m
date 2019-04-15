//
//  ViewController.m
//  BookManager
//
//  Created by li’Pro on 2019/4/15.
//  Copyright © 2019 JL. All rights reserved.
//  https://www.jianshu.com/p/b6c59d8ed2c9

#import "ViewController.h"
//#import <BookObtain/BookObtain.h>
#import <BookObtain/BookObtain.h>
#import "CallingViewController.h"
#import "CallKit.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblTitle.text = [BookObtain getBookName];
    self.lblTitle.backgroundColor = [UIColor groupTableViewBackgroundColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
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



@end
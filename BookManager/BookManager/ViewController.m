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


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblTitle.text = [BookObtain getBookName];
}


@end

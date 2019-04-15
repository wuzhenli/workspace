//
//  CallingViewController.m
//  BookManager
//
//  Created by li’Pro on 2019/4/15.
//  Copyright © 2019 JL. All rights reserved.
//

#import "CallingViewController.h"
#import "CallKit.h"


@interface CallingViewController ()

@end

@implementation CallingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
}


- (IBAction)btnHangUpClicked:(id)sender {
    [[CallKit shareCallKit] dismissCallViewController:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

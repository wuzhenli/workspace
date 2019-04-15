//
//  CallingViewController.m
//  BookManager
//
//  Created by li’Pro on 2019/4/15.
//  Copyright © 2019 JL. All rights reserved.
//

#import "CallingViewController.h"
#import "CallKit.h"
#import <AVFoundation/AVFoundation.h>


@interface CallingViewController ()

@end

@implementation CallingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [[UIDevice currentDevice] setProximityMonitoringEnabled:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(sensorStateChangeNotification:) 
                                                 name:UIDeviceProximityStateDidChangeNotification 
                                               object:nil];
}

#pragma -mark event & response

- (IBAction)btnHangUpClicked:(id)sender {
    [[CallKit shareCallKit] dismissCallViewController:self];
    [[UIDevice currentDevice] setProximityMonitoringEnabled:NO];
}

- (void)sensorStateChangeNotification:(NSNotification *)notification {
    NSLog(@"sensorState:%d", [UIDevice currentDevice].proximityState);
    
    if ([UIDevice currentDevice].proximityState) {
        [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    } else {
        [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
    }
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

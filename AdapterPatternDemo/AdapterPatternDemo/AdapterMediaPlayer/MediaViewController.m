//
//  MediaViewController.m
//  AdapterPatternDemo
//
//  Created by rockonterol on 2019/3/4.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "MediaViewController.h"
#import "AudioPlayer.h"
#import "MultiAudioPlayer.h"
#import "ObjMultiAudioPlayerAdapter.h"
#import "ClassMultiAudioPlayerAdapter.h"

@interface MediaViewController ()

@end

@implementation MediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSInteger type = 1;
    
    id<AudioPlayProtocol> player = nil;
    
    switch (type) {
        case 1:
            player = [[AudioPlayer alloc] init];
            break;
        case 2:
            player = [[ObjMultiAudioPlayerAdapter alloc] init];
            break;
        case 3:
            player = [[ClassMultiAudioPlayerAdapter alloc] init];
            break;

        default:
            break;
    }
    
    [player playAudio];
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

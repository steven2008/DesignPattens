//
//  VideoPlayerViewController.m
//  AdapterPatternDemo
//
//  Created by rockonterol on 2019/3/4.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "VideoPlayerViewController.h"
#import "VideoPlayer.h"
#import "IJKMediaPlayerObjAdapter.h"
#import "IJKMediaPlayerClassAdapter.h"

@interface VideoPlayerViewController ()

@end

@implementation VideoPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    id<VideoPlayerProtocol> videoPlayer = nil;
    NSInteger type = 1;
    if (1 == type)
    {
        //原播放器
        videoPlayer = [[VideoPlayer alloc] init];
        
    }else if (2 == type)
    {
        //对象适配器的播放器
        videoPlayer = [[IJKMediaPlayerObjAdapter alloc] init];
        
    }else if (3 == type)
    {
        //类适配器的播放器
        videoPlayer = [[IJKMediaPlayerClassAdapter alloc] init];
    }
    
    [videoPlayer playVideo];
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

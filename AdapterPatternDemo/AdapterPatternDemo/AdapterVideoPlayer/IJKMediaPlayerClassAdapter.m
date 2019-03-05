//
//  IJKMediaPlayerClassAdapter.m
//  AdapterPatternDemo
//
//  类适配模式
//

#import "IJKMediaPlayerClassAdapter.h"

@implementation IJKMediaPlayerClassAdapter

- (void)preparePlayVideo
{
    [self IJKMediaPreaparePlay];
}

- (void)playVideo
{
    [self IJKMediaPlay];
}

- (void)pauseVideo
{
    [self IJKMediaPause];
}

- (void)stopVideo
{
    [self IJKMediaStop];
}

@end

//
//  IJKMediaPlayerObjAdapter.m
//  AdapterPatternDemo
//
//  对象适配器
//

#import "IJKMediaPlayerObjAdapter.h"

@implementation IJKMediaPlayerObjAdapter

- (void)preparePlayVideo
{
    [self.mediaPlayer IJKMediaPreaparePlay];
}

- (void)playVideo
{
    [self.mediaPlayer IJKMediaPlay];
}

- (void)pauseVideo
{
    [self.mediaPlayer IJKMediaPause];
}

- (void)stopVideo
{
    [self.mediaPlayer IJKMediaStop];
}

@end

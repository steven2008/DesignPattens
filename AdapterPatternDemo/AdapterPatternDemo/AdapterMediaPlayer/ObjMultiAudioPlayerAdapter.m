//
//  MultiAudioPlayerAdapter.m
//  AdapterPatternDemo
//
//  播放vlc和mp4的类适配器
//

#import "ObjMultiAudioPlayerAdapter.h"
#import "VLCAudioPlayer.h"
#import "Mp4AudioPlayer.h"

@implementation ObjMultiAudioPlayerAdapter

- (instancetype)initAudioPlayer:(MultiAudioPlayer *)player type:(NSInteger)type
{
    self = [super init];
    if (self) {
        _player = player;
        _type = type;
    }
    
    return self;
}
- (void)playAudio
{
    switch (self.type) {
        case 1:
            [self.player playMp4Audio];
            break;
        case 2:
            [self.player playVlcAudio];
            break;
        default:
            break;
    }
    
}

@end

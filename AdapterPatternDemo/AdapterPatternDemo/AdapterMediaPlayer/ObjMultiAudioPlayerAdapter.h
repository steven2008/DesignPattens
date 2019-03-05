//
//  MultiAudioPlayerAdapter.h
//  AdapterPatternDemo
//
//  播放vlc和mp4的类适配器
//

#import <Foundation/Foundation.h>
#import "AudioPlayProtocol.h"
#import "MultiAudioPlayer.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObjMultiAudioPlayerAdapter : NSObject<AudioPlayProtocol>

- (instancetype)initAudioPlayer:(MultiAudioPlayer *)player type:(NSInteger)type;

@property (nonatomic, strong) MultiAudioPlayer *player;
@property (nonatomic, assign) NSInteger type;

@end

NS_ASSUME_NONNULL_END

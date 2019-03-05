//
//  AudioPlayer.h
//  AdapterPatternDemo
//
//  播放mp3的播放器
//

#import <Foundation/Foundation.h>
#import "AudioPlayProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AudioPlayer : NSObject<AudioPlayProtocol>

@end

NS_ASSUME_NONNULL_END

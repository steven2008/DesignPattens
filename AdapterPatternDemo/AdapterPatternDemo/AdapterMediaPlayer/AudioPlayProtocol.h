//
//  AudioPlayProtocol.h
//  AdapterPatternDemo
//
//  播放mp3的音频播放器接口
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AudioPlayProtocol <NSObject>

- (void)playAudio;

@end

NS_ASSUME_NONNULL_END

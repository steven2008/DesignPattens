//
//  ClassAdapter.h
//  AdapterPatternDemo
//
//  类适配模式
//

#import <Foundation/Foundation.h>
#import "IJKMediaPlayer.h"
#import "VideoPlayerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IJKMediaPlayerClassAdapter :IJKMediaPlayer<VideoPlayerProtocol>

@end

NS_ASSUME_NONNULL_END

//
//  IJKMediaPlayerObjAdapter.h
//  AdapterPatternDemo
//
//  对象适配器
//

#import <Foundation/Foundation.h>
#import "VideoPlayerProtocol.h"
#import "IJKMediaPlayer.h"

NS_ASSUME_NONNULL_BEGIN

@interface IJKMediaPlayerObjAdapter : NSObject<VideoPlayerProtocol>

@property (nonatomic, strong) IJKMediaPlayer *mediaPlayer;

@end

NS_ASSUME_NONNULL_END

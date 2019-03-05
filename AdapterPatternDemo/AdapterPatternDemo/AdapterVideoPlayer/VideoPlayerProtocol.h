//
//  VideoPlayerProtocol.h
//  AdapterPatternDemo
//
//  原先播放器接口
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VideoPlayerProtocol <NSObject>

- (void)preparePlayVideo;
- (void)playVideo;
- (void)pauseVideo;
- (void)stopVideo;

@end

NS_ASSUME_NONNULL_END

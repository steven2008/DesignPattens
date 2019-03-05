//
//  IJKMediaPlayer.h
//  AdapterPatternDemo
//
//  新增播放器，被适配者
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IJKMediaPlayer : NSObject

- (void)IJKMediaPreaparePlay;
- (void)IJKMediaPlay;
- (void)IJKMediaStop;
- (void)IJKMediaPause;

@end

NS_ASSUME_NONNULL_END

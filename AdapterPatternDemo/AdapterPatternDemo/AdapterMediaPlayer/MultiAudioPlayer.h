//
//  MultiAudioPlayer.h
//  AdapterPatternDemo
//
//  Created by rockonterol on 2019/3/4.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MultiAudioPlayer : NSObject

- (void)playMp4Audio;
- (void)playVlcAudio;

@end

NS_ASSUME_NONNULL_END

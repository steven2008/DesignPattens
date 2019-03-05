//
//  ClassMultiAudioPlayerAdapter.h
//  AdapterPatternDemo
//
//  Created by rockonterol on 2019/3/4.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "MultiAudioPlayer.h"
#import "AudioPlayProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClassMultiAudioPlayerAdapter : MultiAudioPlayer<AudioPlayProtocol>

@property (nonatomic, assign) NSInteger type;

@end

NS_ASSUME_NONNULL_END

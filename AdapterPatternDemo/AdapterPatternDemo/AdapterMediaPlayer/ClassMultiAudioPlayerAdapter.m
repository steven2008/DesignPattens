//
//  ClassMultiAudioPlayerAdapter.m
//  AdapterPatternDemo
//
//  Created by rockonterol on 2019/3/4.
//  Copyright © 2019 rockonterol. All rights reserved.
//

#import "ClassMultiAudioPlayerAdapter.h"

@implementation ClassMultiAudioPlayerAdapter

- (void)playAudio
{
    switch (self.type) {
        case 1:
            [self playMp4Audio];
            break;
        case 2:
            [self playVlcAudio];
            break;
        default:
            break;
    }
    
}


@end

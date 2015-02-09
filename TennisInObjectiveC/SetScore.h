//
//  SetScore.h
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Score.h"
@class TieBreakerScore;

@interface SetScore : Score
@property (nonatomic) TieBreakerScore *tieScore;
-(void) addTieScore: (TieBreakerScore *) score;
-(BOOL) shouldPlayATieBreaker;
@end

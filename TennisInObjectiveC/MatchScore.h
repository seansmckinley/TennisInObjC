//
//  MatchScore.h
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Score.h"

@interface MatchScore : Score
    
@property (nonatomic) NSMutableArray *SetScores;
@property (nonatomic) int setNumber;

@end

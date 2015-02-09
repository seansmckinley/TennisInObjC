//
//  TieBreaker.h
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//
#import "Competition.h"

@interface TieBreaker : Competition
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
@end

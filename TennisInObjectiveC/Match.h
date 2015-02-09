//
//  Match.h
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/8/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//
#import "Competition.h"

@interface Match : Competition

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
-(Score *) play: (Player *) player;

@end

//
//  Set.h
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Competition.h"


@interface Set : Competition

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2;
-(Score *) play: (Player *) player;

@end

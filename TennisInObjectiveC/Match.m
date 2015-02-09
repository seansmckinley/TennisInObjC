//
//  Match.m
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/8/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Match.h"
#import "Player.h"
#import "MatchScore.h"
#import "Set.h"

@implementation Match
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}
-(Score *) play:(Player *)player
{
    Score *mScore = [[MatchScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    while( ! [mScore haveAWinner] ) {
        Set  *set = [[Set alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        Score *ss = [set play: player];
        player = [Player otherPlayer:player];
        [mScore addScore:[ss getWinner]];
        ss= nil;
    }
    return mScore;
}

@end

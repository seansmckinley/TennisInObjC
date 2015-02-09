//
//  TieBreaker.m
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//
#import "Score.h"
#import "TieBreaker.h"
#import "PointScore.h"
#import "TieBreakerScore.h"

@implementation TieBreaker
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}
-(Score *) play:(Player *)player
{
    Score *tieScore = [[TieBreakerScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    int tie = 0;
    while( ! [tieScore haveAWinner] ) {
        PointScore *pScore =  (PointScore *)[player serveAPoint];
        [ tieScore addScore:[pScore getWinner] ];
        if (tie%2 == 1){
            player = [Player otherPlayer:player];
        }
        tie++;
        pScore = nil;
    }
    return tieScore;
}

@end

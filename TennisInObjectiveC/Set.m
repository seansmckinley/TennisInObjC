//
//  Set.m
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import "Set.h"
#import "SetScore.h"
#import "GameScore.h"
#import "Game.h"
#import "TieBreakerScore.h"
#import "TieBreaker.h"

@implementation Set

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer:(Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1 secondPlayer:p2] ) == nil )
        return nil;
    return self;
}

-(Score *) play:(Player *)player
{
    Score *set_score = [[SetScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
    Score *gS = [[GameScore alloc] initWithFirstPlayer:self.player1 secondPlayer: self.player2];
    
    while( ! [set_score haveAWinner] ) {
        Game *game = [[Game alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
        gS = [game play:player];
        [set_score addScore:[gS getWinner]];
        player = [Player otherPlayer:player];
        if(![set_score haveAWinner])
        {
            Score *tScore = [[TieBreakerScore alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
            TieBreaker *tb = [[TieBreaker alloc] initWithFirstPlayer:self.player1 secondPlayer:self.player2];
            player = [gS getWinner];
            tScore = [tb play:player];
            [(SetScore*)set_score addTieScore: (TieBreakerScore *)(tScore) ];
            break;
            
        }
    }
    return set_score;
    
    
}
@end

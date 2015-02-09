//
//  TieBreakerScore.m
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//
#import "TieBreakerScore.h"

@implementation TieBreakerScore
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1  secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}
-(BOOL) haveAWinner
{
    return (self.player1Score == 7 || self.player2Score == 7) && abs(self.player1Score-self.player2Score)>=2;
}

-(NSString *) description
{
    NSLog(@"TieBreakerScore... printing begins.");
    NSLog(@"p1 score = %d", self.player1Score);
    NSLog(@"p2 score = %d", self.player2Score);
    NSLog(@"TieBreakerScore... printing ends.");
    
    return [NSString stringWithFormat:@"\n\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score ];
    
}

@end


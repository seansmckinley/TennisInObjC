//
//  MatchScore.m
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MatchScore.h"
#import "Player.h"


@implementation MatchScore

-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1  secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}
-(void) addScore: (Score *) score
{
    
}
-(BOOL) haveAWinner
{
    return (self.player1Score == 3 || self.player2Score == 3);
}

-(NSString *) description
{
    NSLog(@"MatchScore... printing begins.");
    NSLog(@"p1 score = %d", self.player1Score);
    NSLog(@"p2 score = %d", self.player2Score);
    NSLog(@"MatchScore... printing ends.");
    
    return [NSString stringWithFormat:@"\n\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score ];
    
}
@end
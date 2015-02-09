//
//  SetScore.m
//  TennisInObjectiveC
//
//  Created by Sean McKinley on 2/7/15.
//  Copyright (c) 2015 Ali Kooshesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SetScore.h"
#import "Score.h"
#import "TieBreakerScore.h"


@implementation SetScore
-(instancetype) initWithFirstPlayer: (Player *) p1 secondPlayer: (Player *) p2
{
    if( (self = [super initWithFirstPlayer:p1  secondPlayer:p2   ]) == nil)
        return nil;
    return self;
}
-(BOOL) shouldPlayATieBreaker
{
    return (self.player1Score == 6 && self.player2Score == 6) ;
}
-(void) addTieScore: (TieBreakerScore *) score
{
    [self addScore:[score getWinner]];
    _tieScore = score;
}

-(BOOL) haveAWinner
{
      return (self.player1Score >= 6 || self.player2Score >= 6) && abs( self.player1Score - self.player2Score) >= 2;
}

-(NSString *) description
{
    NSLog(@"p1 score = %d", self.player1Score);
    NSLog(@"p2 score = %d", self.player2Score);
    
    return [NSString stringWithFormat:@"\n\nplayer1 score = %d\nplayer2 score = %d\n\n", self.player1Score, self.player2Score ];
    

}
@end
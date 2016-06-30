//
//  GameController.h
//  LHL-June.Threelow
//
//  Created by Asuka Nakagawa on 2016-06-29.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

// Controller
@interface GameController : NSObject

@property (nonatomic) NSMutableArray *diceArray;

// store all the held dice
@property (nonatomic) NSMutableSet *heldDice;

- (void)holdDie:(int)dieNumber;

- (void)showAllDie;

- (void)resetDice;

- (int)currentScore;

@end

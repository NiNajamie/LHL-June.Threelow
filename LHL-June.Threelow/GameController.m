//
//  GameController.m
//  LHL-June.Threelow
//
//  Created by Asuka Nakagawa on 2016-06-29.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init {
    self = [super init];
    if (self) {
        
        // create 5 instances of Dice
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        
        _diceArray = [NSMutableArray arrayWithArray:@[dice1, dice2, dice3, dice4, dice5]];
        _heldDice = [NSMutableSet set];

    }
    return self;
}

- (void)holdDie:(int)dieNumber {
    
    Dice *aDie = [self.diceArray objectAtIndex:dieNumber];
    
    if ([self.heldDice containsObject:aDie]) {
        [self.heldDice removeObject:aDie];
        NSLog(@"Un-hold Dice number is: %d", aDie.value);
        
    } else {
        // Access to print-out the number with [] that means 'held'
        // adding die to heldDiceArray
        [self.heldDice addObject:aDie];
        NSLog(@"Hold Dice number is: [%d]", aDie.value);
    }
}

// show all the diceValue
- (void)showAllDie {
    for (Dice *dice1 in self.diceArray) {
        if ([self.heldDice containsObject:dice1]) {
            NSLog(@"The current value of dice: %d", dice1.value);
        }
        else {
            NSLog(@"The value of dice: %d", dice1.value);
        }
    }
}

-(void)resetDice {
    [self.heldDice removeAllObjects];
    NSLog(@"All die reset!");
}

// adding score
- (int)currentScore {
    
    int total = 0;
    for (Dice *score in self.heldDice) {
        total = total + score.value;
    }
    return total;
}


@end

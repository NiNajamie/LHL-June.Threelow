//
//  main.m
//  LHL-June.Threelow
//
//  Created by Asuka Nakagawa on 2016-06-29.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      
      NSLog(@"-- Threelow --");
      
      // create 5 dice for starting game
      GameController *controller = [[GameController alloc] init];
      
      // create heldDice array
      NSMutableSet *heldDiceArray = [[NSMutableSet alloc] init];
      
      while(YES) {
          // allow user to 'roll' (re/start menu)
          NSString *start = [[Dice alloc] inputForPrompt:@"MENU: Type 'roll' - Roll dice, 'hold' - Hold a dice >_"];

          if ([start isEqualToString:@"roll"]) {
              
              // randomize all 5 die
              for (int i = 0; i <[controller.diceArray count]; i++) {
//                  [[controller.diceArray objectAtIndex:i] randomizeValue];
                  Dice *dice = [controller.diceArray objectAtIndex:i];
                  [dice randomizeValue];
              }
              
              // Log all the diceValue
              [controller showAllDie];
              
              
              // randomize their values and print them.
//              NSArray *diceArray = @[dice1, dice2, dice3, dice4, dice5];
              
//              NSLog(@"%d, %d, %d, %d, %d", dice1.value, dice2.value, dice3.value, dice4.value, dice5.value);
          }
          else if ([start isEqualToString:@"hold"]) {
              NSString *holdString = [[Dice alloc] inputForPrompt:@"Which dice? >_"];
              
              // casting holdString into int
              int dieNumber = [holdString intValue];
              [controller holdDie:dieNumber];
          }
      }
  }
    return 0;
}

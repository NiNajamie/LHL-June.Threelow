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
      
      while(YES) {
          // allow user to 'roll' (re/start menu)
          NSString *start = [[Dice alloc] inputForPrompt:@"MENU: Type 'roll' - Roll dice, 'hold' - Hold a dice, 'reset' - Reset all the hold die >_"];

          if ([start isEqualToString:@"roll"]) {
              
              // randomize all 5 die
              for (int i = 0; i <[controller.diceArray count]; i++) {

                  Dice *dice = [controller.diceArray objectAtIndex:i];
                  [dice randomizeValue];
              }
              
              // Log all the diceValue
              [controller showAllDie];
              NSLog(@"currentScore: %d", [controller currentScore]);
          }
          else if ([start isEqualToString:@"hold"]) {
              NSString *holdString = [[Dice alloc] inputForPrompt:@"Which dice(0-4)? >_"];
              
              // casting holdString into int
              int dieNumber = [holdString intValue];
              [controller holdDie:dieNumber];
          }
          else if ([start isEqualToString:@"reset"]) {
              [controller resetDice];
          }
      }
  }
    return 0;
}

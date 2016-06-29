//
//  Dice.m
//  LHL-June.Threelow
//
//  Created by Asuka Nakagawa on 2016-06-29.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // initialize currentValue = randomizedValue
        [self randomizeValue];
    }
    return self;
}

// dice value is 1 to 6
- (void)randomizeValue {
    self.value = arc4random_uniform(6) + 1;
}

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    // display the promptSting
    char inputChars[10];
    NSLog(@"%@", promptString);
    fgets(inputChars, 10, stdin);

    return [[NSString stringWithUTF8String:inputChars] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}

@end

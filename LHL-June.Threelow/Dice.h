//
//  Dice.h
//  LHL-June.Threelow
//
//  Created by Asuka Nakagawa on 2016-06-29.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

// Data model
@interface Dice : NSObject

@property (nonatomic) int value;

- (void)randomizeValue;

- (NSString *)inputForPrompt:(NSString *)promptString;

@end

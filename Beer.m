//
//  Beer.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Beer.h"

@implementation Beer

- (void)printBeerInfo {
    NSLog([NSString stringWithFormat:@"name: %@, color: %@, alcohol: %d", name, color, grade]);
}

- (void)printBeerInfoWithHeader:(NSString *)header {
    NSLog(@"%@", header);
    [self printBeerInfo];
}

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer {
    [self printBeerInfoWithHeader:header];
    NSLog(@"%@", footer);
}

- (void)printBeerInfoWithHeader:(NSString *)header andFooter:(NSString *)footer andNumberWithEmojis:(NSUInteger)numberOfEmojis {
    
}

@end

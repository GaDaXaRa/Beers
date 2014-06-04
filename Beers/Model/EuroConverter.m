//
//  EuroConverter.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverter.h"

@implementation EuroConverter

static float CHANGE_RATIO = 166.386;

+ (int)convertFromEuroToPeseta:(float)euros {
    return (CHANGE_RATIO * euros);
}

+ (float)convertFromPesetaToEuro:(int)pesetas {
    return (pesetas / CHANGE_RATIO);
}

- (float)convertToEuro {
    return [EuroConverter convertFromPesetaToEuro:self.money];
}

- (int)convertToPeseta {
    return [EuroConverter convertFromEuroToPeseta:self.money];
}

@end

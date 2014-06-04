//
//  BeerList.h
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beer.h"

@interface BeerList : NSObject

- (id)initWithBeerArray:(NSArray *)beerArray;

- (void)addBeer:(Beer *)beer;

- (NSUInteger)count;

@end

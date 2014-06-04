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

#pragma mark - Initializers

- (id)initWithBeerArray:(NSArray *)beerArray;

#pragma mark - Instance Methods

- (void)addBeer:(Beer *)beer;

- (NSUInteger)count;

- (void)removeBeer:(Beer *)beer;

- (NSArray *)allBeers;

@end
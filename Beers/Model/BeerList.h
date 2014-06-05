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

@property(nonatomic) NSUInteger count;

#pragma mark - Initializers

- (id)initWithBeerArray:(NSArray *)beerArray;

- (id)initWithFile:(NSString *)fileName;

#pragma mark - Instance Methods

- (void)addBeer:(Beer *)beer;

- (NSUInteger)count;

- (void)removeBeer:(Beer *)beer;

- (NSArray *)allBeers;

@end
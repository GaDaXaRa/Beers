//
//  BeerList.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerList.h"

@interface BeerList ()

@property(nonatomic, strong) NSMutableArray *beerList;

@end

@implementation BeerList

#pragma mark - Initializers

- (instancetype)init
{
    return [self initWithBeerArray:@[]];
}

//Designated initializer
- (id)initWithBeerArray:(NSArray *)beerArray  {
    self = [super init];
    if (self) {
        _beerList = [[NSMutableArray alloc] initWithArray:beerArray];
    }
    return self;
}

#pragma mark - Instance Methods

- (void)addBeer:(Beer *)beer {
    [self.beerList addObject:beer];
}

- (void)removeBeer:(Beer *)beer {
    [self.beerList removeObject:beer];
}

- (NSUInteger)count {
    return [self.beerList count];
}

- (NSArray *)allBeers {
    return self.beerList;
}

@end
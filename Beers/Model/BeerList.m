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

- (void)addBeer:(Beer *)beer {
    [self.beerList addObject:beer];
}

- (NSUInteger)count {
    return [self.beerList count];
}

@end

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

- (id)initWithFile:(NSString *)fileName {
    NSString *fileNameAndPath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
    NSArray *arrayFromFile = [NSArray arrayWithContentsOfFile:fileNameAndPath];
    
    NSMutableArray *beersArrayFromFile = [[NSMutableArray alloc] init];
    for (NSDictionary *dictionary in arrayFromFile) {
        Beer *beer = [[Beer alloc] init];
        
        beer.name = dictionary[@"name"];
        beer.grade = [dictionary[@"grade"] integerValue];
        beer.color = dictionary[@"color"];
        beer.country = dictionary[@"country"];
        
        [beersArrayFromFile addObject:beer];
    }
    
    return [self initWithBeerArray:beersArrayFromFile];
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
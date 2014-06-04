//
//  BeerListTest.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "Beer.h"

@interface BeerListTest : XCTestCase

@end

@implementation BeerListTest

- (void)testCanCreateBeerList{
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssertNotNil(beerList, @"OMG 💀");
    XCTAssertEqual(0, [beerList count], @"");
}

- (void)testCanCreateBeerListWithBeerArray{
    Beer *mahou = [[Beer alloc] init];
    Beer *cruzcampo = [[Beer alloc] init];
    NSArray *beerArray = [NSArray arrayWithObjects:mahou, cruzcampo, nil];
    BeerList *beerList = [[BeerList alloc] initWithBeerArray:beerArray];
    
    XCTAssertNotNil(beerList, @"OMG 💀");
    XCTAssertEqual(2, [beerList count], @"");
}

- (void)testCanAddABeerToList {
    Beer *mahou = [[Beer alloc] init];
    BeerList *beerList = [[BeerList alloc] init];
    
    [beerList addBeer:mahou];
    XCTAssertNotNil(beerList, @"OMG 💀");
    XCTAssertEqual(1, [beerList count], @"");
}

@end

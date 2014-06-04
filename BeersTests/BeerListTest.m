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

- (void)testCanCreateBeerList {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssertNotNil(beerList, @"OMG 💀");
    XCTAssertEqual(0, [beerList count], @"");
}

- (void)testCanCreateBeerListKVC {
    BeerList *beerList = [[BeerList alloc] init];
    
    XCTAssertNotNil(beerList, @"OMG 💀");
    XCTAssertEqual(0, [[beerList valueForKey:@"count"] integerValue], @"");
}

- (void)testCanCreateBeerListWithBeerArray{
    Beer *mahou = [[Beer alloc] init];
    Beer *cruzcampo = [[Beer alloc] init];
    NSArray *beerArray = [NSArray arrayWithObjects:mahou, cruzcampo, nil];
    BeerList *beerList = [[BeerList alloc] initWithBeerArray:beerArray];
    
    XCTAssertEqual(2, [beerList count], @"");
}

- (void)testCanCreateBeerListWithBeerArrayKVC {
    Beer *mahou = [[Beer alloc] init];
    Beer *cruzcampo = [[Beer alloc] init];
    NSArray *beerArray = [NSArray arrayWithObjects:mahou, cruzcampo, nil];
    BeerList *beerList = [[BeerList alloc] initWithBeerArray:beerArray];
    
    XCTAssertEqual(2, [[beerList valueForKey:@"count"] integerValue], @"");
}

- (void)testCanAddABeerToList {
    Beer *mahou = [[Beer alloc] init];
    BeerList *beerList = [[BeerList alloc] init];
    
    [beerList addBeer:mahou];
    XCTAssertEqual(1, [beerList count], @"");
}

- (void)testCanAddABeerToListKVC {
    Beer *mahou = [[Beer alloc] init];
    BeerList *beerList = [[BeerList alloc] init];
    
    [beerList addBeer:mahou];
    XCTAssertEqual(1, [[beerList valueForKey:@"count"] integerValue], @"");
}

- (void)testCanRemoveABeerFromList {
    BeerList *beerList = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    
    [beerList addBeer:mahou];
    XCTAssertEqual(1, beerList.count, @"Expected %i, found %lu", 1, (unsigned long)beerList.count);
    
    [beerList removeBeer:mahou];
    XCTAssertEqual(0, beerList.count, @"Expected %i, found %lu", 0, (unsigned long)beerList.count);
}

- (void)testCanRemoveABeerFromListKVC {
    BeerList *beerList = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    
    [beerList addBeer:mahou];
    XCTAssertEqual(1, [[beerList valueForKey:@"count"] integerValue], @"Expected %i, found %lu", 1, (unsigned long)beerList.count);
    
    [beerList removeBeer:mahou];
    XCTAssertEqual(0, [[beerList valueForKey:@"count"] integerValue], @"Expected %i, found %lu", 0, (unsigned long)beerList.count);
}

- (void)testCanReturnAllBeers {
    int beersCount = 100;
    BeerList *beerList = [[BeerList alloc] init];
    
    for (int i = 0; i < beersCount; i++) {
        Beer *beer = [[Beer alloc] init];
        beer.name = [NSString stringWithFormat:@"%i", i];
        [beerList addBeer:beer];
    }
    
    [[beerList allBeers]enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Beer *beer = (Beer *)obj;
        NSString *formattedIndex = [NSString stringWithFormat:@"%lu", (unsigned long)idx];
        XCTAssertEqualObjects(beer.name, formattedIndex, @"Expected %@, found %@", beer.name, formattedIndex);
        
        *stop = idx > 50;
        NSLog(@"%lu", (unsigned long)idx);
    }];
}

- (void)testCanReturnAllBeersKVC {
    int beersCount = 100;
    BeerList *beerList = [[BeerList alloc] init];
    
    for (int i = 0; i < beersCount; i++) {
        Beer *beer = [[Beer alloc] init];
        [beer setValue:[NSString stringWithFormat:@"%i", i] forKey:@"name"];
        [beerList addBeer:beer];
    }
    
    [[beerList allBeers]enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Beer *beer = (Beer *)obj;
        NSString *formattedIndex = [NSString stringWithFormat:@"%lu", (unsigned long)idx];
        XCTAssertEqualObjects([beer valueForKey:@"name"], formattedIndex, @"Expected %@, found %@", [beer valueForKey:@"name"], formattedIndex);
        
        *stop = idx > 50;
        NSLog(@"%lu", (unsigned long)idx);
    }];
}

- (void)testCanCountBeers {
    int beersCount = 1000;
    BeerList *beerList = [[BeerList alloc] init];
    
    for (int i = 0; i < beersCount; i++) {
        Beer *beer = [[Beer alloc] init];
        [beerList addBeer:beer];
    }
    
    XCTAssertEqual(beersCount, beerList.count, @"Expected %i, found %lu", beersCount, (unsigned long)beerList.count);
}

- (void)testCanCountBeersKVC {
    int beersCount = 1000;
    BeerList *beerList = [[BeerList alloc] init];
    
    for (int i = 0; i < beersCount; i++) {
        Beer *beer = [[Beer alloc] init];
        [beerList addBeer:beer];
    }
    
    XCTAssertEqual(beersCount, [[beerList valueForKey:@"count"] integerValue], @"Expected %i, found %lu", beersCount, (unsigned long)[[beerList valueForKey:@"count"] integerValue]);
}

- (void)testCantChangeCountOfBeers {
    BeerList *beerList = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    
    [beerList addBeer:mahou];
    beerList.count = 45;
    
    XCTAssertEqual(1, beerList.count, @"Expected %i, found %lu", 1, (unsigned long)beerList.count);
}

- (void)testCantChangeCountOfBeersKVC {
    BeerList *beerList = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    
    [beerList addBeer:mahou];
    [beerList setValue:@45 forKey:@"count"];
    
    XCTAssertEqual(1, [[beerList valueForKey:@"count"] integerValue], @"Expected %i, found %lu", 1, (unsigned long)[[beerList valueForKey:@"count"] integerValue]);
}

@end

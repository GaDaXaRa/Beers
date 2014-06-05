//
//  HotelTests.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hotel.h"
#import "Person.h"

@interface HotelTests : XCTestCase

@end

@implementation HotelTests

- (void)testCanAddPerson {
    NSString *roomName = @"Yeah";
    Person *person = [[Person alloc] init];
    Hotel *hotel = [[Hotel alloc] init];
    
    [hotel addPerson:person ToRoom:roomName];
    
    XCTAssertEqualObjects(person, [hotel whoSleepsAtRoom:roomName], @"");
}

- (void)testCanReturnAllRooms {
    NSString *roomName = @"Yeah";
    Person *person = [[Person alloc] init];
    Hotel *hotel = [[Hotel alloc] init];
    
    [hotel addPerson:person ToRoom:roomName];
    
    XCTAssertEqualObjects(roomName, [[hotel allRooms] firstObject], @"");
}

- (void)testCanReturnNumberOfOccupiesRooms {
    NSString *roomName = @"Yeah";
    Person *person = [[Person alloc] init];
    Hotel *hotel = [[Hotel alloc] init];
    
    [hotel addPerson:person ToRoom:roomName];
    
    XCTAssertEqual(1, [hotel numberOfOccupiedRooms], @"");
}

@end

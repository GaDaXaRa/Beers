//
//  Hotel.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Hotel.h"

@interface Hotel ()

@property(nonatomic, strong) NSMutableDictionary *rooms;

@end

@implementation Hotel

- (NSMutableDictionary *) rooms {
    if (_rooms == nil) {
        _rooms = [[NSMutableDictionary alloc] init];
    }
    
    return  _rooms;
}

- (void)addPerson:(Person *)person ToRoom:(NSString *)room {
    [self.rooms setObject:person forKey:room];
}

- (NSArray *)allRooms {
    return [self.rooms allKeys];
}

- (Person *)whoSleepsAtRoom:(NSString *)room {
    return [self.rooms objectForKey:room];
}

- (NSUInteger)numberOfOccupiedRooms {
    return [[self allRooms] count];
}

@end

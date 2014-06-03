//
//  AppDelegate.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"
#import "EuroConverter.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    */
    
    Beer *mahou = [[Beer alloc] init];
    mahou.name = @"Mahou";
    Beer *coronita = [Beer new];
    [coronita setName:@"coronita"];
    Beer *cruzcampo = [[Beer alloc] init];
    [cruzcampo setName:@"Cruzcampo"];
    Beer *estrella_damm = [[Beer alloc] init];
    [estrella_damm setName:@"Estrella Damm"];
    
    [mahou printBeerInfo];
    [coronita printBeerInfo];
    [cruzcampo printBeerInfo];
    [mahou printBeerInfoWithHeader:@"Header"];
    [mahou printBeerInfoWithHeader:@"Header" andFooter:@"Footer"];
    [mahou printBeerInfoWithHeader:@"Header" andFooter:@"Footer" andNumberWithEmojis:4];
    
    Person *yo = [[Person alloc] init];
    yo.name = @"Miguel Santiago";
    [yo setName:@"Miguel Santiago"];
    yo.address = @"Rond de Atocha 8";
    yo.married = NO;
    [yo setAge:33];
    
    if (!yo.isMarried) {
        NSLog(@"oeoeoeoeoe");
    }
    
    Person *groucho = [[Person alloc] init];
    Person *harpo = [[Person alloc] initWithName:@"Harpo"];
    
    Person *chico = [[Person alloc] initWithName:@"Chico"
                                      andAddress:@"Ronda de atocha 8"];
    
    Person *zeppo = [[Person alloc] initWithName:@"Zeppo"
                                      andAddress:@"Fuencarral 5"
                                             age:34];
    
    NSArray *marxBrothers = [NSArray arrayWithObjects:groucho, harpo, chico, zeppo, nil];
    NSArray *personList = @[groucho, zeppo];
    
    Person *newPerson = [Person personWithName:@"Yeah"];
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:@[groucho, zeppo]];
    
    for (int i = 0; i < 100; i ++) {
        Person *p = [Person personWithName:[NSString stringWithFormat:@"Persona %d", i]];
        [mutableArray addObject:p];
    }
    
    
    for (Person *person in mutableArray) {
        NSLog(@"%@", person.name);
    }
    
    NSLog(@"%d", [EuroConverter convertFromEuroToPeseta:3]);
    NSLog(@"%f", [EuroConverter convertFromPesetaToEuro:500]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

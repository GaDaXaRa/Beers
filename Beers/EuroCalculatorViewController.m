//
//  EuroCalculatorViewController.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroCalculatorViewController.h"

@implementation EuroCalculatorViewController

- (IBAction)numberPressed:(id)sender {
    if (![sender isKindOfClass:[UIButton class]]) {
        return;
    }
    
    UIButton *buttonPressed = (UIButton *) sender;
    NSLog(@"%ld",(long)buttonPressed.tag);
}

@end
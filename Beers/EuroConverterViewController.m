//
//  EuroConverterViewController.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"

@interface EuroConverterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *amountTextField;

@end

@implementation EuroConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)convertMoney:(id)sender {
    float convertedAmount = [EuroConverter convertFromPesetaToEuro:[self.amountTextField.text floatValue]];
    NSLog(@"%f", convertedAmount);
}

@end

//
//  BeerListViewController.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerListViewController.h"
#import "BeerList.h"
#import "PersonList.h"

@interface BeerListViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UIPickerView *personsPickerView;

@property (strong, nonatomic) BeerList *beerList;
@property (strong, nonatomic) PersonList *people;

@end

@implementation BeerListViewController

- (BeerList *) beerList {
    if (_beerList == nil) {
        _beerList = [[BeerList alloc] initWithFile:@"beerList"];
    }
    
    return _beerList;
}

- (PersonList *) people {
    if (_people == nil) {
        _people = [[PersonList alloc] init];
        for (int i = 0; i < 100; i++) {
            Person *person = [[Person alloc] init];
            person.name = [NSString stringWithFormat:@"Person %d", i];
            
            [_people addPerson:person];
        }
    }    
    
    return _people;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

#pragma mark - PickerView Delegate Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if ([pickerView isEqual:self.pickerView]){
        return [self.beerList count];
    } else {
        return [self.people count];
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if ([pickerView isEqual:self.pickerView]){
        Beer *beer = [self.beerList allBeers][row];
        return [NSString stringWithFormat:@"🍺 %@", beer.name];
    } else {
        Person *person = [self.people allPeople][row];
        return [NSString stringWithFormat:@"😐 %@",person.name];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

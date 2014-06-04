//
//  AlphaViewController.m
//  Beers
//
//  Created by Miguel Santiago Rodríguez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageField;

@end

@implementation AlphaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (IBAction)changeAlpha:(id)sender {
    if (![sender isKindOfClass:[UISlider class]]) {
        return;
    }
    
    UISlider *alphaSlider = (UISlider *) sender;
    
    [self imageField].alpha = alphaSlider.value;
    [[self imageField] setAlpha:alphaSlider.value];
    [[self imageField] setAlpha:[alphaSlider value]];
    [self imageField].alpha = [alphaSlider value];
    self.imageField.alpha = alphaSlider.value;
    [self.imageField setAlpha:[alphaSlider value]];
    [self imageField].alpha = [alphaSlider value];
}

- (IBAction)changeImage:(id)sender {
    static BOOL toggle = YES;
    
    if (toggle) {
        self.imageField.image = [UIImage imageNamed:@"batman-cat-face.jpg"];
    } else {
        self.imageField.image = [UIImage imageNamed:@"Robert-Pattinson-Minion.jpg"];
    }
    
    toggle = !toggle;
}

#define URL @"http://diyfather.com/wp-content/uploads/darth-vader-cat1.jpg"

- (IBAction)downloadImage:(id)sender {
    NSURL *theUrl = [NSURL URLWithString:URL];
    NSData *data = [NSData dataWithContentsOfURL:theUrl];
    UIImage *downImage = [UIImage imageWithData:data];
    self.imageField.image = downImage;
}
@end

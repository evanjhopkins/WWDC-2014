//
//  HomeVIewController.m
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/10/14.
//  Copyright (c) 2014 Evan Hopkins. All rights reserved.
//

#import "HomeVIewController.h"

@interface HomeVIewController ()

@end

@implementation HomeVIewController
@synthesize tapToCont;
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
	[[self navigationController] setNavigationBarHidden:YES];
}

-(void)viewDidAppear:(BOOL)animated
{
    [[self navigationController] setNavigationBarHidden:YES];
    [self animateTapToStart];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)animateTapToStart
{
    [UIView animateWithDuration:1.00 delay:0.50 options:(UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat) animations:^{
        [tapToCont setAlpha:0.0];
    } completion:nil];
}

@end

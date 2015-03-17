//
//  DetailsViewController.m
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/11/14.
//  Copyright (c) 2014 Evan Hopkins. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

@synthesize contentView, bigLabel, descriptionLabel, titleImage, bigText, descriptionText, titleImageView, viewPlaceholder, bigLabelColor, date, dateLabel;

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
    
    //UIImage *image = [UIImage imageNamed:@"marist.jpg"];
    
	[bigLabel setText:bigText];
    [bigLabel setTextColor: bigLabelColor];
    [descriptionLabel setText:descriptionText];
    [titleImageView setImage:titleImage];
    [viewPlaceholder setFrame:[contentView bounds]];
    [dateLabel setText:date];
    if ([viewPlaceholder isKindOfClass:[UIImageView class]]) {
        [(UIImageView*) viewPlaceholder setContentMode:UIViewContentModeScaleAspectFit];
    }
    
    //[[contentView layer] setCornerRadius:30.0];
    [contentView setClipsToBounds:YES];
    [contentView setUserInteractionEnabled:NO];
    [contentView addSubview:viewPlaceholder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender
{
    [[self navigationController] popViewControllerAnimated:YES];
}
@end

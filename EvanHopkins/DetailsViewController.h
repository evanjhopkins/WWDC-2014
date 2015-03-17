//
//  DetailsViewController.h
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/11/14.
//  Copyright (c) 2014 Evan Hopkins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property IBOutlet UIView *contentView;
@property IBOutlet UILabel *bigLabel;
@property IBOutlet UILabel *descriptionLabel;
@property IBOutlet UIImageView *titleImageView;
@property IBOutlet UILabel *dateLabel;
@property NSString *bigText;
@property NSString *descriptionText;
@property UIImage *titleImage;
@property UIView *viewPlaceholder;
@property UIColor *bigLabelColor;
@property NSString *date;
- (IBAction)goBack:(id)sender;
@end

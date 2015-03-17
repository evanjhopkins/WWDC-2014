//
//  TableViewController.m
//  EvanHopkins
//
//  Created by Evan Hopkins on 4/10/14.
//  Copyright (c) 2014 Evan Hopkins. All rights reserved.
//

#import "TableViewController.h"


@interface TableViewController ()

@end

//home coordinates
#define homeLat 40.346715;
#define homeLon -74.997962;

//span
#define homeSpan 0.0008f;

@implementation TableViewController
{
    NSArray *tableTitles;
    NSArray *tableThumbnails;
    NSArray *titlePictures;
    NSArray *contentItem;
    NSArray *contentTitle;
    NSArray *contentDescription;
    NSMutableArray *contentItems;
    NSArray *contentDates;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg3.png"]];
    //self.tableView.backgroundView = bgImageView;
    
    //contentPictures = [NSArray arrayWithObjects:<#(id), ...#>, nil]

    //create region
    MKCoordinateRegion myRegion;
    CLLocationCoordinate2D center;
    center.latitude = homeLat;
    center.longitude = homeLon;
    
    //span
    MKCoordinateSpan span;
    span.latitudeDelta = homeSpan;
    span.longitudeDelta = homeSpan;
    
    
    myRegion.center = center;
    myRegion.span = span;
    
    
    MKMapView *map = [[MKMapView alloc] init];
    [map setMapType:MKMapTypeSatellite];
    [map setRegion:myRegion animated:YES];

    
    contentDates = [NSArray arrayWithObjects:@"2012 - 2016", @"October 2013", @"1994 - Current", @"June 2012", @"April 2014", @"2013 - Current", @"2012 - Current", @"2009 - Current", @"Summer 2014", @"2011 - Current", @"November 2012",    nil];
    
    //pictues or content items being displayed on detail page
    contentItems = [NSMutableArray arrayWithObjects:
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"marist.jpg"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"vcllogo.png"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"evankid.png"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"njhalogo.png"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hackmaristlogo.png"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"omqlogo.jpg"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"firetruck.jpg"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"linux.jpg"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ipreologo.gif"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"kalilogo.png"]],
                    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"jslogo.png"]],
                    nil];
    
    //Titles for table view
    tableTitles = [NSArray arrayWithObjects:@"Education", @"VCL Project", @"Adolescence", @"NJHA", @"Hack-Marist 2", @"OneMoreQuestion", @"Public Service", @"Kernel", @"IPreo", @"Network Security", @"Speedy Registrator", nil];
    
    //Letter icons for table view
    tableThumbnails = [NSArray arrayWithObjects:@"E.png", @"v.png", @"a.png", @"n.png", @"H.png", @"o.png", @"p.png", @"k.png", @"i.png", @"n2.png", @"s.png", nil ];
    
    //Title pictures for detail view
    titlePictures = [NSArray arrayWithObjects:@"education.png", @"vcl.png", @"adolescence.png", @"njha.png", @"hackmarist.png", @"omq.png", @"publicservice.png", @"kernel.png", @"ipreo.png", @"netsec.png", @"reg.png", nil ];
    
    //title for detail view
    contentTitle = [NSArray arrayWithObjects:@"Marist College", @"Apache VCL Project", @"New Hope, PA", @"IT Internship", @"First Place Winner", @"Web Development", @"Firefighter", @"Linux Junkie", @"Summer Internship", @"Penetration Testing", @"Registration Automator", nil];
    
    //description for detail view
    contentDescription = [NSArray arrayWithObjects:@"I am currently studying Computer Science with a minor in Economics at Marist College, of Poughkeepsie New York. I attended Holy Ghost Preparatory High School, where I recieved the award for excellence in Computer Science.",
                          
                          @"During my time at Marist, I have been contributing to the open source Apache VCL project. It allows users to connect to a customized computer environmnet remotely. My job is to better tailor it to fit Marist's needs.",
                          
                          @"I grew up in a small town called New Hope in eastern Pennsylvania. Here I was raised with my two parents, and my brother Blaise. My parents always encouraged me to persue my love of computers and technology.",
                          
                          @"During the summer of 2012, I interned in the Information Technology department of the New Jersey Hospital Association. Here I learned how to troubleshoot computers, as well as prepare new ones for distribution.",
                          
                          @"In April of 2014, me and my teamates won the Hack-Marist 2 programming competition. We developed an IOS scheduleing app by the name of ScheduleSlide. I was responsible for making the API and database.",
                          
                          @"In December of 2014, I was contracted as the Web Developer for OneMoreQuestion.net. It is currently udergoing a complete redesign, all of which is being programmed by myself. The site is scheduled for a relaunch this summer.",
                          
                          @"Since I was sixteen, I have served as a volunteer firefighter in my local commmunity. I have recieved my Firefighter One certification from the Bucks County School of Public Safety Training.",
                          
                          @"I have been an avid Linux user since I was fifteen. I use it side by side with Mac OSX as my daily computer. I also use it extensively at my job. I hope to someday contribute to my favorite distributions.",
                          
                          @"This coming summer, I will be interning at IPreo of New York City. The company provides financial intelligence data to is customers. I will be working with primarily C# and Java while there.",
                          
                          @"One of my biggest hobbies is network and computer securirty. Most recently, I have been obsessed with the Kali Linux distrobution, which is the sequel to the Backtrack distribution",
                          
                          @"During my freshman year at Marist, I developed a program that allows students to register for classes almost instantly. It allows users to have the advantage of registering before others fill up classes. ",
                          
                          nil];
    //[[self navigationController] setNavigationBarHidden:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.imageView.image = [UIImage imageNamed:[tableThumbnails objectAtIndex:indexPath.row]];
    cell.textLabel.text = [tableTitles objectAtIndex:indexPath.row];
    [cell setBackgroundColor:[UIColor clearColor]];
    return cell;
}

-(NSInteger)TableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableTitles count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailsViewController *detailsViewController = [sb instantiateViewControllerWithIdentifier:@"DetailsViewController"];
    
    [[self navigationController] pushViewController:detailsViewController animated:YES];
    [detailsViewController setBigText:[contentTitle objectAtIndex:indexPath.row]];
    [detailsViewController setDescriptionText:[contentDescription objectAtIndex:indexPath.row]];
    [detailsViewController setTitleImage:[UIImage imageNamed:[titlePictures objectAtIndex:indexPath.row]]];
    [detailsViewController setViewPlaceholder:[contentItems objectAtIndex:indexPath.row]];
    [detailsViewController setDate:[contentDates objectAtIndex:indexPath.row]];
    if(indexPath.row < 4){
        [detailsViewController setBigLabelColor:[UIColor colorWithRed:0 green:0.48 blue:1 alpha:1]];
    }else{
        [detailsViewController setBigLabelColor:[UIColor colorWithRed:0.78 green:0.26 blue:1 alpha:1]];
    }
}
- (IBAction)goBack:(id)sender
{
    [[self navigationController] popViewControllerAnimated:YES];
}
@end

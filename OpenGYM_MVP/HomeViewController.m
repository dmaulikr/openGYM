//
//  HomeViewController.m
//  OpenGYM_MVP
//
//  Created by Harrison Ferrone on 1/17/15.
//  Copyright (c) 2015 Harrison Ferrone. All rights reserved.
//

#import "HomeViewController.h"
#import "SWRevealViewController.h"

#import <Parse/Parse.h>

@interface HomeViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSArray *storedEvents;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self parseDataQuery];
}

-(void)parseDataQuery
{
    PFQuery *query = [PFQuery queryWithClassName:@"Event"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
     {
         self.storedEvents = [[NSArray alloc] initWithArray:objects];
         [self.tableView reloadData];
     }];
}

//hide status bar per design
-(BOOL)prefersStatusBarHidden
{
    return true;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.storedEvents.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *homeCell = [tableView dequeueReusableCellWithIdentifier:@"homeCellID"];
    PFObject *event = [self.storedEvents objectAtIndex:indexPath.row];
    
    homeCell.textLabel.text = [event objectForKey:@"description"];
    homeCell.detailTextLabel.text = [event objectForKey:@"sport"];
    
    return homeCell;
}

@end

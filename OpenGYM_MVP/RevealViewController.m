//
//  RevealViewController.m
//  OpenGYM_MVP
//
//  Created by Harrison Ferrone on 1/16/15.
//  Copyright (c) 2015 Harrison Ferrone. All rights reserved.
//

#import "RevealViewController.h"
#import <Parse/Parse.h>

@interface RevealViewController ()
@property (weak, nonatomic) IBOutlet UILabel *userFullNameLabel;

@end

@implementation RevealViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    PFUser *user = [PFUser currentUser];
    self.userFullNameLabel.text = user.username;
    
}

//hide status bar per design
-(BOOL)prefersStatusBarHidden
{
    return true;
}

@end

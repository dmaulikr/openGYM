//
//  MainMapViewController.m
//  OpenGYM_MVP
//
//  Created by Harrison Ferrone on 1/12/15.
//  Copyright (c) 2015 Harrison Ferrone. All rights reserved.
//

#import "MainMapViewController.h"
#import <MapKit/MapKit.h>

@interface MainMapViewController ()

@property (weak, nonatomic) IBOutlet UIView *sportSelectionPopoverView;
@property (weak, nonatomic) IBOutlet UIButton *basketballSelectedButton;
@property (weak, nonatomic) NSString *sportSelected;

@end

@implementation MainMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)overlayOnButtonTapped:(UIButton *)sender
{
    [UIView animateWithDuration:0.3 animations:^{
        self.sportSelectionPopoverView.frame = self.view.frame;
    }];
}

- (IBAction)basketballSelected:(UIButton *)sender
{
    self.sportSelected = sender.currentTitle;
    NSLog(@"%@", self.sportSelected);
}

- (IBAction)soccerSelected:(UIButton *)sender
{
    self.sportSelected = sender.currentTitle;
    NSLog(@"%@", self.sportSelected);
}

- (IBAction)baseballSelected:(UIButton *)sender
{
    self.sportSelected = sender.currentTitle;
    NSLog(@"%@", self.sportSelected);
}

- (IBAction)tennisSelected:(UIButton *)sender
{
    self.sportSelected = sender.currentTitle;
    NSLog(@"%@", self.sportSelected);
}

- (IBAction)footballSelected:(UIButton *)sender
{
    self.sportSelected = sender.currentTitle;
    NSLog(@"%@", self.sportSelected);
}

@end
//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Lukas Thoms on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"

@interface TeamViewController ()

-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
-(TeamMember *) teamMemberForSegueIdentifier: (NSString*) identifier;

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(TeamMember *) teamMemberForSegueIdentifier: (NSString*) identifier {
    TeamMember *al = [[TeamMember alloc] initWithName:@"Al" phone:@0003424 hometown:@"Detroit, MI" favoriteBand:@"The Beatles" photo:[UIImage imageNamed:@"al.jpg"]];
    TeamMember *joe = [[TeamMember alloc] initWithName:@"Joe" phone:@0003424 hometown:@"Rock Island, IL" favoriteBand:@"The Scatman" photo:[UIImage imageNamed:@"joe.jpg"]];
    TeamMember *avi = [[TeamMember alloc] initWithName:@"Avi" phone:@0003424 hometown:@"Des Moines, IA" favoriteBand:@"Insane Clown Posse" photo:[UIImage imageNamed:@"avi.jpg"]];
    TeamMember *chris = [[TeamMember alloc] initWithName:@"Chris" phone:@0003424 hometown:@"Exeter, NH" favoriteBand:@"Dave Matthews Band" photo:[UIImage imageNamed:@"chris.jpg"]];
    NSDictionary *team = @{@"alSegue":al,
                           @"joeSegue":joe,
                           @"chrisSegue":chris,
                           @"aviSegue":avi};
    return team[identifier];
}

-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    TeamDetailViewController *destination = segue.destinationViewController;
    TeamMember *currentDetail = [self teamMemberForSegueIdentifier:segue.identifier];
    destination.currentMember = currentDetail;
    
}




@end

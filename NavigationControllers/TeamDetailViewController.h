//
//  TeamDetailViewController.h
//  NavigationControllers
//
//  Created by Lukas Thoms on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeamMember.h"

@interface TeamDetailViewController : UIViewController

@property (strong, nonatomic) TeamMember *currentMember;

@end

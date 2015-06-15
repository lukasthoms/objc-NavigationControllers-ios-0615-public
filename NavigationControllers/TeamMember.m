//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Lukas Thoms on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

-(instancetype) initWithName: (NSString *)name phone:(NSNumber*)phone hometown:(NSString*)hometown favoriteBand:(NSString*)faveBand photo:(UIImage *)photo {
    self = [super init];
    _name = name;
    _phone = phone;
    _faveBand = faveBand;
    _hometown = hometown;
    _photo = photo;
    return self;
}

@end

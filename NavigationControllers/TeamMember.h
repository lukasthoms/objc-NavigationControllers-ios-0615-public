//
//  TeamMember.h
//  NavigationControllers
//
//  Created by Lukas Thoms on 6/15/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeamMember : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *phone;
@property (strong, nonatomic) NSString *hometown;
@property (strong, nonatomic) NSString *faveBand;
@property (strong, nonatomic) UIImage *photo;

-(instancetype) initWithName: (NSString *)name phone:(NSNumber*)phone hometown:(NSString*)hometown favoriteBand:(NSString*)faveBand photo:(UIImage *)photo;

@end

//
//  MarathonMan.h
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JumperProtocol.h"
#import "SwimmerProtocol.h"
#import "RunnerProtocol.h"
@interface MarathonMan : NSObject <JumperProtocol,SwimmerProtocol,RunnerProtocol>
@property (assign,nonatomic) CGFloat jumpHeight;
@property (strong,nonatomic) NSString* country;
@property (assign,nonatomic) CGFloat bestTime;
@property (strong,nonatomic) NSString* city;
@property (assign,nonatomic) CGFloat speed;
@property (strong,nonatomic) NSString* sponsorText;



@end

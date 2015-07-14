//
//  Runner.h
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RunnerProtocol.h"
@interface Runner : NSObject <RunnerProtocol>
@property (assign,nonatomic) CGFloat speed;
@property (strong,nonatomic) NSString* sponsorText;


@end

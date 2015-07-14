//
//  Fish.h
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SwimmerProtocol.h"
@interface Fish : NSObject <SwimmerProtocol>
@property (assign,nonatomic) CGFloat bestTime;
@property (strong,nonatomic) NSString* city;

@end

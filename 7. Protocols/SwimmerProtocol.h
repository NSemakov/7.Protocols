//
//  SwimmerProtocol.h
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SwimmerProtocol <NSObject>

@property (assign,nonatomic) CGFloat bestTime;
@property (strong,nonatomic) NSString* city;

-(void) swim;
@optional
-(void) handShake;

@end
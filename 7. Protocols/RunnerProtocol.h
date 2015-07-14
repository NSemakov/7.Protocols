//
//  RunnerProtocol.h
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RunnerProtocol <NSObject>

@property (assign,nonatomic) CGFloat speed;
@property (strong,nonatomic) NSString* sponsorText;

-(void) run;
@optional
-(void) sit;

@end
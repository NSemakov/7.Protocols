//
//  Kenguru.h
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JumperProtocol.h"
@interface Kenguru : NSObject <JumperProtocol>
@property (assign,nonatomic) CGFloat jumpHeight;
@property (strong,nonatomic) NSString* country;




@end

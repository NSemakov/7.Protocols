//
//  AppDelegate.m
//  7. Protocols
//
//  Created by Admin on 15.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AppDelegate.h"
#import "Jumper.h"
#import "Kenguru.h"
#import "Swimmer.h"
#import "MarathonMan.h"
#import "Fish.h"
#import "Runner.h"
#import "Leopard.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Jumper* jumper1=[Jumper new];
    jumper1.jumpHeight=3.4f;
    jumper1.country=@"Spain";
    //NSLog(@"jumper %f",jumper1.jumpHeight);
    Kenguru* kenguru1=[Kenguru new];
    kenguru1.jumpHeight=1.2f;
    kenguru1.country=@"Australia";
    Swimmer* swimmer1=[Swimmer new];
    swimmer1.bestTime=15.4f;
    swimmer1.city=@"Saint-Petersburg";
    Fish* fish1=[Fish new];
    fish1.bestTime=10.f;
    fish1.city=@"London";
    MarathonMan* man1=[MarathonMan new];
    man1.country=@"Russia";
    man1.bestTime=56.4f;
    man1.city=@"Moscow";
    man1.jumpHeight=2.f;
    man1.speed=30.4f;
    man1.sponsorText=@"British Airways";
    Runner* runner1=[Runner new];
    runner1.sponsorText=@"H20";
    runner1.speed=40.f;
    Leopard* leopard1=[Leopard new];
    leopard1.speed=120.f;
    leopard1.sponsorText=@"Attention!";
    
    NSArray* array=@[leopard1,runner1,man1,fish1,swimmer1,kenguru1,jumper1];
    for (id obj in array){
        if ([[obj class] conformsToProtocol:@protocol(JumperProtocol)]) {
            id <JumperProtocol> jumpObj=obj;
            NSLog(@"height of jump: %f, country: %@",jumpObj.jumpHeight,jumpObj.country);
            [jumpObj jump];
            if ([jumpObj respondsToSelector:@selector(smile)]) {
                [jumpObj smile];
            }
        }
        if ([[obj class] conformsToProtocol:@protocol(SwimmerProtocol)]){
            id <SwimmerProtocol> swimObj=obj;
            NSLog(@"best time: %f, city: %@",swimObj.bestTime,swimObj.city);
            [swimObj swim];
            if ([swimObj respondsToSelector:@selector(handShake)]) {
                [swimObj handShake];
            }
        }
        if ([[obj class] conformsToProtocol:@protocol(RunnerProtocol)]){
            id <RunnerProtocol> runObj=obj;
            NSLog(@"speed: %f, sponsor's text: %@",runObj.speed,runObj.sponsorText);
            [runObj run];
            if ([runObj respondsToSelector:@selector(sit)]) {
                [runObj sit];
            }
        }
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

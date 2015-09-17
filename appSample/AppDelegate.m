//
//  AppDelegate.m
//  appSample
//
//  Created by 최성원 on 2015. 9. 10..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "AppDelegate.h"
#include "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%@",@"didFinishLaunchingWithOptions");
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [window setBackgroundColor:[UIColor yellowColor]];
    [window makeKeyAndVisible];
    [self setWindow:window];
    
//    ViewController *viewController = [[ViewController alloc] initWithNibName:nil bundle:nil];
    ViewController *viewController = [[ViewController alloc] init];
    
    [[viewController view] setBackgroundColor:[UIColor blueColor]];
    
    [[self window] setRootViewController:viewController];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"%@",@"applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"%@",@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"%@",@"applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"%@",@"applicationDidBecomeActive");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"%@",@"applicationWillTerminate");
}

@end

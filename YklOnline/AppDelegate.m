//
//  AppDelegate.m
//  YklOnline
//
//  Created by 周通 on 2020/10/12.
//  Copyright © 2020 guojian. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import <ArcGIS/ArcGIS.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [AGSArcGISRuntimeEnvironment setLicenseKey:@"9242143581" error:nil];
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height)];
    self.window.rootViewController = [[MainViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle




@end

// Copyright (c) 2014 Google. All rights reserved.

#import "AppDelegate.h"

@import Firebase;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //
    
    if (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone)
    {
        UIStoryboard *storyBoard;
        
        CGSize result =[[UIScreen mainScreen] bounds].size;
        CGFloat scale =[UIScreen mainScreen].scale;
        result = CGSizeMake(result.width * scale, result.height*scale);
        
        NSLog(@"height");
        NSLog(@"%f",result.height);
        
        if (result.height == 960)
        {
            NSLog(@"Small");
            storyBoard = [UIStoryboard storyboardWithName:@"Small" bundle:nil];
            UIViewController *initViewController =[storyBoard instantiateInitialViewController];
            [self.window setRootViewController:initViewController];
            
        }
        
        else if (result.height == 1334)
        {
            NSLog(@"Large");
            storyBoard = [UIStoryboard storyboardWithName:@"Large" bundle:nil];
            UIViewController *initViewController =[storyBoard instantiateInitialViewController];
            [self.window setRootViewController:initViewController];
            
        }
        
        else if (result.height == 2208)
        {
            NSLog(@"Extra Large");
            storyBoard = [UIStoryboard storyboardWithName:@"XLarge" bundle:nil];
            UIViewController *initViewController =[storyBoard instantiateInitialViewController];
            [self.window setRootViewController:initViewController];
            
        }
        
        else
        {
            NSLog(@"Main");
            storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            UIViewController *initViewController =[storyBoard instantiateInitialViewController];
            [self.window setRootViewController:initViewController];
            
        }
        
    }
        
        
    

    // Use Firebase library to configure APIs
    [FIRApp configure];

    return YES;
}

@end

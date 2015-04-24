//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *myName = @"Jon";
    int number = 4;
    [self printIntroductions:myName];
    [self countDownTillIntroduction:number];
    
    return YES;
}

- (void)printIntroductions:(NSString *)name {
    NSString *introduction;
    NSString *japaneseIntroduction;
    
    introduction = [NSString stringWithFormat:@"My name is %@", name];
    japaneseIntroduction = [introduction stringByAppendingString:@" moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntroduction);
}
- (void)countDownTillIntroduction:(int)numberOfDays {
    if (numberOfDays == 0) {
        NSLog(@"The time has come");
    } else {
        NSLog(@"Number of days left is %d", numberOfDays);
        int oneDayLess = numberOfDays - 1;
        [self countDownTillIntroduction:oneDayLess];
    }
        
}


// Define new functions here...



@end

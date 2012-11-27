//
//  VPYShinobiLicense.m
//  ConAir
//
//  Created by Sam Davies on 30/11/2012.
//  Copyright (c) 2012 Sam Davies. All rights reserved.
//

#import "VPYShinobiLicense.h"

@implementation VPYShinobiLicense

+ (NSString *)getShinobiLicenseKey
{
    /* We've used a plist file to keep a hold of the Shinobi License key,
     which is required when you run a demo. You can either create yourself
     your own plist file and put the key you have been provided in there,
     at the root level, with the key "ShinobiChartsLicenseKey", or alternatively
     you can just make this method return it.
     */
    
    //return @"YOUR CODE HERE";
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ConAirSettings" ofType:@"plist"];
    NSDictionary *settings = [[NSDictionary alloc] initWithContentsOfFile:path];
    return settings[@"ShinobiChartsLicenseKey"];
}

@end
//
//  AppDelegate.h
//  testGithub1
//
//  Created by 沈宁 on 11/18/17.
//  Copyright © 2017 沈宁. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FirstWindowController.h"
#import "ThirdWindowController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (strong) FirstWindowController *firstWC;
@property (strong) NSWindowController *secondWC;
@property (strong) ThirdWindowController *thirdWC;
@end


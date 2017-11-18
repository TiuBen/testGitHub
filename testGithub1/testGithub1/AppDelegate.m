//
//  AppDelegate.m
//  testGithub1
//
//  Created by 沈宁 on 11/18/17.
//  Copyright © 2017 沈宁. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSWindow *firstWindow=[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 400, 300)
                                                     styleMask:NSTitledWindowMask|NSResizableWindowMask
                                                       backing:NSBackingStoreBuffered
                                                         defer:YES];
   
    [firstWindow setTitle:@"first Window"];
    MainWindowController *mainWC=[[MainWindowController alloc] initWithWindow:firstWindow];
    _mainWindow=mainWC;
    [_mainWindow.window makeKeyAndOrderFront:nil];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end

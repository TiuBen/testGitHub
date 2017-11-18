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
    
    //First WindowController use manual code
    NSWindow *firstWindow=[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 400, 300)
                                                     styleMask:NSResizableWindowMask|NSTitledWindowMask
                                                       backing:NSBackingStoreBuffered
                                                         defer:YES];
   
    [firstWindow setTitle:@"first Window"];
    FirstWindowController *mainWC=[[FirstWindowController alloc] initWithWindow:firstWindow];
    _firstWC=mainWC;
    [_firstWC.window makeKeyAndOrderFront:nil];
    //This also is effective/
//    [_firstWC showWindow:self];
    
    //SecondWindowController is default windowController
    NSWindow *secondWindow=[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 300, 400, 300)
                                                      styleMask:NSTitledWindowMask|NSResizableWindowMask
                                                        backing:NSBackingStoreBuffered
                                                          defer:YES];
    [secondWindow setTitle:@"second Window"];
     _secondWC=[[NSWindowController alloc] initWithWindow:secondWindow];
    [_secondWC.window makeKeyAndOrderFront:nil];
    
    //Third WindowController use a Xib file
    _thirdWC=[[ThirdWindowController alloc] initWithWindowNibName:@"ThirdWindowController"];
    [_thirdWC.contentViewController.view  setFrame:NSMakeRect(0, 600, 400, 300) ];
    [_thirdWC.window makeKeyAndOrderFront:nil];
    
    //Test main and key.
    [_firstWC.window makeMainWindow];
    [_secondWC.window makeKeyWindow];
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end

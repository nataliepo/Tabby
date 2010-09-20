//
//  TabbyAppDelegate.h
//  Tabby
//
//  Created by Natalie Podrazik on 9/20/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabbyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	NSArray * myVCs;
	
	UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

-(void)setUpTabViewControllers;


@end


//
//  TabbyAppDelegate.m
//  Tabby
//
//  Created by Natalie Podrazik on 9/20/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "TabbyAppDelegate.h"
#import "Alpha.h"
#import "Beta.h"
#import "Gamma.h"
#import "Delta.h"
#import "Epsilon.h"
#import "Zeta.h"

@implementation TabbyAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[self setUpTabViewControllers];
	
	tabBarController = [[UITabBarController alloc] init];
	
	tabBarController.viewControllers = myVCs;
	
//    [window makeKeyAndVisible];
	
	[window addSubview:tabBarController.view];
	
	
	return YES;
}

-(void)setUpTabViewControllers {	
	Alpha * a = [[Alpha alloc] init];
	Beta  * b = [[Beta alloc] init];
	Gamma * g = [[Gamma alloc] init];
	Delta * d = [[Delta alloc] init];
	Epsilon *e = [[Epsilon alloc] init];
	Zeta * z = [[Zeta alloc] init];
	
	
	// set up the icons here as opposed to when their respective views are loaded.
	a.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Alpha"
										 image:[UIImage imageNamed:@"star_ico.png"]
										 tag:0];
	
	b.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Beta"
										 image:[UIImage imageNamed:@"planet_ico.png"]
									     tag:1];	
	
	g.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Gamma"
										 image:[UIImage imageNamed:@"skull_ico.png"]
										 tag:2];
	
	d.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Delta"
										 image:[UIImage imageNamed:@"heart_ico.png"]
									     tag:3];
	
	e.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Epsilon"
										  image:[UIImage imageNamed:@"present_ico.png"]
										  tag:4];
	
	z.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Zeta"
										 image:[UIImage imageNamed:@"bandaid_ico.png"]
										 tag:5];
	
	
	myVCs   = [NSArray arrayWithObjects:a, b, g, d, e, z, nil];
}


- (void)dealloc {
	[tabBarController release];
	[myVCs release];
    [window release];
    [super dealloc];
}


@end

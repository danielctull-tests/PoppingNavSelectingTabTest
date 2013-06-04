//
//  ViewController.m
//  PoppingNavSelectingTabTest
//
//  Created by Daniel Tull on 04.06.2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)popAndSelect:(id)sender {
	
	UITabBarController *tabBarController = self.tabBarController;
	UINavigationController *navigationController = self.navigationController;
	
	[navigationController popViewControllerAnimated:YES];
	
	BOOL index = tabBarController.selectedIndex;
	tabBarController.selectedIndex = !index;
}

- (IBAction)selectAndPop:(id)sender {
	
	UITabBarController *tabBarController = self.tabBarController;
	UINavigationController *navigationController = self.navigationController;
	
	BOOL index = tabBarController.selectedIndex;
	tabBarController.selectedIndex = !index;
	
	[navigationController popViewControllerAnimated:YES];
}

@end

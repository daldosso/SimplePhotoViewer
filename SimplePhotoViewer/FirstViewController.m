//
//  FirstViewController.m
//  SimplePhotoViewer
//
//  Created by Alberto Dal Dosso on 10/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "PhotoViewController.h"

@implementation FirstViewController

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

- (IBAction)showPhotos:(id)sender {
    
    TTNavigator *navigator = [TTNavigator navigator];
    navigator.supportsShakeToReload = YES;
	navigator.persistenceMode = TTNavigatorPersistenceModeAll;
    
    //navigator.window = delegate.window;
    navigator.window = self.view.window;        
    
    
    //    if (![navigator restoreViewControllers])
    //        navigator.window = self.view.window;
    //    else 
    //        TTNavigationController* navi = [[((Bathroom *)[navigator topViewController]) viewControllers] objectAtIndex:0];
    
    
    //navigator.persistenceMode = TTNavigatorPersistenceModeAll;
    //navigator.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //[navigator.window makeKeyAndVisible];
    
    
    //[delegate.navController pushViewController:navigator.window animated:YES];
    
    TTURLMap *map = navigator.URLMap;
    //[map from:@"*" toViewController:[TTWebController class]];
    //[map from:@"tt://home" toViewController:[FirstViewController class]];
    [map from:@"tt://appPhotos" toSharedViewController:[PhotoViewController class]];
    
    //[navigator openURLAction:[TTURLAction actionWithURLPath:@"tt://appPhotos"]];
    
    [[TTNavigator navigatorForView:self.view] openURLAction:[TTURLAction actionWithURLPath:@"tt://appPhotos"]];
    

}

@end

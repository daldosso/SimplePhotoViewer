//
//  PhotoViewController.m
//  CentroEdile2
//
//  Created by Alberto Dal Dosso on 07/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PhotoViewController.h"
#import "PhotoSet.h"
#import "FirstViewController.h"

@implementation PhotoViewController
@synthesize photoSet = _photoSet;

- (void) viewDidLoad {
    self.photoSource = [PhotoSet samplePhotoSet];
    
    
    UIBarButtonItem *trashItem = [[UIBarButtonItem alloc] 
                                  initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self 
                                  action:@selector(backHome:)];
    UIBarButtonItem *flex = [[UIBarButtonItem alloc] 
                             initWithBarButtonSystemItem: 
                             UIBarButtonSystemItemFlexibleSpace 
                             target:nil action:nil]; 
    // Create array with items starting with the left side 
    NSMutableArray *items = [NSMutableArray arrayWithObject:trashItem]; 
    // Then add the current items (the back / forward arrows) 
    [items addObjectsFromArray:[_toolbar items]]; 
    // Add in our new item to the far right 
  //  [items addObject:flex]; 
    [_toolbar setItems:items]; 
    [trashItem release]; 
    [flex release];     
}

- (void) dealloc {
    self.photoSet = nil;    
    [super dealloc];
}

-(void)backHome:(id)sender {
    // here you can access the object which triggered the method
    // for example you can check the tag value
    
    NSLog(@"the tag value is: %d", [sender tag]);
    [self.navigationController popViewControllerAnimated:YES];
}

@end
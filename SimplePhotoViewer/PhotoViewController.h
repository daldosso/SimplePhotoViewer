//
//  PhotoViewController.h
//  CentroEdile2
//
//  Created by Alberto Dal Dosso on 07/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Three20/Three20.h>

@class PhotoSet;

@interface PhotoViewController : TTPhotoViewController {
    PhotoSet *_photoSet;
}

@property (nonatomic, retain) PhotoSet *photoSet;

@end
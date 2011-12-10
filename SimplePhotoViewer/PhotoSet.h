//
//  PhotoSet.h
//  CentroEdile2
//
//  Created by Alberto Dal Dosso on 06/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Three20/Three20.h"

@interface PhotoSet : TTURLRequestModel <TTPhotoSource> {
    NSString *_title;
    NSArray *_photos;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, retain) NSArray *photos;

+ (PhotoSet *)samplePhotoSet;

@end
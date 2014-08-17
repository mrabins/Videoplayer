//
//  MRPlayerViewController.h
//  videoplayer
//
//  Created by Mark Rabins on 8/4/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BCOVPlayerSDK.h>

@interface MRPlayerViewController : UIViewController <BCOVPlaybackControllerDelegate>

@property (strong,nonatomic)id<BCOVPlaybackController> controller;

@end

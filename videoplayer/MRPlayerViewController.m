//
//  MRPlayerViewController.m
//  videoplayer
//
//  Created by Mark Rabins on 8/4/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import "MRPlayerViewController.h"
#import "BCOVPlayerSDK.h"


@interface MRPlayerViewController ()

@end

@implementation MRPlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *videos = @[
                        [self videoWithURL:[NSURL URLWithString:@"http://cf9c36303a9981e3e8cc-31a5eb2af178214dc2ca6ce50f208bb5.r97.cf1.rackcdn.com/bigger_badminton_600.mp4"]],
                        ];
    
    // add the playback controller
    self.controller = [[BCOVPlayerSDKManager sharedManager] createPlaybackControllerWithViewStrategy:[self viewStrategy]];
    self.controller.view.frame = self.view.bounds;
    // create a playback controller delegate
    self.controller.delegate = self;

    self.controller.view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    // add the controller view as a subview of the SVPViewController's view
    [self.view addSubview:self.controller.view];
    
    // turn on auto-advance
    self.controller.autoAdvance = YES;
    // turn on auto-play
    self.controller.autoPlay = YES;
    
    // add the video array to the controller's playback queue
    [self.controller setVideos:videos];
    // play the first video
    [self.controller play];
}

- (BCOVVideo *)videoWithURL:(NSURL *)url
{
    BCOVSource *source = [[BCOVSource alloc] initWithURL:url deliveryMethod:kBCOVSourceDeliveryHLS properties:nil];
    return [[BCOVVideo alloc] initWithSource:source cuePoints:[BCOVCuePointCollection collectionWithArray:@[]] properties:@{}];
}

- (id)viewStrategy
{
    // Most apps can create a playback controller with a `nil` view strategy,
    // but for the purposes of this demo we use the stock controls.
    return [[BCOVPlayerSDKManager sharedManager] defaultControlsViewStrategy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

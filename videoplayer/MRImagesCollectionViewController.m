//
//  MRImagesCollectionViewController.m
//  videoplayer
//
//  Created by Mark Rabins on 8/2/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import "MRImagesCollectionViewController.h"
#import "MRImagesCollectionViewCell.h"

@interface MRImagesCollectionViewController ()

@end

@implementation MRImagesCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - UICollectionViewDataSource
// Method for the images on the second view controller
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MRImagesCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photo" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    cell.imageView.image = [UIImage imageNamed:@"horse.jpeg"];
    
    return cell;
    

}
//Method to return the 8 thumb nails on the second view controller
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 8;
}


@end

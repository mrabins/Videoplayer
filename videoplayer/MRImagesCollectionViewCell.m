//
//  MRImagesCollectionViewCell.m
//  videoplayer
//
//  Created by Mark Rabins on 8/2/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import "MRImagesCollectionViewCell.h"
#define IMAGEVIEW_BORDER_LENGTH 5

@implementation MRImagesCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self){
        [self setup];
    }
    return self;
}
//Sets up the image view for the seconnd view controller
-(void)setup
{
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectInset(self.bounds, IMAGEVIEW_BORDER_LENGTH, IMAGEVIEW_BORDER_LENGTH)];
    [self.contentView addSubview:self.imageView];

}


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
     if([segue.identifier isEqualToString:@"Details Segue"]){
         if([segue.destinationViewController isKindOfClass:[UITableViewController class]]){
         /*    NSIndexPath *path = [self imageView indexPathForSelectedRow];
             
             MRDetailsViewController *targetViewController = segue.destinationViewController;
             targetViewController = [path.row];*/
         }
     }
 }





@end
         
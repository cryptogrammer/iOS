//
//  UTGViewController.h
//  Man's Best Friend
//
//  Created by Utkarsh Garg on 7/19/14.
//  Copyright (c) 2014 UtkarshGarg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UTGViewController : UIViewController
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

@end

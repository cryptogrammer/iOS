//
//  UTGViewController.m
//  Man's Best Friend
//
//  Created by Utkarsh Garg on 7/19/14.
//  Copyright (c) 2014 UtkarshGarg. All rights reserved.
//

#import "UTGViewController.h"
#import "UTGDog.h"
#import "UTGPuppy.h"

@interface UTGViewController ()

@end

@implementation UTGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UTGDog *myDog = [[UTGDog alloc] init];
    myDog.name = @"Bernard";
    myDog.breed = @"Saint Bernard";
    myDog.age = 1 ;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    /**NSLog(@"myDog is named %@ and its age is %i and its breed is %@", myDog.name, myDog.age, myDog.breed);
    // to delete an object and all its properties, just set the object to nil i.e. myDog = nil;
    [myDog bark];
    [myDog barkANumberOfTimes:10];
    [self printHelloWorld];
    [myDog barkANumberOfTimes:5 loudly:YES];
    int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    NSLog(@"%i", dogYears);**/
    //UTGDog *myDog = [[UTGDog alloc] init];
    //[myDog printListOfNumbers:5];
    //[myDog printListBetween:6 number2:2];
    
    UTGDog *secondDog = [[UTGDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russel Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    UTGDog *thirdDog = [[UTGDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    UTGDog *fourthDog = [[UTGDog alloc] init];
    fourthDog.name = @"Idiot";
    fourthDog.breed = @"Grey Hound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    self.currentIndex = 0;
    
    // Other methods can access self.myDogs but not myDog, seondDeog, etc.
    
    UTGPuppy *puppy = [[UTGPuppy alloc] init];
    [puppy bark];
    puppy.name = @"Bo O";
    puppy.breed = @"Portugese Water Dog";
    puppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myDogs addObject:puppy];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) printHelloWorld{
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = self.myDogs.count;
    int randomIndex = arc4random() % numberOfDogs;
    if (self.currentIndex==randomIndex && self.currentIndex==0) {
        randomIndex++;
    } else if(self.currentIndex==randomIndex) {
        randomIndex--;
    }
    self.currentIndex=randomIndex;
    UTGDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
   
    [UIView transitionWithView:self.view duration:.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.nameLabel.text = randomDog.name;
        self.breedLabel.text = randomDog.breed;
    } completion:^(BOOL finished) {
    }];
    sender.title = @"And Another";

}
@end

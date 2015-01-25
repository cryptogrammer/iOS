//
//  UTGDog.m
//  Man's Best Friend
//
//  Created by Utkarsh Garg on 7/19/14.
//  Copyright (c) 2014 UtkarshGarg. All rights reserved.
//

#import "UTGDog.h"

@implementation UTGDog

-(void)bark{
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int i=1; i<=numberOfTimes; i++) {
        [self bark];        // in .m file, implicit local variable self. Used to access properties from header file.
    }
}

-(void)changeBreedToWerewolf{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if(!isLoud){
        for (int i =1; i<=numberOfTimes; i++) {
            NSLog(@"yip yip");
        }
    }
    else{
        for (int i =1; i<=numberOfTimes; i++) {
            NSLog(@"ruff ruff");
        }    }
}

-(int)ageInDogYearsFromAge:(int)regularAge{
    int newAge = regularAge*7;
    return newAge;
}

-(void)printListOfNumbers:(int)inputNumber
{
    for (int i=inputNumber; i>0; i--) {
        NSLog(@"%i",i);
    }
}

-(void)printListBetween:(int)inputNumber1 number2:(int)inputNumber2
{
    if(inputNumber2==inputNumber1){NSLog(@"%i", inputNumber1);}
    else if (inputNumber1>inputNumber2){
    for (int i=inputNumber1; i>=inputNumber2; i--) {
        NSLog(@"%i",i);
    }
    }
    else{
        for (int i=inputNumber1; i<=inputNumber2; i++) {
            NSLog(@"%i",i);
    }
    }
}

@end

//
//  UTGDog.h
//  Man's Best Friend
//
//  Created by Utkarsh Garg on 7/19/14.
//  Copyright (c) 2014 UtkarshGarg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTGDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;
-(void)printListOfNumbers:(int)inputNumber;
-(void)printListBetween:(int)inputNumber1 number2:(int)inputNumber2;


@end

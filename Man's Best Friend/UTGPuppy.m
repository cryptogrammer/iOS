//
//  UTGPuppy.m
//  Man's Best Friend
//
//  Created by Utkarsh Garg on 7/19/14.
//  Copyright (c) 2014 UtkarshGarg. All rights reserved.
//

#import "UTGPuppy.h"

@implementation UTGPuppy

-(void)givePuppyEyes
{
    NSLog(@":(");
}

-(void)bark
{
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}
@end

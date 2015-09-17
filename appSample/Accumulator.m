//
//  Accumulator.m
//  appSample
//
//  Created by 최성원 on 2015. 9. 17..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator
{
    int count;
}

@synthesize count = count;

- (instancetype)init
{
    self = [super init];
    if (self) {
        count = 1;
    }
    return self;
}

-(void)increaseCount{
    count++;
}

-(void)decreaseCount{
    count--;
}

@end

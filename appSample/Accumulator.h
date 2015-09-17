//
//  Accumulator.h
//  appSample
//
//  Created by 최성원 on 2015. 9. 17..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Accumulator : NSObject

@property (nonatomic, readonly) int count;

-(void)increaseCount;

@end

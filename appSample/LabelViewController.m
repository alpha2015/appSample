//
//  LabelViewController.m
//  appSample
//
//  Created by 최성원 on 2015. 9. 17..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "LabelViewController.h"

@implementation LabelViewController
{
    int count;
    UILabel *label;
}

-(void)viewDidLoad{
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 50, 44)];
    [label setText:[NSString stringWithFormat:@"%d", count]];
    [label setTextAlignment:NSTextAlignmentRight];
    
    [[self view] addSubview:label];
}

@end

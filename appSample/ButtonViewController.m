//
//  ButtonViewController.m
//  appSample
//
//  Created by 최성원 on 2015. 9. 17..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "ButtonViewController.h"

@implementation ButtonViewController
{
    int count;
    UIButton *button;
}

-(void)viewDidLoad{
    button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setFrame:CGRectMake(70, 100, 60, 44)];
    [button setTitle:@"acc" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:button];
}

- (IBAction)buttonTapped:(id)aSender
{
    count++;
    [label setText:[NSString stringWithFormat:@"%d", count]];
    NSLog(@"buttonTapped:");
    
}

@end

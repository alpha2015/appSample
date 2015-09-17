//
//  ChildViewController.m
//  appSample
//
//  Created by 최성원 on 2015. 9. 17..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "ChildViewController.h"

@implementation ChildViewController
{
    Accumulator *accumulator;
    UILabel     *label;
    UIButton    *button;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        accumulator = [[Accumulator alloc] init];
    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
                accumulator = [[Accumulator alloc] init];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 50, 44)];
    [label setText:[NSString stringWithFormat:@"%d", [accumulator count]]];
    [label setTextAlignment:NSTextAlignmentRight];
    
    [[self view] addSubview:label];
    
    button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setFrame:CGRectMake(70, 100, 60, 44)];
    [button setTitle:@"acc" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:button];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonTapped:(id)aSender
{
    [accumulator increaseCount];
    [label setText:[NSString stringWithFormat:@"%d", [accumulator count]]];
    NSLog(@"buttonTapped:");
    
}

@end

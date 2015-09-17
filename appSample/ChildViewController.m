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
    UIButton    *plusButton;
    UIButton    *minusButton;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        accumulator = [[Accumulator alloc] init];
    }
    return self;
}

- (void)dealloc
{
    [accumulator release];
    [label release];
    [plusButton release];
    [minusButton release];
    
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor greenColor]];
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [label setText:[NSString stringWithFormat:@"%d", [accumulator count]]];
    [label setTextAlignment:NSTextAlignmentRight];
    
    [[self view] addSubview:label];
    
    plusButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [plusButton setFrame:CGRectMake(70, 0, 60, 50)];
    [plusButton setTitle:@"plus" forState:UIControlStateNormal];
    [plusButton addTarget:self action:@selector(plusButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:plusButton];
    
    minusButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [minusButton setFrame:CGRectMake(150, 0, 60, 50)];
    [minusButton setTitle:@"minus" forState:UIControlStateNormal];
    [minusButton addTarget:self action:@selector(minusButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:minusButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)plusButtonTapped:(id)aSender
{
    [accumulator increaseCount];
    [label setText:[NSString stringWithFormat:@"%d", [accumulator count]]];
    NSLog(@"buttonTapped:");
    
}

- (IBAction)minusButtonTapped:(id)aSender
{
    [accumulator decreaseCount];
    [label setText:[NSString stringWithFormat:@"%d", [accumulator count]]];
    NSLog(@"buttonTapped:");
    
}

@end

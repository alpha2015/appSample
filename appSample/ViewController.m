//
//  ViewController.m
//  appSample
//
//  Created by 최성원 on 2015. 9. 10..
//  Copyright (c) 2015년 최성원. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    ChildViewController *childViewController1;
    ChildViewController *childViewController2;
    ChildViewController *childViewController3;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        childViewController1 = [[ChildViewController alloc] initWithNibName:nil bundle:nil];
        childViewController2 = [[ChildViewController alloc] initWithNibName:nil bundle:nil];
        childViewController3 = [[ChildViewController alloc] initWithNibName:nil bundle:nil];
    }
    return self;
}

- (void)dealloc
{
    [childViewController1 release];
    [childViewController2 release];
    [childViewController3 release];
    
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    [self addChildViewController:childViewController1];
    [[self view] addSubview:[childViewController1 view]];
    childViewController1.view.frame = CGRectMake(10, 100, 250, 70);
    
    [self addChildViewController:childViewController2];
    [[self view] addSubview:[childViewController2 view]];
    childViewController2.view.frame = CGRectMake(10, 200, 250, 70);
    
    [self addChildViewController:childViewController3];
    [[self view] addSubview:[childViewController3 view]];
    childViewController3.view.frame = CGRectMake(10, 300, 250, 70);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

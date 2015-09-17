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
    ChildViewController *childViewController;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        childViewController = [[ChildViewController alloc] initWithNibName:nil bundle:nil];
    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        childViewController = [[ChildViewController alloc] initWithNibName:nil bundle:nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor blueColor]];
    
    [self addChildViewController:childViewController];
    [[self view] addSubview:[childViewController view]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

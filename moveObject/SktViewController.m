//
//  SktViewController.m
//  moveObject
//
//  Created by amar tk on 24/03/14.
//  Copyright (c) 2014 startKoding. All rights reserved.
//

#import "SktViewController.h"

@interface SktViewController ()

@end

@implementation SktViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    panGesture.maximumNumberOfTouches = 1;
    panGesture.minimumNumberOfTouches = 1;
    [_firstRect addGestureRecognizer:panGesture];
}

-(void)handlePan:(UIPanGestureRecognizer *)sender
{
    CGPoint translationInView = [(UIPanGestureRecognizer *)sender translationInView:self.view];

    CGRect firstRectFrame = _firstRect.frame;
    firstRectFrame.origin.x = firstRectFrame.origin.x + translationInView.x;
    firstRectFrame.origin.y = firstRectFrame.origin.y + translationInView.y;
    _firstRect.frame = firstRectFrame;
    
    [(UIPanGestureRecognizer *)sender setTranslation:CGPointZero inView:self.view];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

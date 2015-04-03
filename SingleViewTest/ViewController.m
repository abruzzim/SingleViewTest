//
//  ViewController.m
//  SingleViewTest
//
//  Created by abruzzim on 3/16/15.
//  Copyright (c) 2015 Mario Abruzzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/* loadView is called the first time the view property is accessed. */

- (void)loadView {

    NSLog(@"%%ViewController-I-DEBUG, Running -loadView method.");
    
    CGRect viewRect = [[UIScreen mainScreen] bounds];       // Return a screen object representing the device's screen.
    UIView *view = [[UIView alloc] initWithFrame:viewRect]; // Create a View the size of the whole screen (The "Paint").
    self.view = view;                                       // Assign a View to this ViewController.

}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%%ViewController-I-DEBUG, Running -viewDidLoad method.");
    
    // Set the background color for the view that this controller manages.
    //
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Instantiate a scroll view with a frame equal to the bounds.
    //
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    // Set autoresizing bitmask.
    //
    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    
    // Set the size of the content view.
    //
    self.scrollView.contentSize = CGSizeMake(768, 4914);
    
    // Create, place and size an image view using @property name.
    //
    self.flowChartImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 768, 4914)];
    
    // Set the image displayed in the image view.
    //
    [self.flowChartImg setImage:[UIImage imageNamed:@"SepsisFlowchart3"]];
    
    // Add the view to the end of the receiver’s list of subviews.
    //
    [self.scrollView addSubview:self.flowChartImg];
    
    // Add the scroll view to the end of the UIView's list of subviews.
    //
    [self.view addSubview:self.scrollView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

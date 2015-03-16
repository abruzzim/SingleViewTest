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

    NSLog(@"%%ViewController-I-DEBUG, Running 'loadView'...");
    
    CGRect viewRect = [[UIScreen mainScreen] bounds];       // Return a screen object representing the device's screen.
    UIView *view = [[UIView alloc] initWithFrame:viewRect]; // Create a View the size of the whole screen (The "Paint").
    self.view = view;                                       // Assign a View to this ViewController.

}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%%ViewController-I-DEBUG, Running 'viewDidLoad'...");
    
    // Set the background color for the view that this controller manages.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    // Create, place and size an image view using @property name.
    self.flowChartImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 768, 1024)];
    // Set the image displayed in the image view.
    [self.flowChartImg setImage:[UIImage imageNamed:@"SepsisFlowchart3"]];
    // Scale the content to fit the size of itself by changing the aspect ratio of the content if necessary.
    [self.flowChartImg setContentMode:UIViewContentModeScaleToFill];
    // Add the view to the end of the receiver’s list of subviews.
    [self.view addSubview:self.flowChartImg];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

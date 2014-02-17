//
//  TTViewController.m
//  UIViewOutlet
//
//  Created by sergey on 2/13/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import "TTViewController.h"

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self changeColorBoardWithOrientation:toInterfaceOrientation];
}

- (void)changeColorBoardWithOrientation:(UIInterfaceOrientation)orientation {
    
    if(orientation == UIDeviceOrientationPortrait) {
        [self changeColor:[UIColor blackColor]];
    } else if(orientation == UIDeviceOrientationPortraitUpsideDown) {
        [self changeColor:[UIColor yellowColor]];
    } else if(orientation == UIDeviceOrientationLandscapeLeft) {
        [self changeColor:[UIColor redColor]];
    } else if(orientation == UIDeviceOrientationLandscapeRight) {
        [self changeColor:[UIColor greenColor]];
    }
    
}

- (void)randomSwapCheckers {
    
        [UIView animateWithDuration:3.0 animations:^{
            
            CGRect whiteRect = CGRectZero;
            CGRect blackRect = CGRectZero;
            
            for (int i = 0; i < 12; i++) {
                UIView *white = [self.yellowChekers objectAtIndex:arc4random_uniform(12)];
                UIView *black = [self.redChekers objectAtIndex:arc4random_uniform(12)];
                
                whiteRect = white.frame;
                blackRect = black.frame;
            
            black.frame = whiteRect;
            white.frame = blackRect;
            }
            
        }];
}

- (void)changeColor:(UIColor *)color {

        [UIView animateWithDuration:1.0 animations:^{
                for (UIView *view in self.blackField) {
                    [view setBackgroundColor:color];
                }
        } completion:^(BOOL finished) {
            
        }];
    
    [self randomSwapCheckers];
}


@end

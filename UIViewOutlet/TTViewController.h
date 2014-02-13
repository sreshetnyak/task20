//
//  TTViewController.h
//  UIViewOutlet
//
//  Created by sergey on 2/13/14.
//  Copyright (c) 2014 sergey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *witeField;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackField;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *redChekers;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *yellowChekers;

@end

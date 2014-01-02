//
//  SAMultisectorViewController.h
//  CustomControl
//
//  Created by Snipter on 12/31/13.
//  Copyright (c) 2013 SmartAppStudio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SAMultisectorControl.h"

@interface SAMultisectorViewController : UIViewController

@property (weak, nonatomic) IBOutlet SAMultisectorControl *multisectorControl;

@property (weak, nonatomic) IBOutlet UILabel *priceStartLable;
@property (weak, nonatomic) IBOutlet UILabel *priceEndLable;
@property (weak, nonatomic) IBOutlet UILabel *distanceStartLable;
@property (weak, nonatomic) IBOutlet UILabel *distanceEndLable;
@property (weak, nonatomic) IBOutlet UILabel *waitStartLable;
@property (weak, nonatomic) IBOutlet UILabel *waitEndLable;

@end

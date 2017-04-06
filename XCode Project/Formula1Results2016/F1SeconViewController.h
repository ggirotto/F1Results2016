//
//  F1SeconViewController.h
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 05/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Runner.h"
#import "Championship.h"

@interface F1SeconViewController : UIViewController <UITableViewDataSource>

@property (nonatomic) Runner *runner;
@property (nonatomic) Championship *championship;

@end

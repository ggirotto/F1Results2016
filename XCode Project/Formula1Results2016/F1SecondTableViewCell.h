//
//  F1SecondTableViewCell.h
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Runner;
@class Championship;

@interface F1SecondTableViewCell : UITableViewCell

@property (nonatomic) Runner *runner;
@property (nonatomic) Championship *championship;

@end

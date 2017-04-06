//
//  F1Model.h
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 04/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Runner;
#import "Championship.h"

@interface F1Model : NSObject

@property (nonatomic) Championship *formulaUm;

-(void) addRunners;

@end

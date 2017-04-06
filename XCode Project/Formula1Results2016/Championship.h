//
//  Championship.h
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Runner.h"

@interface Championship : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSMutableArray *runners;
@property (nonatomic) NSMutableDictionary *points;
@property (nonatomic) NSDate *date;

-(instancetype)initChampionshipWithName:(NSString *)name andDate:(NSDate *)date;

-(void)addRunnerToChampionship:(Runner *)runner withPoints:(NSInteger)points;

-(NSInteger)getRunnerPosition:(Runner *)runner;
-(NSInteger)getRunnerPoints:(Runner *)runner;

@end

//
//  Championship.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "Championship.h"
#import "Runner.h"

@implementation Championship

-(instancetype)initChampionshipWithName:(NSString *)name andDate:(NSDate *)date{
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.date = date;
        self.runners = [[NSMutableArray alloc] init];
        self.points = [[NSMutableDictionary alloc] init];
    }
    
    return self;
    
}

-(void)addRunnerToChampionship:(Runner *)runner withPoints:(NSInteger)points{
    
    [self.runners addObject:runner];
    [self.points setObject:[NSNumber numberWithInteger:points] forKey:runner.name];
    
}

-(NSInteger)getRunnerPoints:(Runner *)runner{
    
    NSInteger points = [[self.points valueForKey:runner.name] integerValue];
    return points;
    
}

-(NSInteger)getRunnerPosition:(Runner *)runner{
    
    NSMutableArray *runnersSorted = [self quickSort:self.runners.copy];
    
    return [runnersSorted indexOfObject:runner]+1;
    
}

-(NSMutableArray *)quickSort:(NSMutableArray *)unsortedArray{
    
    NSInteger numberOfElements = [unsortedArray count];
    if(numberOfElements <= 1){
        return unsortedArray;
    }
    
    Runner* pivotValue = [unsortedArray objectAtIndex: numberOfElements/2];
    
    NSMutableArray* lessArray = [[NSMutableArray alloc] initWithCapacity:numberOfElements];
    NSMutableArray* moreArray = [[NSMutableArray alloc] initWithCapacity:numberOfElements];
    
    for (Runner* runner in unsortedArray) {
        if([self.points valueForKey:runner.name] > [self.points valueForKey:pivotValue.name]){
            [lessArray addObject:runner];
        } else if([self.points valueForKey:runner.name] < [self.points valueForKey:pivotValue.name]){
            [moreArray addObject:runner];
        }
    }
    
    NSMutableArray* sortedArray = [[NSMutableArray alloc] initWithCapacity:numberOfElements];
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:moreArray]];
    
    return [sortedArray copy];
    
}


@end

//
//  Runner.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "Runner.h"

@implementation Runner

-(instancetype)initWithName:(NSString *)name andTeam:(NSString *)team andAge:(NSInteger)age andNacionality:(NSString *)nacionality andGiantPhoto:(UIImage *)giantPhoto andPhoto:(UIImage *)photo andTitles:(NSInteger)titles andWins:(NSInteger)wins andPodiums:(NSInteger)podiums andPoles:(NSInteger)poles andWithFastestRoutes:(NSInteger)fastestRoutes{
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.team = team;
        self.age = age;
        self.nacionality = nacionality;
        self.giantPhoto = giantPhoto;
        self.photo = photo;
        self.titles = titles;
        self.wins = wins;
        self.podiums = podiums;
        self.poles = poles;
        self.fastestRoutes = fastestRoutes;
    }
    
    return self;
    
}

@end

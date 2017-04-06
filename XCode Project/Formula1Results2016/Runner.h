//
//  Runner.h
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Runner : NSObject


@property (nonatomic) NSString *name;
@property (nonatomic) NSString *team;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSString *nacionality;
@property (nonatomic) UIImage *giantPhoto;
@property (nonatomic) UIImage *photo;
@property (nonatomic) NSInteger titles;
@property (nonatomic) NSInteger wins;
@property (nonatomic) NSInteger podiums;
@property (nonatomic) NSInteger poles;
@property (nonatomic) NSInteger fastestRoutes;


-(instancetype)initWithName:(NSString *)name andTeam:(NSString *)team andAge:(NSInteger)age andNacionality:(NSString *)nacionality andGiantPhoto:(UIImage *)giantPhoto andPhoto:(UIImage *)photo andTitles:(NSInteger)titles andWins:(NSInteger)wins andPodiums:(NSInteger)podiums andPoles:(NSInteger)poles andWithFastestRoutes:(NSInteger)fastestRoutes;
@end

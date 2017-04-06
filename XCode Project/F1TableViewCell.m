//
//  F1TableViewCell.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "F1TableViewCell.h"
#import "Runner.h"
#import "Championship.h"

@interface F1TableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *runnerposition;
@property (weak, nonatomic) IBOutlet UIImageView *runnerIconImage;
@property (weak, nonatomic) IBOutlet UILabel *runnerName;
@property (weak, nonatomic) IBOutlet UILabel *runnerNacionality;
@property (weak, nonatomic) IBOutlet UILabel *runnerTeam;
@property (weak, nonatomic) IBOutlet UILabel *runnerPoints;
@property (weak, nonatomic) IBOutlet UILabel *runnerVictories;


@end

@implementation F1TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor clearColor];
    self.selectedBackgroundView = [UIImageView new];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)setRunner:(Runner *) runner{
    
    _runner = runner;
    self.runnerName.text = runner.name;
    self.runnerNacionality.text = runner.nacionality;
    self.runnerIconImage.image = runner.photo;
    self.runnerTeam.text = runner.team;
    self.runnerVictories.text = [NSString stringWithFormat:@"%d", (int)runner.wins];
    
}

-(void)setChampionship:(Championship *)championship{
    
    _championship = championship;
    self.runnerposition.text = [NSString stringWithFormat:@"%dº", (int)[championship getRunnerPosition:self.runner]];
    self.runnerPoints.text = [NSString stringWithFormat:@"%d", (int)[championship getRunnerPoints:self.runner]];
    
}



@end

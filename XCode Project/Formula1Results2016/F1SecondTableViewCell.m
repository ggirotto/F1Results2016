//
//  F1SecondTableViewCell.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 04/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "F1SecondTableViewCell.h"
#import "Runner.h"
#import "Championship.h"

@interface F1SecondTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *runnerPosition;
@property (weak, nonatomic) IBOutlet UIImageView *runnerIcon;
@property (weak, nonatomic) IBOutlet UILabel *runnerName;
@property (weak, nonatomic) IBOutlet UILabel *runnerNacionality;
@property (weak, nonatomic) IBOutlet UILabel *runnerTeam;
@property (weak, nonatomic) IBOutlet UILabel *runnerPoints;
@property (weak, nonatomic) IBOutlet UILabel *runnerVictories;


@end

@implementation F1SecondTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor blackColor];
    self.selectedBackgroundView = [UIImageView new];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)setRunner:(Runner *) runner{
    
    _runner = runner;
    self.runnerIcon.image = runner.photo;
    self.runnerName.text = runner.name;
    self.runnerNacionality.text = runner.nacionality;
    self.runnerTeam.text = runner.team;
    self.runnerVictories.text = [NSString stringWithFormat:@"%d", (int)runner.wins];
    
}

-(void)setChampionship:(Championship *)championship{
    
    _championship = championship;
    self.runnerPosition.text = [NSString stringWithFormat:@"%d", (int)[championship getRunnerPosition:self.runner]];
    self.runnerPoints.text = [NSString stringWithFormat:@"%d", (int)[championship getRunnerPoints:self.runner]];
    
}

@end

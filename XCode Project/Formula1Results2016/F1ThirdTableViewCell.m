//
//  F1ThirdTableViewCell.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 05/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "F1ThirdTableViewCell.h"

@interface F1ThirdTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titlesLabel;
@property (weak, nonatomic) IBOutlet UILabel *victoriesLabel;
@property (weak, nonatomic) IBOutlet UILabel *podiumLabel;
@property (weak, nonatomic) IBOutlet UILabel *polesLabel;
@property (weak, nonatomic) IBOutlet UILabel *fastestRoutesLabel;


@end

@implementation F1ThirdTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    //self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
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
    self.titlesLabel.text = [NSString stringWithFormat:@"%ld",(long)self.runner.titles];
    self.victoriesLabel.text = [NSString stringWithFormat:@"%ld",(long)self.runner.wins];
    self.podiumLabel.text = [NSString stringWithFormat:@"%ld",(long)self.runner.podiums];
    self.polesLabel.text = [NSString stringWithFormat:@"%ld",(long)self.runner.poles];
    self.fastestRoutesLabel.text = [NSString stringWithFormat:@"%ld",(long)self.runner.fastestRoutes];
    
}

-(void)setChampionship:(Championship *)championship{
    
    _championship = championship;
    
    
}

-(UITableViewCellAccessoryType)tableView:(UITableView *)tv accessoryTypeForRowWithIndexPath: (NSIndexPath *)indexPath {
    
    return UITableViewCellAccessoryNone;
}

//Create a table for different section of app

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    cell.accessoryType = UITableViewCellAccessoryNone;
//    
//}

@end

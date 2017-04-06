//
//  F1SeconViewController.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 05/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "F1SeconViewController.h"
#import "F1Model.h"
#import "F1ThirdTableViewCell.h"


@interface F1SeconViewController ()
@property (weak, nonatomic) IBOutlet UILabel *runnerPosition;
@property (weak, nonatomic) IBOutlet UILabel *runnerName;
@property (weak, nonatomic) IBOutlet UILabel *runnerAge;
@property (weak, nonatomic) IBOutlet UILabel *runnerPoints;
@property (weak, nonatomic) IBOutlet UIImageView *runnerGiantImage;


@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UIView *myView;

@end

@implementation F1SeconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView.dataSource = self;
    self.myTableView.alwaysBounceVertical = NO;
    
    self.runnerPosition.text = [NSString stringWithFormat:@"%ld",[self.championship getRunnerPosition:self.runner]];
    self.runnerPoints.text = [NSString stringWithFormat:@"%ld",[self.championship getRunnerPoints:self.runner]];
    self.runnerName.text = self.runner.name;
    self.runnerAge.text = [NSString stringWithFormat:@"%ld",self.runner.age];
    self.runnerGiantImage.image = self.runner.giantPhoto;
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.myView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Interna_ok.png"]];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0){
        F1ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"titles" forIndexPath:indexPath];
        cell.runner = self.runner;
        cell.championship = self.championship;
        return cell;
    }else if (indexPath.row==1){
        F1ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"victories" forIndexPath:indexPath];
        cell.runner = self.runner;
        cell.championship = self.championship;
        return cell;
    }else if (indexPath.row==2){
        F1ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"podium" forIndexPath:indexPath];
        cell.runner = self.runner;
        cell.championship = self.championship;
        return cell;
    }else if (indexPath.row==3){
        F1ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"poles" forIndexPath:indexPath];
        cell.runner = self.runner;
        cell.championship = self.championship;
        return cell;
    }else if (indexPath.row==4){
        F1ThirdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fastestRoutes" forIndexPath:indexPath];
        cell.runner = self.runner;
        cell.championship = self.championship;
        return cell;
    }
    return nil;
    
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

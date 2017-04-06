//
//  F1TableViewController.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 03/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "F1TableViewController.h"
#import "F1Model.h"
#import "F1TableViewCell.h"
#import "F1SecondTableViewCell.h"
#import "F1SeconViewController.h"

@interface F1TableViewController ()

@property (nonatomic) F1Model *database;

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UINavigationBar *myNavigationBar;

@property (nonatomic) Runner *selectedPilot;
@property (nonatomic) Championship *selectedChamp;

@end

@implementation F1TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.database = [F1Model new];
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.myTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fundo_inicial.png"]];
    
//    UIImage *image = [UIImage imageNamed:@"loguinho.png"];
//    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:image];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault]; //UIImageNamed:@"transparent.png"
    self.navigationController.navigationBar.shadowImage = [UIImage new];////UIImageNamed:@"transparent.png"
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.view.backgroundColor = [UIColor clearColor];
    self.navigationController.view.tintColor = [UIColor whiteColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.database.formulaUm.runners.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0){
        return 440;
    }else{
        return 76;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0){
        F1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstCustomCell" forIndexPath:indexPath];
        cell.runner = self.database.formulaUm.runners[indexPath.row];
        cell.championship = self.database.formulaUm;
        return cell;
    }else{
        F1SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"runnerCell" forIndexPath:indexPath];
        cell.runner = self.database.formulaUm.runners[indexPath.row];
        cell.championship = self.database.formulaUm;
        return cell;
    }
    
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if( segue.identifier && [segue.identifier isEqualToString:@"fromFirstCell"] ) {
        
        F1SeconViewController *destinationViewController = segue.destinationViewController;
        
        destinationViewController.runner = self.selectedPilot;
        destinationViewController.championship = self.selectedChamp;
        
        
    }else if( segue.identifier && [segue.identifier isEqualToString:@"fromSecondCell"] ) {
        
        F1SeconViewController *destinationViewController = segue.destinationViewController;
        
        destinationViewController.runner = self.selectedPilot;
        destinationViewController.championship = self.selectedChamp;
        
        
    }
    
}


-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0){
        F1TableViewCell *cellTouched = [self.myTableView cellForRowAtIndexPath:indexPath];
        self.selectedPilot = cellTouched.runner;
        self.selectedChamp = cellTouched.championship;
    }else{
        F1SecondTableViewCell *cellTouched = [self.myTableView cellForRowAtIndexPath:indexPath];
        self.selectedPilot = cellTouched.runner;
        self.selectedChamp = cellTouched.championship;
    }
    
    return indexPath;
    
}


@end

//
//  F1Model.m
//  Formula1Results2016
//
//  Created by Guilherme Girotto on 04/04/17.
//  Copyright © 2017 Guilherme Girotto. All rights reserved.
//

#import "F1Model.h"
#import "Championship.h"

@implementation F1Model

-(instancetype)init{
    self = [super init];
    if(self){
        
        NSDate *f1Date = [[NSDate alloc] init];
        
        self.formulaUm = [[Championship alloc] initChampionshipWithName:@"Fórmula 1" andDate:f1Date];
        
    }
    [self addRunners];
    return self;
}

-(void)addRunners{
    
    UIImage *runnerPhoto = [UIImage imageNamed:@"1"];
    UIImage *runnerGiantPhoto = [UIImage imageNamed:@"avatar_1"];
    
    Runner *nicoRosberg = [[Runner alloc] initWithName:@"Nico Rosberg" andTeam:@"Mercedes" andAge:31 andNacionality:@"Alemanha" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:22 andWins:34 andPodiums:47 andPoles:12 andWithFastestRoutes:28];
    
    runnerPhoto = [UIImage imageNamed:@"2"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_2"];
    
    Runner *lewisHamilton = [[Runner alloc]initWithName:@"Lewis Hamilton" andTeam:@"Mercedes" andAge:32 andNacionality:@"Inglaterra" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:3 andWins:59 andPodiums:104 andPoles:61 andWithFastestRoutes:31];
    
    runnerPhoto = [UIImage imageNamed:@"3"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_3"];
    
    Runner *danielRicciardo = [[Runner alloc]initWithName:@"Daniel Ricciardo" andTeam:@"RBR" andAge:27 andNacionality:@"Austrália" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:47 andPodiums:18 andPoles:69 andWithFastestRoutes:14];
    
    runnerPhoto = [UIImage imageNamed:@"4"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_4"];
    
    Runner *sebastianVettel = [[Runner alloc]initWithName:@"Sebastian Vettel" andTeam:@"Ferrari" andAge:30 andNacionality:@"Alemanha" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:20 andWins:53 andPodiums:18 andPoles:69 andWithFastestRoutes:14];
    
    runnerPhoto = [UIImage imageNamed:@"5"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_5"];
    
    Runner *maxVerstappen = [[Runner alloc]initWithName:@"Max Verstappen" andTeam:@"RBR" andAge:34 andNacionality:@"Holanda" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:12 andWins:50 andPodiums:8 andPoles:54 andWithFastestRoutes:24];
    
    runnerPhoto = [UIImage imageNamed:@"6"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_6"];
    
    Runner *kimiRaikkonen = [[Runner alloc]initWithName:@"Kimi Räikkönen" andTeam:@"Ferrari" andAge:32 andNacionality:@"Finlandia" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:14 andWins:25 andPodiums:13 andPoles:89 andWithFastestRoutes:16];
    
    runnerPhoto = [UIImage imageNamed:@"7"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_7"];
    
    Runner *sergioPerez = [[Runner alloc]initWithName:@"Sergio Perez" andTeam:@"FIN" andAge:25 andNacionality:@"México" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:10 andWins:51 andPodiums:11 andPoles:61 andWithFastestRoutes:24];
    
    runnerPhoto = [UIImage imageNamed:@"8"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_8"];
    
    Runner *valtteriBottas = [[Runner alloc]initWithName:@"Valtteri Bottas" andTeam:@"Mercedes" andAge:29 andNacionality:@"Finlandia" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:10 andWins:13 andPodiums:11 andPoles:66 andWithFastestRoutes:16];
    
    runnerPhoto = [UIImage imageNamed:@"9"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_9"];
    
    Runner *nicoHulkenberg = [[Runner alloc]initWithName:@"Nico Hulkenberg" andTeam:@"FIN" andAge:27 andNacionality:@"Alemanha" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:53 andPodiums:18 andPoles:69 andWithFastestRoutes:14];
    
    runnerPhoto = [UIImage imageNamed:@"10"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_10"];
    
    Runner *fernandoAlonso = [[Runner alloc]initWithName:@"Fernando Alonso" andTeam:@"MCLaren" andAge:35 andNacionality:@"Espanha" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:30 andWins:33 andPodiums:13 andPoles:39 andWithFastestRoutes:34];
    
    
    
    
    
    [self.formulaUm addRunnerToChampionship:nicoRosberg withPoints:385];
    [self.formulaUm addRunnerToChampionship:lewisHamilton withPoints:380];
    [self.formulaUm addRunnerToChampionship:danielRicciardo withPoints:256];
    [self.formulaUm addRunnerToChampionship:sebastianVettel withPoints:212];
    [self.formulaUm addRunnerToChampionship:maxVerstappen withPoints:204];
    [self.formulaUm addRunnerToChampionship:kimiRaikkonen withPoints:186];
    [self.formulaUm addRunnerToChampionship:sergioPerez withPoints:101];
    [self.formulaUm addRunnerToChampionship:valtteriBottas withPoints:85];
    [self.formulaUm addRunnerToChampionship:nicoHulkenberg withPoints:72];
    [self.formulaUm addRunnerToChampionship:fernandoAlonso withPoints:54];
    
    
}
@end

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
    
    Runner *nicoRosberg = [[Runner alloc] initWithName:@"Nico Rosberg" andTeam:@"Mercedes" andAge:31 andNacionality:@"Germany" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:22 andWins:34 andPodiums:47 andPoles:12 andWithFastestRoutes:28];
    
    runnerPhoto = [UIImage imageNamed:@"2"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_2"];
    
    Runner *lewisHamilton = [[Runner alloc]initWithName:@"Lewis Hamilton" andTeam:@"Mercedes" andAge:32 andNacionality:@"England" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:3 andWins:53 andPodiums:104 andPoles:61 andWithFastestRoutes:31];
    
    runnerPhoto = [UIImage imageNamed:@"3"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_3"];
    
    Runner *danielRicciardo = [[Runner alloc]initWithName:@"Daniel Ricciardo" andTeam:@"RBR" andAge:27 andNacionality:@"Australia" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:4 andPodiums:18 andPoles:1 andWithFastestRoutes:8];
    
    runnerPhoto = [UIImage imageNamed:@"4"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_4"];
    
    Runner *sebastianVettel = [[Runner alloc]initWithName:@"Sebastian Vettel" andTeam:@"Ferrari" andAge:29 andNacionality:@"Germany" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:4 andWins:42 andPodiums:86 andPoles:46 andWithFastestRoutes:28];
    
    runnerPhoto = [UIImage imageNamed:@"5"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_5"];
    
    Runner *maxVerstappen = [[Runner alloc]initWithName:@"Max Verstappen" andTeam:@"RBR" andAge:19 andNacionality:@"Netherlands" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:1 andPodiums:7 andPoles:0 andWithFastestRoutes:1];
    
    runnerPhoto = [UIImage imageNamed:@"6"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_6"];
    
    Runner *kimiRaikkonen = [[Runner alloc]initWithName:@"Kimi Räikkönen" andTeam:@"Ferrari" andAge:37 andNacionality:@"Finland" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:1 andWins:20 andPodiums:84 andPoles:16 andWithFastestRoutes:43];
    
    runnerPhoto = [UIImage imageNamed:@"7"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_7"];
    
    Runner *sergioPerez = [[Runner alloc]initWithName:@"Sergio Perez" andTeam:@"FIN" andAge:27 andNacionality:@"Mexico" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:7 andPoles:0 andWithFastestRoutes:3];
    
    runnerPhoto = [UIImage imageNamed:@"8"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_8"];
    
    Runner *valtteriBottas = [[Runner alloc]initWithName:@"Valtteri Bottas" andTeam:@"Mercedes" andAge:27 andNacionality:@"Finland" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:9 andPoles:0 andWithFastestRoutes:1];
    
    runnerPhoto = [UIImage imageNamed:@"9"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_9"];
    
    Runner *nicoHulkenberg = [[Runner alloc]initWithName:@"Nico Hulkenberg" andTeam:@"FIN" andAge:29 andNacionality:@"Germany" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:1 andWithFastestRoutes:2];
    
    runnerPhoto = [UIImage imageNamed:@"10"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_10"];
    
    Runner *fernandoAlonso = [[Runner alloc]initWithName:@"Fernando Alonso" andTeam:@"MCLaren" andAge:35 andNacionality:@"Spain" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:2 andWins:32 andPodiums:97 andPoles:22 andWithFastestRoutes:22];
    
    runnerPhoto = [UIImage imageNamed:@"11"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_11"];
    
    Runner *felipeMassa = [[Runner alloc]initWithName:@"Felipe Massa" andTeam:@"Williams" andAge:35 andNacionality:@"Brazil" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:11 andPodiums:41 andPoles:16 andWithFastestRoutes:15];
    
    runnerPhoto = [UIImage imageNamed:@"12"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_12"];
    
    Runner *carlosSainz = [[Runner alloc]initWithName:@"Carlos Sainz" andTeam:@"STR" andAge:22 andNacionality:@"Spain" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"13"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_13"];
    
    Runner *romainGrosjean = [[Runner alloc]initWithName:@"Romain Grosjean" andTeam:@"Haas" andAge:30 andNacionality:@"Brazil" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:10 andPoles:0 andWithFastestRoutes:1];
    
    runnerPhoto = [UIImage imageNamed:@"14"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_14"];
    
    Runner *daniilKvyat = [[Runner alloc]initWithName:@"Daniil Kvyat" andTeam:@"STR" andAge:22 andNacionality:@"Russia" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:2 andPoles:0 andWithFastestRoutes:1];
    
    runnerPhoto = [UIImage imageNamed:@"15"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_15"];
    
    Runner *jensonButton = [[Runner alloc]initWithName:@"Jenson Button" andTeam:@"STR" andAge:27 andNacionality:@"England" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"16"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_16"];
    
    Runner *kevinMagnussen = [[Runner alloc]initWithName:@"Kevin Magnussen" andTeam:@"Renault" andAge:24 andNacionality:@"Denmark" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:1 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"17"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_17"];
    
    Runner *felipeNasr = [[Runner alloc]initWithName:@"Felipe Nasr" andTeam:@"Sauber" andAge:24 andNacionality:@"Brazil" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"18"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_18"];
    
    Runner *jolyonPalmer = [[Runner alloc]initWithName:@"Jolyon Palmer" andTeam:@"Renault" andAge:26 andNacionality:@"England" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"19"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_19"];
    
    Runner *pascalWehrlen = [[Runner alloc]initWithName:@"Pascal Wehrlen" andTeam:@"Manor" andAge:22 andNacionality:@"Germany" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"20"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_20"];
    
    Runner *stoffelVandoorne = [[Runner alloc]initWithName:@"Stoffel Vandoorne" andTeam:@"McLaren" andAge:24 andNacionality:@"Belgium" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"21"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_21"];
    
    Runner *estebanGutierrez = [[Runner alloc]initWithName:@"Esteban Gutiérrez" andTeam:@"Haas" andAge:25 andNacionality:@"Mexico" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"22"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_22"];
    
    Runner *marcusEricsson = [[Runner alloc]initWithName:@"Marcus Ericsson" andTeam:@"Sauber" andAge:26 andNacionality:@"Sweden" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"23"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_23"];
    
    Runner *estebanOcon = [[Runner alloc]initWithName:@"Esteban Ocon" andTeam:@"Manor" andAge:20 andNacionality:@"French" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    runnerPhoto = [UIImage imageNamed:@"24"];
    runnerGiantPhoto = [UIImage imageNamed:@"avatar_24"];
    
    Runner *rioHaryanto = [[Runner alloc]initWithName:@"Rio Haryanto" andTeam:@"Manor" andAge:24 andNacionality:@"Indonesia" andGiantPhoto:runnerGiantPhoto andPhoto:runnerPhoto andTitles:0 andWins:0 andPodiums:0 andPoles:0 andWithFastestRoutes:0];
    
    
    
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
    [self.formulaUm addRunnerToChampionship:felipeMassa withPoints:53];
    [self.formulaUm addRunnerToChampionship:carlosSainz withPoints:46];
    [self.formulaUm addRunnerToChampionship:romainGrosjean withPoints:29];
    [self.formulaUm addRunnerToChampionship:daniilKvyat withPoints:25];
    [self.formulaUm addRunnerToChampionship:jensonButton withPoints:21];
    [self.formulaUm addRunnerToChampionship:kevinMagnussen withPoints:7];
    [self.formulaUm addRunnerToChampionship:felipeNasr withPoints:2];
    [self.formulaUm addRunnerToChampionship:jolyonPalmer withPoints:1];
    [self.formulaUm addRunnerToChampionship:pascalWehrlen withPoints:1];
    [self.formulaUm addRunnerToChampionship:stoffelVandoorne withPoints:1];
    [self.formulaUm addRunnerToChampionship:estebanGutierrez withPoints:0];
    [self.formulaUm addRunnerToChampionship:marcusEricsson withPoints:0];
    [self.formulaUm addRunnerToChampionship:estebanOcon withPoints:0];
    [self.formulaUm addRunnerToChampionship:rioHaryanto withPoints:0];
    
    [self.formulaUm sortRunnersByPoints];
    
    
    
}
@end

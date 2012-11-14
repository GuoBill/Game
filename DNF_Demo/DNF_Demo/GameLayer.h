//
//  GameLayer.h
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Hero.h"
#import "SimpleDPad.h"
#import "HudLayer.h"

@interface GameLayer : CCLayer<SimpleDPadDelegate> {
    CCTMXTiledMap *_tileMap;
    CCSpriteBatchNode *_actors;
    Hero *_hero;
}

@property(nonatomic,weak)HudLayer *hud;
@property(nonatomic,strong)CCArray *robots;

-(void)initTileMap;
-(void)initHero;
-(void)updatePositions;
-(void)update:(ccTime)dt;
-(void)setViewpointCenter:(CGPoint)position;
-(void)initRobots;
-(void)reorderActors;
@end

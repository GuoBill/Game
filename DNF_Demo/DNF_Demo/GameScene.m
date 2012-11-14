//
//  GameScene.m
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "GameScene.h"


@implementation GameScene

-(id)init{
    
    if(self = [super init]){
        _gameLayer = [GameLayer node];
        [self addChild:_gameLayer z:0];
        _hudLayer = [HudLayer node];
        [self addChild:_hudLayer z:1];
        
        _hudLayer.dPad.delegate = _gameLayer;
        _gameLayer.hud = _hudLayer;
    }
    
    return self;
}
@end

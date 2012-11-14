//
//  GameScene.h
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "GameLayer.h"
#import "HudLayer.h"

@interface GameScene : CCScene {
    
}
@property(nonatomic,weak)GameLayer *gameLayer;
@property(nonatomic,weak)HudLayer *hudLayer;

@end

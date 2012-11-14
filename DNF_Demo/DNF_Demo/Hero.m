//
//  Hero.m
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Hero.h"
#import "SimpleAudioEngine.h"

@implementation Hero

-(id)init{
    
    if(self = [super initWithSpriteFrameName:@"hero_idle_00.png"]){
              
        int i;
        
          CCArray *idleFrames = [CCArray arrayWithCapacity:6];
           for(i = 0 ; i < 6 ; i++){
            
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:[NSString stringWithFormat:@"hero_idle_%02d.png",i]];
            [idleFrames addObject:frame];
        }
        
        CCAnimation *idleAnimation = [CCAnimation animationWithSpriteFrames:[idleFrames getNSArray] delay:1./12.];
        self.idleAction = [CCRepeatForever actionWithAction:[CCAnimate actionWithAnimation:idleAnimation]];

        
        CCArray *attackFrames = [CCArray arrayWithCapacity:3];
            for(i = 0; i < 3;i++){
                CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:[NSString stringWithFormat:@"hero_attack_00_%02d.png",i]];
                [attackFrames addObject:frame];
            }
         
        CCAnimation *attackAnimation = [CCAnimation animationWithSpriteFrames:[attackFrames getNSArray] delay:1./24.];
        self.attackAction = [CCSequence actions:[CCAnimate actionWithAnimation:attackAnimation],[CCCallFunc actionWithTarget:self selector:@selector(idle)],nil];
        
        
        //walk animation
        CCArray *walkFrames = [CCArray arrayWithCapacity:8];
        for( i = 0; i < 8; i++){
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:[NSString stringWithFormat:@"hero_walk_%02d.png",i]];
            [walkFrames addObject:frame];
        }
        CCAnimation *walkAnimation = [CCAnimation animationWithSpriteFrames:[walkFrames getNSArray] delay:1./12.];
        self.walkAction = [CCRepeatForever actionWithAction:[CCAnimate actionWithAnimation:walkAnimation]];
        
        //hurt animation
        CCArray *hurtFrames = [CCArray arrayWithCapacity:8];
        for( i = 0; i<3;i++){
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:[NSString stringWithFormat:@"hero_hurt_%02d.png",i]];
            [hurtFrames addObject:frame];
        }
        CCAnimation *hurtAnimation = [CCAnimation animationWithSpriteFrames:[hurtFrames getNSArray] delay:1./12.];
        self.hurtAction = [CCSequence actions:[CCAnimate actionWithAnimation:hurtAnimation],[CCCallFunc actionWithTarget:self selector:@selector(idle)],nil];
        
        //knocked out animation
        CCArray *knockedOutFrames = [CCArray arrayWithCapacity:5];
        for( i= 0; i< 5;i++){
            CCSpriteFrame *frame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:[NSString stringWithFormat:@"hero_knockout_%02d.png",i]];
            [knockedOutFrames addObject:frame];
        }
        CCAnimation *knockedOutAnimation = [CCAnimation animationWithSpriteFrames:[knockedOutFrames getNSArray] delay:1./12.];
        self.knockedOutAction = [CCSequence actions:[CCAnimate actionWithAnimation:knockedOutAnimation],[CCBlink actionWithDuration:2. blinks:10.], nil];
        
        
        self.centerToBottom = 39.;
        self.centerToSides = 29.;
        self.hitPoints = 100.;
        self.damage = 20.;
        self.walkSpeed = 80;
    
        self.hitBox = [self createBoundingBoxWithOrigin:ccp(-self.centerToSides, -self.centerToBottom) size:CGSizeMake(self.centerToSides * 2, self.centerToBottom * 2)];
        self.attackBox = [self createBoundingBoxWithOrigin:ccp(self.centerToSides, -10) size:CGSizeMake(20, 20)];
    }
    
    return self;
}

-(void)knockout{
    [super knockout];
    [[SimpleAudioEngine sharedEngine] playEffect:@"pd_herodeath.caf"];
}

@end

//
//  ActionSprite.h
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface ActionSprite : CCSprite {
    
}

//actions
//闲置状态
@property(nonatomic,strong)id idleAction;
//攻击状态
@property(nonatomic,strong)id attackAction;
//走动状态
@property(nonatomic,strong)id walkAction;
//受伤
@property(nonatomic,strong)id hurtAction;
//死亡
@property(nonatomic,strong)id knockedOutAction;

//状态
@property(nonatomic,assign)ActionState actionState;

//性质
@property(nonatomic,assign)float walkSpeed;
@property(nonatomic,assign)float hitPoints;
@property(nonatomic,assign)float damage;

//移动
@property(nonatomic,assign)CGPoint velocity;
@property(nonatomic,assign)CGPoint desiredPosition;

// 
@property(nonatomic,assign)float centerToSides;
@property(nonatomic,assign)float centerToBottom;

@property(nonatomic,assign)BoundingBox hitBox;
@property(nonatomic,assign)BoundingBox attackBox;

-(void)idle;
-(void)attack;
-(void)hurtWithDamage:(float)damage;
-(void)knockout;
-(void)walkWithDirection:(CGPoint)direction;

-(void)update:(ccTime)dt;
-(void)idle;

-(BoundingBox)createBoundingBoxWithOrigin:(CGPoint)origin size:(CGSize)size;

@end

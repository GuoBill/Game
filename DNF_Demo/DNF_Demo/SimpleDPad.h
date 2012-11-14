//
//  SimpleDPad.h
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class SimpleDPad;

@protocol SimpleDPadDelegate <NSObject>

-(void)simpleDPad:(SimpleDPad*)simpleDPad didChangeDirectionTo:(CGPoint)direction;
-(void)simpleDpad:(SimpleDPad*)simpleDPad isHoldingDirection:(CGPoint)direction;
-(void)simpleDPadTouchEnded:(SimpleDPad*)simpleDPad;

@end


@interface SimpleDPad : CCSprite <CCTargetedTouchDelegate> {
    
    float _radius;
    CGPoint _direction;
    
}

@property(nonatomic,weak) id <SimpleDPadDelegate>delegate;
@property(nonatomic,assign) BOOL isHeld;

+(id)dPadWithFile:(NSString*)fileName radius:(float)radius;
-(id)initWithFile:(NSString *)filename radius:(float)radius;
-(void)updateDirectionForTouchLocation:(CGPoint)location;

@end

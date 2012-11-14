//
//  HudLayer.m
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "HudLayer.h"


@implementation HudLayer

-(id)init{

    if(self = [super init]){
        
        _dPad = [SimpleDPad dPadWithFile:@"pd_dpad.png" radius:64];
        _dPad.position = ccp(64.0, 64.);
        _dPad.opacity = 100;
        [self addChild:_dPad];
    }
    return self;
}

@end

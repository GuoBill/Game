//
//  HudLayer.h
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleDPad.h"

@interface HudLayer : CCLayer {
    
}
@property(nonatomic,weak)SimpleDPad *dPad;


@end

//
//  Defines.h
//  DNF_Demo
//
//  Created by Goo Bill on 12-11-13.
//
//

#ifndef DNF_Demo_Defines_h
#define DNF_Demo_Defines_h

 
#define SCREEN [[CCDirector sharedDirector] winSize]
#define CENTER ccp(SCREEN.width/2, SCREEN.height/2)
#define CURTIME CACurrentMediaTime()

 
#define random_range(low,high) (arc4random()%(high-low+1))+low
#define frandom (float)arc4random()/UINT64_C(0x100000000)
#define frandom_range(low,high) ((high-low)*frandom)+low

 
typedef enum _ActionState {
    kActionStateNone = 0,
    kActionStateIdle,
    kActionStateAttack,
    kActionStateWalk,
    kActionStateHurt,
    kActionStateKnockedOut
} ActionState;

 
typedef struct _BoundingBox {
    CGRect actual;
    CGRect original;
} BoundingBox;


#endif

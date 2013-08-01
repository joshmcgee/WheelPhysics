//
//  MyScene.m
//  WheelPhysics
//
//  Created by Josh on 7/31/13.
//  Copyright (c) 2013 Josh. All rights reserved.
//

#import "MyScene.h"
#import "WheelSpriteNode.h"

@interface MyScene ()



@end

@implementation MyScene

static const uint32_t wheelCategory = 0x1 << 0;

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        // Physics:
        self.physicsWorld.contactDelegate = self;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        
//        WheelSpriteNode *wheel = [[WheelSpriteNode alloc] initWithTexture:[SKTexture textureWithImageNamed:@"dummy-circle"] color:nil size:CGSizeMake(32.0, 32.0)];
//        wheel.position = CGPointMake(160.0, 720.0);
        //wheel.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:wheel.size.width/2];
        SKSpriteNode *sprite = [self newSpriteWithSpriteName:@"dummy-circle" withPosition:CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)) name:@"Wheel"];
        
        //SKAction *rotate = [SKAction rotateByAngle:M_PI duration:1.0];
        //[sprite runAction:[SKAction repeatActionForever:rotate]];
        
        [self addChild:sprite];
        
//        SKSpriteNode *sprite2 = [self newSpriteWithSpriteName:@"dummy-circle" withPosition:CGPointMake(CGRectGetMidX(self.frame), CGRectGetMaxY(self.frame)) name:@"Wheel02"];
//        
//        SKAction *rotate2 = [SKAction rotateByAngle:M_PI duration:1.0];
//        [sprite2 runAction:[SKAction repeatActionForever:rotate2]];
//        
//        [self addChild:sprite2];
        
    }
    return self;
}

- (SKSpriteNode *)newSpriteWithSpriteName:(NSString *)spriteName withPosition:(CGPoint)position name:(NSString *)name
{
    SKSpriteNode *sprite = [[SKSpriteNode alloc] initWithImageNamed:spriteName];
    sprite.position = position;//CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    sprite.name = name;
    sprite.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:sprite.size.width/2];
    [sprite.physicsBody setDynamic:YES];
//    sprite.physicsBody.usesPreciseCollisionDetection = YES;
    sprite.physicsBody.categoryBitMask = wheelCategory;
    sprite.physicsBody.collisionBitMask = wheelCategory;
    sprite.physicsBody.contactTestBitMask = wheelCategory;
    return sprite;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    //NSLog(@"Touched!");
    
    for (UITouch *touch in touches) {
        //CGPoint location = [touch locationInNode:self];
        
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//        
//        sprite.position = location;
//        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//        
//        [sprite runAction:[SKAction repeatActionForever:action]];
//        
//        
//        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
   // NSLog(@"update");
}

- (void)didBeginContact:(SKPhysicsContact *)contact {
    
    
    NSLog(@"Scene did begin contact.");
    
    SKPhysicsBody *wheel;
    if (contact.bodyA.categoryBitMask == wheelCategory) {
        wheel = contact.bodyA;
    }
    else {
        wheel = contact.bodyB;
    }
    
//    SKPhysicsBody *firstBody, *secondBody;
//    if (contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask)
//    {
//        firstBody = contact.bodyA;
//        secondBody = contact.bodyB;
//    }
//    else {
//        firstBody = contact.bodyB;
//        secondBody = contact.bodyA;
//    }
//    if ((firstBody.categoryBitMask & missileCategory) != 0)
//    {
//        [self attack: secondBody.node withMissile:firstBody.node];
//        2013-06-10 | Copyright © 2013 Apple Inc. All Rights Reserved. Apple Confidential Information. 98
//        ￼￼￼￼
//        Simulating Physics
//        Working with Collisions and Contacts
//    }
}

@end

//
//  MyScene.m
//  WheelPhysics
//
//  Created by Josh on 7/31/13.
//  Copyright (c) 2013 Josh. All rights reserved.
//

#import "MyScene.h"
#import "WheelSpriteNode.h"

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        // Physics:
        self.physicsWorld.contactDelegate = self;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        
        WheelSpriteNode *wheel = (WheelSpriteNode *)[[SKSpriteNode alloc] initWithTexture:[SKTexture textureWithImageNamed:@"dummy-circle"] color:nil size:CGSizeMake(32.0, 32.0)];
        wheel.position = CGPointMake(160.0, 720.0);
        wheel.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:wheel.size.width/2];
        
        SKAction *rotate = [SKAction rotateByAngle:M_PI duration:1.0];
        [wheel runAction:[SKAction repeatActionForever:rotate]];
        
        [self addChild:wheel];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
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
}

- (void)didBeginContact:(SKPhysicsContact *)contact {
    
    
    NSLog(@"Scene did begin contact.");
}

@end

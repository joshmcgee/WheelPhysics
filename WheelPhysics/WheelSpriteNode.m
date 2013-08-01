//
//  WheelSpriteNode.m
//  WheelPhysics
//
//  Created by Josh on 7/31/13.
//  Copyright (c) 2013 Josh. All rights reserved.
//

#import "WheelSpriteNode.h"

@interface WheelSpriteNode()

@property (assign, nonatomic) float radius;
@property (assign, nonatomic) float maxSpeed;
@property (assign, nonatomic) SKTexture *wheelTexture;

@end

@implementation WheelSpriteNode

- (id)initWithImageNamed:(NSString *)imageName WithRadius:(float)radius WithMaxSpeed:(float)maxSpeed {
    
//    self.maxSpeed = maxSpeed;
//    self.radius = radius;
//    //self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:self.radius];
//
//    self.wheelTexture
//    return [super initWithTexture:imageName color:nil size:CGSizeMake(self.radius, self.radius)];
    NSLog(@"Warning: Wheel init is empty.");
    
    return self;
}


@end

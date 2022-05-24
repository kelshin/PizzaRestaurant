//
//  FirstManager.m
//  PizzaRestaurant
//
//  Created by Kelbin David on 2022-05-20.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "FirstManager.h"

@implementation FirstManager

@synthesize firstManager = _firstManager;

- (id) firstManager {
  if(!_firstManager){
    _firstManager = [[NSObject alloc] init];
  }
  return _firstManager;
}


- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings {
  if ([toppings containsObject:@"anchoives"]){
    return NO;
  }
  return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
  NSLog(@"Making pizza without anchoives");
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return YES;
}

@end

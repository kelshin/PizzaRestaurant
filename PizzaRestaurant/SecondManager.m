//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Kelbin David on 2022-05-20.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager 

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings {
//  [kitchen makePizzaWithSize:(PizzaSize) size toppings:toppings];
  return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
  NSLog(@"Cowabunga!");
  }

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return YES;
}

@end

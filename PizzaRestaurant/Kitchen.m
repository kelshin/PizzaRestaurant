//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
  if (![self.delegate kitchen:self shouldMakePizzaSize:size andToppings:toppings]) {
    return 0;
  }
  if ([self.delegate kitchenShouldUpgradeOrder:self]) {
    size = (PizzaSize) Large;
  }
  Pizza *newPizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
  [self.delegate kitchenDidMakePizza:newPizza];
  return newPizza;
}

@end

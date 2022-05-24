//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kelbin David on 2022-05-19.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

typedef NS_OPTIONS(char, Toppings){
    Ham = 1 << 0,
    Cheese = 1 << 1,
    Bacon = 1 << 2,
    Pepperoni = 1 << 3,
    Pineapple = 1 << 4,
};

@implementation Pizza

- (instancetype)initWithSize: (enum PizzaSize) s andToppings: (NSArray *) tops
{
  self = [super init];
  if (self) {
    _s = s;
    _toppings = tops;
  }
  return self;
}

+(Pizza *) largePeperoni{
Pizza *lPeperoni = [[Pizza alloc] initWithSize:(PizzaSize) Large andToppings:@[@"peperoni",@"cheese"]];
  return lPeperoni;
}

+(Pizza *) meatLoversWithSize:(PizzaSize *) size{
  Pizza *meatlovers = [[Pizza alloc] initWithSize:*size andToppings:@[@"peperoni",@"cheese",@"bacon",@"ham"]];
  return meatlovers;
}

+(Pizza *) hawaiianWithSize:(PizzaSize *) size{
  Pizza *hawaiian = [[Pizza alloc] initWithSize:*size andToppings:@[@"cheese",@"pineapple",@"ham"]];
  return hawaiian;
}

- (NSString *) description {
  return [NSString stringWithFormat:@"%d\" Pizza with %@", [self s], [[self toppings] componentsJoinedByString: @" "]];
}

@end

//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kelbin David on 2022-05-19.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(int, PizzaSize){
  Small = 12,
  Medium = 14,
  Large = 18
};

@interface Pizza : NSObject

@property (nonatomic, readonly) enum PizzaSize s;
@property (nonatomic, readonly) NSArray *toppings;

- (instancetype)initWithSize: (enum PizzaSize) s andToppings: (NSArray *) tops;

+(Pizza *) largePeperoni;
+(Pizza *) hawaiianWithSize:(PizzaSize *) size;
+(Pizza *) meatLoversWithSize:(PizzaSize *) size;

@end

NS_ASSUME_NONNULL_END

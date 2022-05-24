//
//  FirstManager.h
//  PizzaRestaurant
//
//  Created by Kelbin David on 2022-05-20.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

NS_ASSUME_NONNULL_BEGIN

@interface FirstManager : NSObject <KitchenDelegate>

@property (nonatomic, strong) NSObject *firstManager;

@end

NS_ASSUME_NONNULL_END

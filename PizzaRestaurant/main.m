//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "FirstManager.h"
#import "SecondManager.h"
#import "InputCollector.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        InputCollector *userInput = [InputCollector new];
        Kitchen *restaurantKitchen = [Kitchen new];
        FirstManager *m1 = [[FirstManager alloc] init];
        SecondManager *m2 = [SecondManager new];
        while (TRUE) {
          NSLog(@"\nPlease pick your manager\n1. No anchoives\n2. Anything goes\n3. No manager");
        
          NSString *inputManager = [userInput getInput];
          if ([inputManager integerValue] == 1){
            restaurantKitchen.delegate = m1;
          } else if ([inputManager integerValue] == 2){
            restaurantKitchen.delegate = m2;
          } else {
            restaurantKitchen.delegate = nil;
          }
        
          NSLog(@"Please pick your pizza size and toppings:");
          // Loop forever
          NSString *inputString = [userInput getInput];
          // Take the first word of the command as the size, and the rest as the toppings
          NSMutableArray *commandWords = [[NSMutableArray alloc] initWithArray:[inputString componentsSeparatedByString:@" "]];
          NSString *size = commandWords[0];
          [commandWords removeObjectAtIndex:0];
          NSArray *toppings = [[NSArray alloc] initWithArray:commandWords];
          
          Pizza *orderedPizza = [Pizza new];
          if ([size isEqualToString:@"small"]){
            orderedPizza = [restaurantKitchen makePizzaWithSize:(PizzaSize) Small toppings:toppings];
          } else if ([size isEqualToString:@"medium"]){
            orderedPizza = [restaurantKitchen makePizzaWithSize:(PizzaSize) Medium toppings:toppings];
          } else {
            orderedPizza = [restaurantKitchen makePizzaWithSize:(PizzaSize) Large toppings:toppings];
          }
          NSLog(@"%@",orderedPizza.description);
//          NSLog(@"%@", restaurantKitchen);
        }

    }
    return 0;
}


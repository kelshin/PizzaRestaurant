//
//  InputCollector.m
//  PizzaRestaurant
//
//  Created by Kelbin David on 2022-05-20.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *) getInput {
  NSLog(@"\n> ");
  char str[100];
  fgets (str, 100, stdin);
  
  NSString *inputString = [[NSString alloc] initWithUTF8String:str];
  inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  NSLog(@"Input was %@", inputString);
  return inputString;
}
@end

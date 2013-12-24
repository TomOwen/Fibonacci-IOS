//
//  ViewController.h
//  Fibonacci
//
//  Created by Tom Owen on 12/23/13.
//  Copyright (c) 2013 Tom Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mytable;
@property (strong) NSMutableArray *tableData;

@end

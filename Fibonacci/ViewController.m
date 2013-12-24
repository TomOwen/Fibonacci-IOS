//
//  ViewController.m
//  Fibonacci
//
//  Created by Tom Owen on 12/23/13.
//  Copyright (c) 2013 Tom Owen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Initialize table data
	NSString *tempString;
    int i; // used in the "for" loop
    int fcounter = 20; // specifies the number of values to loop through
    int f1 = 1; // seed value 1
    int f2 = 0; // seed value 2
    int fn; // used as a holder for each new value in the loop
    self.tableData = [[NSMutableArray alloc] init];
    for (i=1; i<fcounter; i++){
        
        fn = f1 + f2;
        f1 = f2;
        f2 = fn;
        
        //NSLog(@"here ->%d",fn);
        tempString = [NSString stringWithFormat: @"%d", fn];
        [self.tableData addObject:tempString];
        
    }
    
    //[self.mytable reloadData];
    
    //tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    return cell;
}
@end

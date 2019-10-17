//
//  MJRContactsTableViewController.m
//  Memory-Management
//
//  Created by Marlon Raskin on 10/16/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRContactsTableViewController.h"
#import "MJRContactDetailViewController.h"
#import "MJRContact.h"

@interface MJRContactsTableViewController ()


@end

@implementation MJRContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.loadContacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];

    MJRContact *contact = self.loadContacts[indexPath.row];

    cell.textLabel.text = contact.fullName;
    cell.detailTextLabel.text = contact.phone;
    
    return cell;
}


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/




#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowContactDetailSegue"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        MJRContact *contact = self.loadContacts[indexPath.row];
        MJRContactDetailViewController *detailVC = [segue destinationViewController];
        detailVC.contact = contact;
    }
}


- (NSArray <MJRContact *> *)loadContacts {
    MJRContact *contact1 = [[MJRContact alloc] initContactWithName:@"Cody Nichols" phone:@"5552556644" email:@"cody@email.com"];
    MJRContact *contact2 = [[MJRContact alloc] initContactWithName:@"Forrest Whitaker" phone:@"5559984455" email:@"forrest@email.com"];
    MJRContact *contact3 = [[MJRContact alloc] initContactWithName:@"Jane Goodall" phone:@"5551234567" email:@"jane@email.com"];

    return @[contact1, contact2, contact3];
};

@end

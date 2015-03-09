//
//  ActivityTableViewController.m
//  Train
//
//  Created by Neegbeah Reeves on 3/4/15.
//
//

#import "ActivityTableViewController.h"
#import "Activity.h"
#import "ActivityCustomCell.h"

@interface ActivityTableViewController (){
    NSArray *description;
    NSArray *profilePic;
}

@end

@implementation ActivityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.activity = [NSMutableArray arrayWithCapacity:5];
    
    Activity *act = [[Activity alloc] init];
    act.description = @"JenSelter is now following you";
    act.profilePic = @"JenSelterProfilePic.jpg";
    [self.activity addObject:act];
    
    act = [[Activity alloc] init];
    act.description = @"reevesnick is following 3 people";
    act.profilePic = @"NeeProfilePic.jpg";
    [self.activity addObject:act];
    
    act = [[Activity alloc] init];
    act.description = @"reevesnick commented on JenSelter page";
    act.profilePic = @"NeeProfilePic.jpg";
    [self.activity addObject:act];
    
    act = [[Activity alloc] init];
    act.description = @"JenSelter is following NikkiBellaWWE";
    act.profilePic = @"JenSelterProfilePic.jpg";
    [self.activity addObject:act];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.activity count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"Cell";
    ActivityCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Activity *a = (self.activity)[indexPath.row];
    cell.descriptionLabel.text = a.description;
    cell.profilePicLabel.image = [UIImage imageNamed:a.profilePic];
   // cell.yearLabel.text = movie.year;
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
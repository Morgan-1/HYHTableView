//
//  HYHContactTableVC.m
//  HYHTableView
//
//  Created by skyclass on 15/12/8.
//  Copyright © 2015年 skyclass. All rights reserved.
//

#import "HYHContactTableVC.h"
#import "HYHContact.h"
#import "HYHContactGroup.h"
@interface HYHContactTableVC ()

@property (nonatomic,strong)NSMutableArray * contactGroups;
@end

@implementation HYHContactTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contactGroups = [[NSMutableArray alloc]init];
    [self initData];
       // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 初始化数据
-(void)initData{
    
    HYHContact *contact1 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"san" andPhoneNumber:@"35254661"];
    HYHContact *contact2 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"si" andPhoneNumber:@"12354354"];
    HYHContactGroup * contactGroupA = [[HYHContactGroup alloc]initWithName:@"A" andDetail:@"with names beginning with A" andContacts:[NSMutableArray arrayWithObjects:contact1,contact2, nil]];
    [self.contactGroups addObject:contactGroupA];
    HYHContact *contact3 = [[HYHContact alloc]initWithFirstName:@"C" andLastName:@"wu" andPhoneNumber:@"24366426"];
    HYHContact *contact4 = [[HYHContact alloc]initWithFirstName:@"C" andLastName:@"liu" andPhoneNumber:@"54373657"];
    HYHContactGroup * contactGroupC = [[HYHContactGroup alloc]initWithName:@"C" andDetail:@"with names beginning with C" andContacts:[NSMutableArray arrayWithObjects:contact3,contact4, nil]];
    [self.contactGroups addObject:contactGroupC];

    HYHContact *contact5 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"yi" andPhoneNumber:@"3547346"];
    HYHContact *contact6 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"se" andPhoneNumber:@"54376764"];
    HYHContact *contact7 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"qi" andPhoneNumber:@"85633244"];
    HYHContact *contact8 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"ba" andPhoneNumber:@"563576576"];
    HYHContactGroup * contactGroupG = [[HYHContactGroup alloc]initWithName:@"G" andDetail:@"with names beginning with G" andContacts:[NSMutableArray arrayWithObjects:contact5,contact6,contact7,contact8, nil]];
    [self.contactGroups addObject:contactGroupG];

    HYHContact *contact9 = [[HYHContact alloc]initWithFirstName:@"O" andLastName:@"hao" andPhoneNumber:@"648778888"];
    HYHContactGroup * contactGroupO = [[HYHContactGroup alloc]initWithName:@"O" andDetail:@"with names beginning with O" andContacts:[NSMutableArray arrayWithObjects:contact9, nil]];
    [self.contactGroups addObject:contactGroupO];

    HYHContact *contact10 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"wu" andPhoneNumber:@"24665757"];
    HYHContact *contact11 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"liu" andPhoneNumber:@"76586699"];
    HYHContact *contact12 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"shi" andPhoneNumber:@"87966573"];
    HYHContactGroup * contactGroupQ = [[HYHContactGroup alloc]initWithName:@"Q" andDetail:@"with names beginning with Q" andContacts:[NSMutableArray arrayWithObjects:contact10,contact11,contact12, nil]];
    [self.contactGroups addObject:contactGroupQ];

    
}
#pragma mark - Table view data source

#pragma mark --分组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.contactGroups.count;
}

#pragma mark --每组个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    HYHContactGroup * contactGroup = self.contactGroups[section];
    return contactGroup.contacts.count;
}

#pragma mark -- 定义cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HYHContactGroup * contactGroup = self.contactGroups[indexPath.section];
    HYHContact * contact = contactGroup.contacts[indexPath.row];
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.textLabel.text = [contact getName];
    cell.detailTextLabel.text = contact.phoneNumber;
    
    // Configure the cell...
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    HYHContactGroup * contactGroup = self.contactGroups[section];
    NSString * header = [NSString stringWithFormat:@"%@ %@",contactGroup.name,contactGroup.detail ];
    
    return header;
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

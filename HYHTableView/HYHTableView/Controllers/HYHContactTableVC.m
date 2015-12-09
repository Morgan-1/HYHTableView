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
#pragma mark -- 选中行
@property(nonatomic,strong)NSIndexPath * selectedIndexPath;
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
    
    HYHContact *contact11 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"ssgan" andPhoneNumber:@"3525554661"];
    HYHContact *contact12 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"ssgi" andPhoneNumber:@"12353244354"];
    HYHContact *contact13 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"yfdi" andPhoneNumber:@"354347346"];
    HYHContact *contact14 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"sfse" andPhoneNumber:@"543256764"];
    HYHContact *contact15 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"qsfi" andPhoneNumber:@"85121233244"];
    HYHContact *contact16 = [[HYHContact alloc]initWithFirstName:@"A" andLastName:@"bsgfa" andPhoneNumber:@"53532476576"];
    HYHContactGroup * contactGroupA = [[HYHContactGroup alloc]initWithName:@"A" andDetail:@"with names beginning with A" andContacts:[NSMutableArray arrayWithObjects:contact11,contact12,contact13,contact14,contact15,contact16, nil]];
    [self.contactGroups addObject:contactGroupA];
    
    HYHContact *contact23 = [[HYHContact alloc]initWithFirstName:@"C" andLastName:@"wu" andPhoneNumber:@"24366426"];
    HYHContact *contact24 = [[HYHContact alloc]initWithFirstName:@"C" andLastName:@"liu" andPhoneNumber:@"54373657"];
    HYHContactGroup * contactGroupC = [[HYHContactGroup alloc]initWithName:@"C" andDetail:@"with names beginning with C" andContacts:[NSMutableArray arrayWithObjects:contact23,contact24, nil]];
    [self.contactGroups addObject:contactGroupC];
    
    HYHContact *contact31 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"ydsgi" andPhoneNumber:@"35467346"];
    HYHContact *contact32= [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"sasdge" andPhoneNumber:@"543776764"];
    HYHContact *contact33 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"qfshi" andPhoneNumber:@"8563346244"];
    HYHContact *contact34 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"bsfha" andPhoneNumber:@"56357346576"];
    HYHContact *contact35 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"wusfhfdg" andPhoneNumber:@"248765757"];
    HYHContact *contact36 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"lfshiu" andPhoneNumber:@"734527699"];
    HYHContact *contact37 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"shghi" andPhoneNumber:@"8346573"];
    HYHContact *contact38 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"yhi" andPhoneNumber:@"3466746"];
    HYHContact *contact39 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"sse" andPhoneNumber:@"54765554"];
    HYHContact *contact310 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"shqi" andPhoneNumber:@"85697604"];
    HYHContact *contact311 = [[HYHContact alloc]initWithFirstName:@"G" andLastName:@"bsa" andPhoneNumber:@"565270456"];
    HYHContactGroup * contactGroupG = [[HYHContactGroup alloc]initWithName:@"G" andDetail:@"with names beginning with G" andContacts:[NSMutableArray arrayWithObjects:contact31,contact32,contact33,contact34,contact35,contact36,contact37,contact38,contact39,contact310,contact311, nil]];
    [self.contactGroups addObject:contactGroupG];

    HYHContact *contact49 = [[HYHContact alloc]initWithFirstName:@"O" andLastName:@"hao" andPhoneNumber:@"648778888"];
    HYHContactGroup * contactGroupO = [[HYHContactGroup alloc]initWithName:@"O" andDetail:@"with names beginning with O" andContacts:[NSMutableArray arrayWithObjects:contact49, nil]];
    [self.contactGroups addObject:contactGroupO];

    HYHContact *contact50 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"wufdg" andPhoneNumber:@"246465757"];
    HYHContact *contact51 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"lfshiu" andPhoneNumber:@"765327699"];
    HYHContact *contact52 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"sshghi" andPhoneNumber:@"82756573"];
    HYHContact *contact53 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"yshi" andPhoneNumber:@"35277746"];
    HYHContact *contact54 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"shse" andPhoneNumber:@"54327554"];
    HYHContact *contact55 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"sshqi" andPhoneNumber:@"85632574"];
    HYHContact *contact56 = [[HYHContact alloc]initWithFirstName:@"Q" andLastName:@"bsha" andPhoneNumber:@"56527576"];

    HYHContactGroup * contactGroupQ = [[HYHContactGroup alloc]initWithName:@"Q" andDetail:@"with names beginning with Q" andContacts:[NSMutableArray arrayWithObjects:contact50,contact51,contact52,contact53,contact54,contact55,contact56, nil]];
    [self.contactGroups addObject:contactGroupQ];

    
}
#pragma mark - Table view data source

#pragma mark --分组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    NSLog(@"分组数");
    return self.contactGroups.count;
}

#pragma mark --每组个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSLog(@"每组行数");
    HYHContactGroup * contactGroup = self.contactGroups[section];
    return contactGroup.contacts.count;
}

#pragma mark -- 定义cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"具体cell实体");
    HYHContactGroup * contactGroup = self.contactGroups[indexPath.section];
    HYHContact * contact = contactGroup.contacts[indexPath.row];
    static NSString * cellIndentifier = @"cellStyleDefault";
    static NSString * cellIndentifierWithSwitch = @"cellStyleWithSwitch";
    UITableViewCell *cell;
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifierWithSwitch];
    }else{
    
        cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    }
    if (!cell) {
        if (indexPath.row==0) {
            
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIndentifierWithSwitch];
            UISwitch * sw = [[UISwitch alloc]init];
            [sw addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged ];
            cell.accessoryView = sw;
        }else{
            
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIndentifier];
            cell.accessoryType = UITableViewCellAccessoryDetailButton;
            
        }
    
    }
    if (indexPath.row ==0) {
        ((UISwitch *) cell.accessoryView).tag = indexPath.section;
    }
    cell.textLabel.text = [contact getName];
    cell.detailTextLabel.text = contact.phoneNumber;
    
    // Configure the cell...
    
    return cell;
}

#pragma mark -- switch 的值改变
-(void)switchValueChange:(UISwitch *)sw{

    NSLog(@"value change %ld,%hhd",(long)sw.tag,sw.on);
    
}

#pragma mark -- 定义头标题的内容
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    NSLog(@"定义头标题");
    HYHContactGroup * contactGroup = self.contactGroups[section];
    NSString * header = [NSString stringWithFormat:@"%@ ",contactGroup.name ];
    
    return header;
}

#pragma mark -- 定义尾部的内容
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{

    NSLog(@"定义尾部");
    HYHContactGroup * contactGroup = self.contactGroups[section];
    NSString * footer = contactGroup.detail;
    return footer;
}

#pragma mark -- 每组标题索引
-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{

    NSLog(@"生成索引");
    tableView.sectionIndexBackgroundColor = [UIColor blackColor];
    tableView.sectionIndexColor = [UIColor yellowColor];
    NSMutableArray * indexs = [[NSMutableArray alloc]init];
    for (HYHContactGroup *contactGroup in self.contactGroups) {
        
        [indexs addObject:contactGroup.name];
    }
    
    return indexs;
}

#pragma mark -- 头部的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    NSLog(@"头部的高度");
      if (section/2==0) {
        return 80;
    }else{
    
        return 40;
    }
    
}

#pragma mark -- 底部的高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{

    NSLog(@"底部的高度");
    return 40;
    
}

#pragma mark -- 每行的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"每行的高度");
    return 40;
}

#pragma mark -- 点击行
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    HYHContactGroup * contactGroup = self.contactGroups[indexPath.section];
    HYHContact * contact = contactGroup.contacts[indexPath.row];
    self.selectedIndexPath = indexPath;
    UIAlertController  * alertVC = [UIAlertController alertControllerWithTitle:@"System Info" message:[contact getName] preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [[NSNotificationCenter  defaultCenter] removeObserver:self name:UITextFieldTextDidChangeNotification object:nil];
    }];
    [alertVC addAction: cancelAction ];
    UIAlertAction * resetAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //移除通知
        [[NSNotificationCenter  defaultCenter] removeObserver:self name:UITextFieldTextDidChangeNotification object:nil];
    }];
    [alertVC addAction:resetAction];
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField){
       
        textField.placeholder = @"phone";
        textField.text = contact.phoneNumber;;
        //添加通知
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(alertTextFieldDidChange:) name:UITextFieldTextDidChangeNotification object:textField];
        
    }];
    
    [self presentViewController:alertVC animated:YES completion:nil];

}
#pragma mark -- TextField文本框代理
-(void)alertTextFieldDidChange:(NSNotification *)notification{

    UIAlertController * alertController = (UIAlertController *)self.presentedViewController;
    if (alertController) {
        
        HYHContactGroup * contactGroup = self.contactGroups[self.selectedIndexPath.section];
        HYHContact * contact = contactGroup.contacts[self.selectedIndexPath.row];
        contact.phoneNumber  = alertController.textFields.firstObject.text;
        
        [self.tableView reloadData];

    }
   
    
}

#pragma mark -- 窗口的代理方法，用户存储数据
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{

    if (buttonIndex == 1) {
        UITextField * textField = [alertView textFieldAtIndex:0];
        HYHContactGroup * contactGroup = self.contactGroups[self.selectedIndexPath.section];
        HYHContact * contact = contactGroup.contacts[self.selectedIndexPath.row];
        contact.phoneNumber  = textField.text;
        
        //NSArray * indexPaths = @[self.selectedIndexPath];
        [self.tableView reloadData];
    }
}

#pragma mark -- 重写状态样式方法
-(UIStatusBarStyle)preferredStatusBarStyle{

    return UIStatusBarStyleLightContent;
}
@end







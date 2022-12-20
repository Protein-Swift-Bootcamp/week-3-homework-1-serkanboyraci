# SendingDataWithNotificationCenter
- Added ViewConttroller and added new file as a CocoaTouchClass
- In FirstVC: added Received Data Label and Get Data Button and defined in .swift file
- In SecondVC: added Textfield and Send Data Button and defined in .swift file
- Using NotificationCenter for taking data, in FirstVC we write Notification observer to take data from SecondVC
- Using NotificationCenter for sending data, in SecondVC we write Notification post to send data to FirstVC
- For passing to SecondVC, we use segue and defined as performSegue in FirstVC.

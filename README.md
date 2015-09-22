# README

EmailLater is a Rails app that allows you to send a scheduled email.

## Functionality

* You can create an email and specify the exact time and date it will be delivered
* It will check that the email address is valid
* It will only try to deliver the email if it address is valid
* You can delete an email from the list and it will not be delivered, if it was deleted before the delivery time.
* The email is removed from the list after being delivered
* If the email is not valid it will show that on the email list, the email will be kept until is destroyed.


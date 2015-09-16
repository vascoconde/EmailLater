# README

EmailLater is a Rails app that allows you to send a scheduled email.

## Some throughts on the implementation

Let's create a model *Email* with the following fields: 
 * send_date:datetime
 * to:string
 * subject:string
 * body:text
 * sent:boolean


 The boolean *sent* should be false by default and switched to true when the email is sent.


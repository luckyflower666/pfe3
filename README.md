19/11/2013 Create the following models and association, make them visible. Be careful about the relation when you create a subclass
use mother class's data id to create new data.

rails g scaffold ParseData User:belongs_to username:string password:string authdata:string email:string emailverified:boolean ACL:string objectId:string

rails g scaffold InstallationData Client:belongs_to objectId:string appName:string appVersion:string badge:integer deviceToken:string deviceType:string installationId:string parseVersion:string timeZone:string  


rails g scaffold Preference Client:belongs_to color:string brand:string theme:string 


rails g scaffold SocialData Client:belongs_to facebookToken:string facebookSecret:string facebook:string twitter:string 


rails g scaffold PaymentData Client:belongs_to cardnumber:string cardId:string expirationdata:date securitycode:string


rails g scaffold Client User:belongs_to sizeup:string sizedown:integer sizehoes:integer IMEI:string 


rails g scaffold User name:string firstname:string gender:string age:integer


rails g scaffold Owner User:belongs_to facebookappid:string description:string facebookappkey:string


rails g scaffold Store Owner:belongs_to name:string address:string city:string country:string numberfittingroom:integer type:string 




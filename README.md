# SinatraProject-Somi Pet Manager
[![license](https://img.shields.io/github/license/sydeast/SinatraProject-SMTM.svg?style=flat-square)](https://github.com/sydeast/SinatraProject-SMTM/blob/main/LICENSE)

Flatiron Sintra Project Assessment - Somi's Pet Manager

This growing webapp is a Sinatra based application built to track your pets profile including weight and medical conditions. The application was built using Sinatra, Ruby, HTML/CSS (Bootstrap), and various RubyGems.

## To Run for development or personal use
Clone the repo to your machine and run below command in your terminal to install all gems and their dependencies
```
$ bundle install
```

Next run the migration and seed files. If installing for personal use, run the second command as you will not need seeded data. Passwords for the accounts are in the seed file. Note: Rake Setup command will reset any data currently in the database if you have the database setup.

Development: 

```
$ rake db:setup
```

Personal:
```
$ rake db:migration
```

Now start your local server to access the site in your web browser
```
$ shotgun
```

Open your preferred web browser and in the address bar, navigate to the address as listed replacing the hashes for the port numbers given in your terminal
```
http://localhost:####
```

HAVE FUN!

## Contibuting
Currently this project is an assignment for my course. Once completed, the project will be open for collaboration. In the meantime, please feel free to open pull requests or contact me via a bug creation. PR approval will occur after assessment and if changes are valid.


## Future Work
* Weight Tracker - historic tracking to see if your pet is on the right path
* Weight Ranges - Along with tracking, see if your pet is within range for their type and breed
* Breeds Dropdown Database - multiple databases of various breeds of our furry, feathered, and scaly friends for better organization
* Pet Images - Upload a picture of your furbabies to their profiles
* Account Settings - Update your own name, email, and passwords

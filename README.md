## Freelancer-DB

This project takes the Startbootstrap Freelancer template and replaces portfolio section code, which uses HTML thumbnails and modals, with PHP and MySql database support.

The original Freelancer is a good example of how to use Bootstrap, and that example is maintained here. Each item in the portfolio is implemented by a block of thumbnail HTML, and a block of Bootstrap modal HTML.

The original portfolio has six items. To add a new item, it is a matter of simply cutting and pasting and modifying the new HTML blocks. But as the number of items increases, the index.html file becomes unwieldy.

A tidier way to handle more than a few items would be to programmatically generate the code blocks, since the HTML for each block is the same, only the contents change.

The contents for each portfolio item could be kept in a Javascript array, for example, but I have opted to use a MySql database. This means that the **index.html** will change to **index.php**, but the file will not change when adding items.

The objective of this fork is to provide an easy way to modify the number of portfolio items, without changing the index file.

## Code

The added php code file FreelancerMysqlXxx.php interfaces with MySql. A connection to the **freelancer** database is made, and the first record is loaded into an associative array.

The item information for this record is loaded into two HTML templates (a thumbnail block and a modal block) which are kept in string variables. While there are more records to fetch, new blocks of HTML are appended to the strings.

These code strings are then echoed in the HTML <body> where the original Freelancer thumbnail and modal code blocks were.

Please refer to the file FreelancerMysqlXxx.php. The FreelancerMysqlOld.php uses the traditional mysql functions, the FreelancerMysqlNew.php file uses the new and improved mysql functions.

## Motivation

I had created a Freelancer-type portfolio website that contained around forty items. The size of the index file was about 130k. When changed to use a database, the file's size was reduced to about 25k bytes.

I can now also add and delete items via phpMyAdmin (and providing an image file).

## Installation

The Freelancer **portfolio.sql** file is provided. Using phpMyAdmin, create a database called **freelancer** and import the **portfolio.sql** table.

The biggest obstacle to using MySql databases is configuring the connection. There are so many platforms, providers, and versions that I can't give solutions for all of them. You must provide the connection and database variables in your ConfigFreelancer file (which is inserted at the top of index.php):

**host name** - This varies according to your hosting service, or it could be as simple as "hostname" if you are using WAMP or MAMP.

**database name** - This also varies according to your service. For instance, there might be a string pre-pended to your actual database name.

**username and password** - You might have to add a user (maybe with a password) that can access the database. This can be done via your service, or the username is provided for you if using WAMP or MAMP ("root" in this case).

To get you headed in the right direction, I have provided default configuration files for WAMP and MAMP. The variables will need to change depending upon your platform.

Another problem area is that of which PHP version your service is hosting. As of version 7.0, you are required to use the improved version of mysql functions (mysqli - see my FreelancerMysqlOld/New files).

## API Reference

Some familiarity with php and mysql is assumed. This is not a tutorial in connecting to databases or for learning Bootstrap. Links to docs...

## Files

With the exception of the addition of the **Connections** folder, and the change of **index.html** to **index.php**, the code files for Freelancer-DB  are the same as Freelancer.

The build files from Freelancer (**package.json** and **gulpfile.js**) can be used to build Freelancer-DB.

Please note that you must use the appropriate required files at the top of index.php.

## Future Versions

I hope to use this fork as a starting point for the ultimate portfolio template. I would like to add the following features:

**Show the current ten thumbnails** and use controls to advance to the next ten.

**Arrow keys** that traverse the items while in the modal state.

## Acknowledgements

Start Bootstrap was created by and is maintained by **[David Miller](http://davidmiller.io/)**, Owner of [Blackrock Digital](http://blackrockdigital.io/).

* [Download the latest Freelancer release on Start Bootstrap](http://startbootstrap.com/template-overviews/freelancer/)

* https://twitter.com/davidmillerskt
* https://github.com/davidtmiller

Start Bootstrap is based on the [Bootstrap](http://getbootstrap.com/) framework created by [Mark Otto](https://twitter.com/mdo) and [Jacob Thorton](https://twitter.com/fat).

## License

This forked project continues with Blackrock Digital's MIT license.

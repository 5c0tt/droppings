08.08.2015 — 08:15:50 PM -0700
Scott Haneda [@scotthaneda](https://twitter.com/scotthaneda)

Droppings by Scott Haneda is licensed under a [Creative Commons 
Attribution-Share Alike 3.0](http://creativecommons.org/licenses/by-sa/3.0/us/) United States License. 

Droppings is an automator action for DropBox  
[https://www.getdropbox.com/](https://www.getdropbox.com/)

Droppings allows you to drop a file, folder, or group of file and folders onto it.  Droppings will then take those files and folders and copy them to your Public DropBox Folder, which will be uploaded to your DropBox account.  Finally, url's are created and put into your clipboard for sharing.

**Features:**  

* Handles files and folders, or groups of files and folders
* Maintains leading filename, appends a random md5 string, and a timestamp in order to make it near impossible for others to guess where your public files are located
* Automatically zips folders, and applies the same obfuscation to folders as are done to files
* Daily date stamp folder creation to prevent folder overloading  
* Growl support to alert you when an action has completed
* Simple one command configuration
* Alerts if installed incorrectly
* Notification Center Alerts instead of Growl since Growl seems to be in a bad state.
    
**Installation:**  
Locate one of your public URL's and take note of the ID in the url.  For example, a url such as this:

	http://dl.getdropbox.com/u/123456/Misc/example.png

In that url, the `123456` is your user id.  Open your terminal on OS X, located in ``/Applications/Utilities/Terminal.app``

Paste the below line into your terminal, changing the XXXXXX for our user id.

	echo 'XXXXXX' >> ~/.dropbox_id

Press return.  That is it, now just drag and drop any files and folders onto the Droppings icon.  You can even put it in your Dock for easier access.

* If anyone knows a way to get the user id without user intervention that would be a nice addition.

**Advanced:**  
If you open the Droppings.app in Automator, you can see it is nothing more than a shell script.  On every run a log is saved to `/tmp/dropbox_log.txt` that can be helpful in customizing this application.  There are also other settings in the script that can be changed.
    
The md5 hash on the filename used to create a pseudo random string, is particularly less than ideal.  Maybe someone who knows more about bash can make a better random string.

**Notes and change log**  
*07:39:21 PM [04/13/2009]*  
Fixed bug in which the users user_id was not passed into the url, and my personal user id was.  Since no one reported it, I guess no one is using this software :)

***07:40:25 PM [04/13/2009]***  
Changed the url formatting and storage locations to be as short as I can possibly make them, but still be obfuscated.

***01:36:25 AM [01/03/2010]***  
Looks like dl.getdropbox.com redirects to dl.dropbox.com
Updated url's in source code to reflect that change, in case they stop redirecting the old url.  Also moved a copy of the bash source out to a plain text file called `bash_source.txt`.

***09:38:06 AM [01/27/2010]***  
Added encoding of the pipe character to %7C, currently only spaces and pipes are encoded
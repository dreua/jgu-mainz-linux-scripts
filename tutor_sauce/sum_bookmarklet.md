Bookmarklet to sum the points of a sheet in Sauce
=======
*Disclaimer: I didn't write this and I don't know the author, but I think this is worth
publishing and I hope the author is okay with that. Please contact me if you think otherwise.*

Installation
-------
Create a new bookmark in your browser and set/change the url to this code:

    javascript:(function()%7Bvar%20teams%3D%24(%22table%20td.col_3%22).map(function()%7Bvar%20t%3Dthis.innerHTML.trim()%3Breturn%20%24(this).parent().attr(%22teamname%22%2Ct)%2Ct%7D).get()%3Bteams%3Dteams.filter(function(t%2Ce%2Cr)%7Breturn%20e%3D%3D%3Dr.indexOf(t)%7D).sort()%3Bfor(var%20grades%3Dteams.map(function(t)%7Bvar%20e%3D%24(%22table%20tr%5Bteamname%3D'%22%2Bt%2B%22'%5D%20td.col_10%20span%22).map(function()%7Breturn%20parseFloat(this.innerHTML.trim())%7D).get()%3Breturn%20e.length%3E0%3Fe.reduce(function(t%2Ce)%7Breturn%20t%2Be%7D)%3A0%7D)%2Cresult%3D%22%22%2Ci%3D0%3Bteams.length%3Ei%3Bi%2B%2B)result%2B%3Dteams%5Bi%5D%2B%22%20%3A%20%22%2Bgrades%5Bi%5D%2B%22%20Punkte%20%5Cn%22%3Balert(result)%3B%7D)()


Usage
-----
1. Navigate to the "Submissions" page of any task from the sheet you want to sum.
2. Remove the "/assingment/<number>" from the end of the URL to get a 
list of all submissions for that sheet. (Yes, you have to edit the URL for that.)
3. Open the bookmark you created earlier. You can use the address bar to search for it if - I usually call it ssum.

Warning: You will get wrong results if you graded more than one submission of the same group for the same task.

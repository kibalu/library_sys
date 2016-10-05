# Library_sys
<title>CSC 517 - Project 1</title><br>
The application is hosted here :https://pure-depths-94325.herokuapp.com/  <br>
Following are the things that are already set up :
<ul>
<li>Pre configured admin with email: <b>useremail: example@railstutorial.org , password: foobar</b></li>
<li>There are preset member in system</li>
<li>Some room are preset in system</li>
</ul>
<h3>Feature listing</h3>
* <b>Admin</b>
  * <b><u>Self profile</u></b>:
    * An admin can login and update his/her profile details .
  * <b><u>Manage Admins</u></b>: 
    * Admin can view all the admins through the adminlist on the top of the website.
    * delete the users and admins in the system(except himself and the admin”example@railstutorial.org” )
  * <b><u>Manage Rooms</u></b>: 
    * Admin can create a new room, delete the room, see list of the room. 
    * Only admin can see the history of the room(only list the latest 10 histories of the room, though history model saved all the history )
    * Only admin can cancel the room booked by others: go to the room showpage, if the room is booked by other member,admin also can the cancel button and cancel the room. 
  * <b><u>Manage Members</u></b>: 
    * Displays a list of all library members 
    * See the profile of each member and see the history(only list the latest 10 histories, though history model saved all the history )
    * Add/remover admin to a user, see whether the member is the admin in his profile(only admin can see) 
* <b>Member </b> 
  * Anyone can signup to become a member. He is automatically logged in after signup.He can update his password and name (email update is not allowed).
  * Book a room that is available to member and cancel the room that he booked.
  * See the room that he booked in the profile page and also his history of booking room (only list the latest 10 histories, though history model saved all the history )
* <b>Test</b>
  * we have write the test case to the user model and user controller.
    * users_controller_test(path:test/controllers/users_controller_test.rb):test the function of the controller
    * user_test(path:test/models/user_test.rb):test the function of the model
    * integration test(path:test/integration/):test the important part of the users, like:login, signup, edit.

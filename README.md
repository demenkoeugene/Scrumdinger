# Scrumdinger

My learning project for the course "Develop apps for iOS"
Link: https://developer.apple.com/tutorials/app-dev-training

Following the tutorial, I created a responsive user interface for Scrumdinger using the SwiftUI framework. 
The concept of Scrumdinger, an iOS application that helps users manage their daily scrums, was considered and implemented. 
To keep scrums short and focused, Scrumdinger uses visual and audio cues to indicate when and how long each participant should speak. 
The app also displays a progress screen that shows the time left in the meeting and creates a transcript that users can refer to later.

The app consists of three screens:

### Scrum list

The main screen of the app displays a summary of each of the user’s daily scrums.
Users can tap a row in the list to view the details of a scrum or create a new scrum by tapping the Add (+) button in the navigation bar.

### Scrum detail and edit
The detail screen shows more information about a scrum, including the name of each attendee and a list of previous meetings. Users can modify any of the scrum’s attributes by tapping the Edit button. 
The edit screen includes a picker with which users can change the color theme of each meeting. 
Tapping the Start Meeting button at the top of the list starts a new meeting timer.

### Meeting timer
The progress bar at the top of the meeting timer shows the elapsed and remaining time for the meeting.
The app displays the name of the current speaker in the center of the screen and a button to advance to the next speaker at the bottom of the screen.
Segments in a circular progress ring represent each attendee. When an attendee uses all their time, The meeting ends when the ring is full.

## Conclusions. Value to me

I organise view groups to create more complex views and describe the look and feel of your interface using the declarative syntax of SwiftUI.
Create a single source of truth for your data that SwiftUI shares across the entire view hierarchy.

***Also, with the help of this module, I identified issues that should be considered in more detail, namely concurrency in swift and reactive programming techniques***

<center>
  <div align="center">
    <img src="https://user-images.githubusercontent.com/110675494/224439503-08c4e0c2-7db5-4bbb-9c4a-7b5eb8dee1d4.gif" width="50%" height="50%">
    <img src="https://user-images.githubusercontent.com/110675494/224439867-eb112f31-3c4f-41cd-95c4-b366e5bb7b5a.gif" width="50%" height="50%">
    <img src="https://user-images.githubusercontent.com/110675494/224440624-7d84272b-4d61-47f3-b9f9-9c7f0c301d61.gif" width="50%" height="50%">
 </div>
</center>



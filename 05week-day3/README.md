#### Notes 4/30/2014

# Hospital v4

So, you have a hospital and you're searching through patients, hell yeah. Let's add some more stuff because we just learned some jQuery.

I want you to add validation on the hospital name, patient name, and the medication name in Rails.

For jQuery, I want you to validate the forms in real-time. If the name isn't filled out, you need to disable the form and display a message somewhere on the page telling the user that the names are required. If the name is filled out, you need to remove the verbiage, and enable the button.

I also want you to have your flash messages fade out over time. For example, when you save a patient, hospital, or medication you should have a flash message. So, when this message is displayed, you need to fade it out over a few seconds.

I want you to paginate your pages as well. Group your patients/hospitals/medications up in groups of 10. Anything more then 10, create a new group. If you have 3 groups of patients, you should have 3 links at the bottom for each page: 1 | 2 | 3. Pagination!

-----------------------------------

# Hide the submit button via javascript
  # Play around with selectors until you find your submit button
    # Preferably use a class on the submit button
    # = f.submit "Submit", class: "asdf"
# Find the text boxes we want to validate
  # via javascript
# Find an event on jquery that will allow us to access the
  # data inside of the text box when the user changes it
  
# When that event occurs, check to see what the data is inside the text box
  # if it's empty
    # hide your submit button
  # if it's not empty
    # show your submit button
-----------------------------------

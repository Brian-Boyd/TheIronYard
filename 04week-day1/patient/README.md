=====================================
== Assignment 4/21/2014 (Hospital v2)
=====================================
Change your relationships up a bit. You need to add Hospital and Medication. Your patients should live under your hospitals. And your medications should live under your patients. You should be able to create multiple hospitals and have many patients there. Your medications should also be related to your patients. You should be able to have many medications.

- improve on the app build over the weekend to include the following.

  - Add 2 additional models.
    -Hospital - has_many relationship to patients and medications
    -Medication - belongs_to hospital relationship
  - Revise current model of patient
    -Patient - belongs_to hospital relationship


=====================================
== Assignment 4/17/2014 (Hospital v1)
=====================================
We are creating a tracking system for a patient as he/she goes through a hospital

- Use the Workflow gem we used today to control patient statuses.
- The patient will be transferred from the waiting room, to doctor checkup, to xrays, to surgery, to paying bills, to leaving.
- The patients should be able to jump directly from the waiting room to every status except paying bills
  - This will involve multiple events for each state!
  - I also strongly suggest making 1 route that controls transferring between all states. If you do so, it should accept the previous and state wanted as parameters
- As the patient transfers to leaving the hospital, I want to be presented with a description field to write any details about said patient's trip through the hospital.
- Use HAML!
- Make it look nice.
  - You don't have ot go all out, but at least make it somewhat presentable.
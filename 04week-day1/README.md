== Assignment 4/21/2014 (Hospital Waiting List)

- improve on the app build over the weekend to include the following.

  - Add 2 additional models.
    -Hospital - has_many relationship to patients and medications
    -Medication - belongs_to hospital relationship
  - Revise current model of patient
    -Patient - belongs_to hospital relationship


Commands
========
- rails g controller Hospitals new edit show
- rails g controller Medications new edit show
- rails g model Hospital name:string location:string
- rails g model Medication name:string description:text hopsital_id:integer
or to also add the relationship to the model, use...
- rails g model Medication hopsital:references name:string description:text
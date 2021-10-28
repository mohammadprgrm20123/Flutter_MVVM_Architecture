# Flutter_MVVM_Architecture

Model–View–ViewModel (MVVM) is a very established architectural pattern when it’s come to software development.


# Model
The model represents a single source of truth that carries the real-time fetch data or database-related queries.
This layer can contain business logic, code validation, etc. This layer interacts with ViewModel for local data or for real-time. Data are given in response to ViewModel.

# ViewModel
ViewModel is the mediator between View and Model, which accept all the user events and request that to Model for data. Once the Model has data then it returns to ViewModel and then ViewModel notify that data to View.
ViewModel can be used by multiple views, which means a single ViewModel can provide data to more than one View.

# View
The view is where the user is interacting with Widgets that are shown on the screen. These user events request some actions which navigate to ViewModel, and the rest of ViewModel does the job. Once ViewModel has the required data then it updates View.
Now, we will go through the example which will demonstrate MVVM architecture, for notifying data we will use the Provider state mechanism.




# here work with PMVVM

This application users MVP as it's the best to support iOS applications. 

MVP - The Presenter contains the UI business logic for the View. All invocations from the View delegate directly to Presenter. The Presenter is also decoupled directly from the View and talks to it through an interface. This is to allow mocking of the View in a unit test. One common attribute of MVP is that there has to be a lot of two-way dispatching. For example, when someone clicks the "Save" button, the event handler delegates to the Presenter's "OnSave" method. Once the save is completed, the Presenter will then call back the View through its interface so that the View can display that the save has completed.

MVP tends to be a very natural pattern for achieving separated presentation in Web Forms.

MVC - In the MVC, the Controller is responsible for determining which View is displayed in response to any action including when the application loads. This differs from MVP where actions route through the View to the Presenter. In MVC, every action in the View correlates with a call to a Controller along with an action. In the web each action involves a call to a URL on the other side of which there is a Controller who responds. Once that Controller has completed its processing, it will return the correct View. The sequence continues in that manner throughout the life of the application:

    Action in the View
        -> Call to Controller
        -> Controller Logic
        -> Controller returns the View.

One other big difference about MVC is that the View does not directly bind to the Model. The view simply renders, and is completely stateless. In implementations of MVC the View usually will not have any logic in the code behind. This is contrary to MVP where it is absolutely necessary as if the View does not delegate to the Presenter, it will never get called.
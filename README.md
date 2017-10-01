# kitchenette
a Rails recipe application

#### Requirements:
  - Authentication
  - User roles
    - Should support at least 2 roles (admin & normal)
    - Unique homepage/dashboard for each user role
    - Allow "normal" users to use the app (view recipes) and submit new ones
    - Allow "admin" users to manage the saved and submitted recipes
  - Rspec tests
    - Show how and where tests are configured/written to ensure integrity of the application

### What it's built on:
  - Rails 5
  - Auth with Devise
  - Buzzfeed's Solid CSS for the front end

### Some Notes:

- I was unsure how much testing was required to be considered adequate, so I went ahead and tested the models to make sure that they were valid and that their methods worked. My testing experience is limited, but growing, as I recognize their importance. Going TDD was a great way to keep the project on the rails.

- I kept the database simple, but I would like to implement a markdown system for the next iteration. This would make the user experience/submission process more flexible. On top of that, some kind of tag system would be helpful for the user. Essentially the project would turn into a content-specific blog.

- Only admins can edit: Rather than allow users to manage their submissions (which would require another dashboard and set of permissions, i.e. users can only edit their own submissions), I decided that only admins could edit/modify posts. If this were a professional-grade app, users would be able to edit their own posts, but they would be seen by the admin as a "new submission", so as to avoid confusion about the content of any given submission.
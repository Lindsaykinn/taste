Requirements:
Use the Ruby on Rails framework.

Your models must:

[X] 1. Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships
    DELIVERY:   recipe belongs_to :category
                recipe has_many :comments
                recipe has_many :users, through: :categories
                user has_many :recipes, through: :categories

[X] 2. Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
    DELIVERY: categories has a :name

[X] 3. Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
    DELIVERY:   User Model: validates :email, presence:            true, uniqueness: true
    validates :first_name, :last_name, presence: true 

[X] 4. You must include at least one class level ActiveRecord scope method  a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods (Links to an external site.) within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).
    DELIVERY:   Recipe & Category: 
                def self.alphabetize
                    order(title: :asc)
                end

[X] 5. Your application must provide standard user authentication, including signup, login, logout, and passwords.
    DELIVERY:   used bcrypt gem for has_secure_password.

[X] 6. Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
    DELIVERY:   used omniauth for ability to login with Google

[X] 7. You must include and make use of a nested resource with the appropriate RESTful URLs.

    [X] • You must include a nested new route with form that relates to the parent resource
        DELIVERY:  can create a new recipe from category show page 

    [X] • You must include a nested index or show route
        DELIVERY:  ability to update recipe comments from recipe show page

[X] 8. Your forms should correctly display validation errors.

    [X] a. Your fields should be enclosed within a fieldswitherrors class
        DONE

    [X] b. Error messages describing the validation failures must be present within the view.
        errors present for login error, missing fields for recipes, and prevention of updating recipes & comments if not owner

[X] 9. Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

    [X] • Logic present in your controllers should be encapsulated as methods in your models.
        DONE

    [X] • Your views should use helper methods and partials when appropriate.
        DONE

    [X] • Follow patterns in the Rails Style Guide and the Ruby Style Guide.
        DONE

[X] 10. Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
        SCAFFOLDING NOT USED



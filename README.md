# Deployed Application

https://roobscoobs.github.io/train-project-client/

# Development Process

Prior to knowing the requirements for the development of our second project, I
had in mind to build a workout generator. It would have been a simple GET request
that retrieved workouts already contained in a database. Obviously, this wasn't enough,
so the ability to store, edit and delete workouts would be an awesome feature to have.
It would successfully fulfill the CRUD requirements, and also provide the user with
some pretty useful information.

I started the project with the intention of getting the database up and running as
simply, and therefore quickly, as I could. Initially, I created a second table titled
Workouts, which had a many-to-one relationship with Users. A single User has many
Workouts. In other words, a Workout or many workouts may belong to a User.

The first day went well, but then I thought about the structure of the data, and how
that might be irreconcilable with the nature of the workout program. The program
would contain many different types of workouts, and a user should be able to subscribe
and input their information according to that specific workout which would have distinct
fields and values.

I guess it was not too early to drop the database, so I did. I ran through some similar
steps in setting up the basics, while adding what I thought were the necessary join tables
(the types of workouts), effectively establishing many-to-many relationships between
Users and Workouts. As I was getting deeper into the process, I felt overwhelmed
and couldn't see where this was going.

Well, I could still afford to drop the database and get all my requirements done with
the number of days remaining, so I did just that, again and for the final time.
Here I go, starting from scratch, though, in my third approach, I decided to focus
on a particular discipline – running. Now the user story changes. Rather than
viewing, storing, editing or deleting workouts, a user can do the same with runs.

I kept the relationship equivalent to how it was established the first time in development,
however, I removed the possibility of having different types of workouts.
Data storage was limited to describing the run itself, adding the total
number of miles, the run completion time, and the completion date.

Because of the provided template and the beauty of Rails and ActiveRecord, there
wasn't much left to be done. One of the biggest challenges, however, was trying
to figure out how to constrain the data and its manipulation to the user currently
signed onto the application. It took a lot of trial and error before stumbling
upon the idea of inheritance. The UsersController was inheriting from the ProtectedController
and it was building authentication through current user. Since current user was accessible
through the ProtectedController, it would be possible to apply the inheritance to
the RunsController. It worked, as evident by visiting localhost:3000 and receiving
the notification that access is denied due to missing token.

After having finished the back end and testing the various requests via Curl, it was
time to move onto the client.

## Technologies Used

- Ruby
- Ruby On Rails
- PostgreSQL

# Relationship Diagram



# Future Iterations

As the application stands, it's alright. I would like to revisit the data structure
and increase its complexity to enable the user to input various types of workouts.
In such case, a user can follow any kind of workout program that is pre-loaded on
the website, whether the focus is running, lifting, biking, swimming, calisthenics,
yoga, pilates, etc. data that pertains to the sport of their choosing can still
be stored.

Moreover, I think it would be awesome to grant certain users the ability to not only
add more workout programs, but to edit existing ones, almost creating a wikipedia-esque
site that users can search through for programs that truly fit their needs. 


# Link To Client Repo

https://github.com/RoobScoobs/train-project-client

# OOP school library

> This is an education project that school librarian to Add new students or teachers, Add new books, Save records of who borrowed a given book and when.

## Built with
- Ruby
- OOP

## Getting Started

**To launch the project locally:**

- Clone this repo locally using git in the command line with the following command
```
> https://github.com/RWUBAKWANAYO/OOP-school-library.git
```
- Alternatively, you can just download the complete zip file and extract the folder in your directory

## Usage

### First Approach:

In the project directory,open terminal and run `output file` by pasting this command:

```ruby
> ruby output.rb
```
### Second Approach:

In the project directory,open terminal and run ``` irb ``` command.
After that copy and paste the following commands:

```ruby 
# add Person, Student and Teacher classes

require('./person')
require('./student')
require('./teacher')
test = Person.new(17)
test.instance_eval('of_age?', __FILE__, __LINE__)
test.can_use_services?
student = Student.new('class1', 14)
student.play_hooky
teacher = Teacher.new('medecine', 22)
teacher.can_use_services?

```

```ruby
# decorate a class

require('./person')
require('./capitalize_decorator')
require('./trimmer_decorator')
person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name

```

```ruby
# set up associations

require('./person')
require('./classroom')
require('./student')
require('./book')
require('./rental')
john = Student.new('class1', 20, 'john')
doe = Student.new('class1', 18, 'doe')
classroom = Classroom.new('class1')
classroom.add_student(doe)
classroom.add_student(john)
classroom.students.count
john.classroom.label
doe.classroom.label
classroom.label
classroom.students.map(&:name)
classroom.label = 'class2'
classroom.students.count
john.classroom.label
doe.classroom.label
classroom.label
classroom.students.map(&:name)

person_1 = Person.new(22, 'maximilianus')
person_2 = Person.new(18, 'Bob')
book = Book.new("Relativity Theory", "Albert Einstein")
book.add_rental("2017-12-22", person_1)
book.add_rental("2017-12-25", person_1)
book.add_rental("2017-08-23", person_2)
person_1.rentals.count
person_1.rentals.map{ |rental| rental.date}
person_2.rentals.count
person_2.rentals.map{ |rental| rental.date}
book.rentals.map{ |rental| "#{rental.date} #{rental.person.name} #{rental.book.title}"}
```

```ruby
# Add basic UI

> ruby main.rb
```

## Authors
:bust_in_silhouette: **RWUBAKWANAYO**
- GitHub: [@githubrwubakwanayo](https://github.com/RWUBAKWANAYO)
- LinkedIn: [Rwubakwanayo](https://www.linkedin.com/in/rwubakwanayo-olivier)

👤 Onyeagoziri Precious Akams

* GitHub: [@kamzzy](https://github.com/kamzzy)
* Twitter:[@precious_akams](https://twitter.com/precious_akams)
* LinkedIn:[Onyeagoziri Akams](https://www.linkedin.com/in/onyeagoziri-akams/)
* AngelList:[Onyeagoziri Akams](https://angel.co/u/onyeagoziri-akams)
## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt) licensed.

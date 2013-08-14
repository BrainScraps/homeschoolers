elias = Family.create(name: 'Elias', motto: 'Let Dad Sleep')
price = Family.create(name: 'Price', motto: 'Faith, Love, Live')

isaac = Educator.create(username: 'isaac',
                        email: 'isaac@example.com',
                        password: 'topsecret',
                        password_confirmation: 'topsecret',
                        family_id:  elias.id,
                        forem_admin: true )
patsy = Educator.create(username: 'patsy',
                        email: 'patsy@example.com',
                        password: 'password',
                        password_confirmation: 'password',
                        family_id:  price.id,
                        forem_admin: true  )

milo = Student.create(name: 'Milo', family_id: elias.id, birth: '14-2-2006', gender: 'male', grade: 'k')
jane = Student.create(name: 'Jane', family_id: elias.id, birth: '23-6-2002', gender: 'female', grade: '5')
jesse = Student.create(name: 'Jesse', family_id: price.id, birth: '9-9-2001', gender: 'male', grade: '6')
ruby  = Student.create(name: 'Ruby', family_id: price.id, birth: '15-3-2000', gender: 'female', grade: '8')

comm_calendar = Resource.create( name: 'Pleasanton Community Calendar',
                            subject: 'Other',
                            url: 'http://www.cityofpleasantonca.gov/community/calendar/',
                            grade_level: 'all',
                            price: 0.0,
                            public: true,
                            description: 'Community events in Pleasanton, CA',
                            educator_id: isaac.id)


science_pdf = Resource.create( name: 'Science Standards for 6 grade',
                            subject: 'Science',
                            url: 'http://www.cde.ca.gov/ci/cr/cf/documents/glc6thgradecurriculum.pdf',
                            grade_level: '6',
                            price: 0.0,
                            public: true,
                            description: 'List of science guidelines for 6th grade students in California',
                            educator_id: patsy.id )

civil_war = Resource.create(name: 'Civil War lesson plan',
                            subject: 'History',
                            url: 'http://www.civilwar.org/education/teachers/curriculum/gifted-talented-curriculum.html',
                            grade_level: 'all',
                            public: true,
                            description: "Designed for gifted and talented students- or for students with a special interest in the Civil War- this adaptable enrichment experience will give students the opportunity to conduct an in-depth study of one of several Civil War figures through the lenses of character and leadership.",
                            educator_id: patsy.id)







math_practice = Resource.create(name: 'Math practice 6 grade',
                subject: 'Math',
                url: 'http://www.ixl.com/math/grade-6',
                grade_level:'6',
                public: true,
                price: 9.95,
                description: "Here is a list of all
                of the skills students learn in sixth grade! These skills are organized into
                categories, and you can move your mouse over any skill name to view a sample
                question. To start practicing, just click on any link. IXL will track your
                score, and the questions will automatically increase in difficulty as you
                improve! ",
                educator_id: isaac.id)


math_games = Resource.create(name: 'Math games for 6 grader',
                            subject: 'Math',
                            url: 'http://www.math-play.com/6th-grade-math-games.html',
                            grade_level: '6',
                            public: true,
                            price: 0.0,
                            description: "Here is a list of all of the skills students learn in sixth grade! These skills are organized into categories, and you can move your mouse over any skill name to view a sample question. To start practicing, just click on any link. IXL will track your score, and the questions will automatically increase in difficulty as you improve! ",
                            educator_id: isaac.id)

wasps = Resource.create(name: 'Wasp Lesson Plan',
                            subject: 'Science',
                            url: 'http://wildblumes.blogspot.com/2013/05/wasp-lessons-homeschool.html',
                            grade_level: 'all',
                            public: true,
                            description: "Basic information about wasps with links to activities and articles.",
                            educator_id: patsy.id)

teach_with_movies = Resource.create(name: 'Teach With Movies',
                            subject: 'All Subjects',
                            url: 'http://www.teachwithmovies.org/',
                            grade_level: 'all',
                            public: true,
                            description: "TeachWithMovies.com is the premiere site on the Internet showing teachers how to create lesson plans using movies and film.",
                            educator_id: isaac.id)

planner = Resource.create(name: 'Lesson Planner',
                            subject: 'All Subjects',
                            url: 'http://www.confessionsofahomeschooler.com/blog/2013/05/homeschool-lesson-plannercolorful.html',
                            grade_level: 'all',
                            public: true,
                            description: "This bright and colorful lesson planner will make lesson planning easier!  Five dollars to download the planner, then print and bind at your favorite office supply store.",
                            educator_id: patsy.id)

simple_science = Resource.create(name: 'Simple Science lesson plan',
                            subject: 'Science',
                            url: 'http://www.teacherspayteachers.com/Product/Simple-Science-Volume-1-49237',
                            grade_level: 'all',
                            public: true,
                            description: "This is an awesome resource for any Primary Classroom. For $10 you'll have 10 Science Projects which incorporate children's literature.",
                            educator_id: isaac.id)

music_in_poetry = Resource.create(name: 'Music in Poetry',
                            subject: 'Language Arts',
                            url: 'http://www.smithsonianeducation.org/educators/lesson_plans/music_in_poetry/index.html',
                            grade_level: 'all',
                            public: true,
                            description: "The lessons in this issue from the Smithsonian introduce students to the rhythms of poetry. The focus in on two poetic forms that originated as forms of song: the BALLAD stanza, found throughout British and American literature, and the BLUES stanzas of Harlem Renaissance poet Langston Hughes. The exercises take poetry off the page and put it into terms of movement, physical space, and, finally, music.",
                            educator_id: patsy.id)

film_vocab = Resource.create(name: '3-2-1 Vocabulary: Learning Filmmaking by Making Films',
                            subject: 'Arts',
                            url: 'http://www.readwritethink.org/classroom-resources/lesson-plans/vocabulary-learning-filmmaking-vocabulary-30683.html',
                            grade_level: 'all',
                            public: true,
                            description: "Students are introduced to the vocabulary of film as they go through the process of creating a short original film. This unit provides instruction on key aspects of digital video filmmaking: plotting, script, storyboarding, camera work (shots, angles), and editing (transitions, title, credits, visual effects, sound effects, etc.).",
                            educator_id: isaac.id)

algebra = Resource.create(name: 'Algebra Videos',
                            subject: 'Math',
                            url: 'http://www.hippocampus.org/HippoCampus/Algebra%20%26%20Geometry;jsessionid=B6EF5C7AD27687300103467BFC0BE8AC',
                            grade_level: 'all',
                            public: true,
                            description: "A collection of free videos teaching algebra and geometry skills.",
                            educator_id: patsy.id)

ms_ooking = Resource.create(name: 'Learn to Cook with Martha Stewart',
                            subject: 'Home Economics',
                            url: 'http://store.kobobooks.com/en-us/books/pinit/XXCpNuY5vUiJMc4rL-4w2g',
                            grade_level: 'all',
                            price: 25.00,
                            public: true,
                            description: "Martha Stewart is at your side in the kitchen for $25 through this PBS series, She's teaching you how to hold a chef's knife, select the very best ingredients, truss a chicken, make a perfect pot roast, prepare every vegetable, bake a flawless pie crust, and much more.",
                            educator_id: patsy.id)
color_pencil = Resource.create(name: 'Color Pencil Lessons',
                            subject: 'Art',
                            url: 'http://homeschoolarts.com/colorpencil.htm',
                            grade_level: 'all',
                            public: true,
                            description: "Color pencil art lessons offer a convenient media to the home schooling parent.",
                            educator_id: patsy.id)

life_lessons = Resource.create(name: 'Character Education & Social Skills',
                            subject: 'Life Lessons',
                            url: 'http://www.teacherspayteachers.com/Product/Character-Education-Social-Skills-Bundle-10-best-selling-lessons-materials-481207',
                            grade_level: 'all',
                            price: 3.00,
                            public: true,
                            description: "Bundled together is a collection of 10 character education and social skills lessons that all students need to know. These are life long skills that your students need to be successful in school, home, and in the community. Each lesson sells individually for $3.00 each and is offered in a bundle of 10 for $20.00.",
                            educator_id: patsy.id)

exploratorium = Resource.create(name: 'Science Kits from the Exploratorium',
                            subject: 'Science',
                            url: 'http://www.exploratorium.edu/store/discover',
                            grade_level: 'all',
                            public: true,
                            description: "In the Discover section of the online exploratorium store, you'll find science kits for unlocking the mysteries of the laboratory, hands-on DIY art and electronics kits for finding new ways of putting things together, and how-to books that guide you in obtaining new skills and insights.",
                            educator_id: isaac.id)

jesse_outcome = Outcome.create( grade_level: '6',
                                subject: 'Art',
                                description: 'Film Vocab',
                                due_date: '5-Sept-2013',
                                resource_id: film_vocab.id,
                                student_id: jesse.id)

jesse_outcome2 = Outcome.create( grade_level: '6',
                                subject: 'Math',
                                description: 'Algebra',
                                due_date: '30-Aug-2013',
                                resource_id: algebra.id,
                                student_id: jesse.id)

jesse_outcome3 = Outcome.create( grade_level: '6',
                                subject: 'Math',
                                description: 'Algebra',
                                due_date: '30-Aug-2013',
                                resource_id: algebra.id,
                                finish_date: '19-Aug-2013',
                                student_id: jesse.id)

milo_outcome = Outcome.create( grade_level: 'k',
                                subject: 'Science',
                                description: 'Learning the Solar System',
                                due_date: '30-Aug-2013',
                                resource_id: simple_science.id,
                                student_id: milo.id)

milo_outcome2 = Outcome.create( grade_level: 'k',
                                subject: 'Art',
                                description: 'Drawing Pictures',
                                due_date: '30-Aug-2013',
                                resource_id: color_pencil.id,
                                student_id: milo.id)

things = Forem::Category.new(name: "Things That Went Great").save
bahs = Forem::Category.new(name: "Bay Area Homeschoolers").save
utah = Forem::Category.new(name: "Utah Homeschoolers").save
behav = Forem::Category.new(name: "Behavior, Focus, Motivation Issues").save

thomas = Forem::Category.new(name: "Thomas Jefferson Style").save
charl = Forem::Category.new(name: "Charlotte Mason Style").save

classc = Forem::Category.new(name: "Classical Style").save
monte = Forem::Category.new(name: "Montessori Style").save


cats = []
Forem::Category.all.each do |f|
      isaac.forums << f.id
      patsy.forums << f.id



end





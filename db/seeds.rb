# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

elias = Family.create(name: 'Elias', motto: 'Let Dad Sleep')
price = Family.create(name: 'Price', motto: 'Faith, Love, Live')

isaac = Educator.create(username: 'isaac',
                        email: 'isaac@example.com',
                        password: 'topsecret',
                        password_confirmation: 'topsecret',
                        family_id:  elias.id)
patsy = Educator.create(username: 'patsy',
                        email: 'patsy@example.com',
                        password: 'password',
                        password_confirmation: 'password',
                        family_id:  price.id)

milo = Student.create(name: 'Milo', family_id: elias.id, birth: '2-14-2006', gender: 'male', grade: 'k')
jane = Student.create(name: 'Jane', family_id: elias.id, birth: '2-14-2002', gender: 'female', grade: '5')
jesse = Student.create(name: 'Jesse', family_id: price.id, birth: '2-14-1994', gender: 'male', grade: '11')
ruby  = Student.create(name: 'Ruby', family_id: price.id, birth: '2-14-2000', gender: 'female', grade: '8')

comm_calendar = Resource.create( name: 'Pleasanton Community Calendar',
                            subject: 'Other',
                            url: 'http://www.cityofpleasantonca.gov/community/calendar/',
                            grade_level: 'all',
                            price: 'free',
                            public: true,
                            description: 'Community events in Pleasanton, CA',
                            educator_id: isaac.id)


science_pdf = Resource.create( name: 'Science Standars',
                            subject: 'Science',
                            url: 'http://www.cde.ca.gov/ci/cr/cf/documents/glc6thgradecurriculum.pdf',
                            grade_level: '6',
                            price: 'free',
                            public: true,
                            description: 'List of science guidelines for 6th grade students in California',
                            educator_id: patsy.id )

civil_war = Resource.create(name: 'Civil War lesson plan',
                            subject: 'History',
                            url: 'http://www.civilwar.org/education/teachers/curriculum/gifted-talented-curriculum.html',
                            grade_level: 'all',
                            public: true,
                            description: "Designed for “gifted and talented” students — or for students with a special interest in the Civil War — this adaptable enrichment experience will give students the opportunity to conduct an in-depth study of one of several Civil War figures through the lenses of character and leadership.",
                            educator_id: patsy.id)





math_practice = Resource.create(name: 'Math practice 6 grade',
                            subject: 'Math',
                            url: 'http://www.ixl.com/math/grade-6',
                            grade_level: '6',
                            public: true,
                            price:10,
                            description: "Here is a list of all of the skills students learn in sixth grade! These skills are organized into categories, and you can move your mouse over any skill name to view a sample question. To start practicing, just click on any link. IXL will track your score, and the questions will automatically increase in difficulty as you improve! ",
                            educator_id: isaac.id)


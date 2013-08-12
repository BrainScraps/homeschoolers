# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

elias = Family.create(name: 'Elias', motto: 'Let Dad Sleep')

isaac = Educator.create(username: 'isaac',
                        email: 'isaac@example.com',
                        password: 'topsecret',
                        password_confirmation: 'topsecret',
                        family_id:  elias.id)

milo = Student.create(name: 'Milo', family_id: elias.id, birth: '2-14-2006', gender: 'male', grade: 'k')
jane = Student.create(name: 'Jane', family_id: elias.id, birth: '2-14-2002', gender: 'male', grade: '5')

comm_calendar = Resource.create( name: 'Pleasanton Community Calendar',
                            subject: 'Other',
                            url: 'http://www.cityofpleasantonca.gov/community/calendar/',
                            grade_level: 'all',
                            price: 'free',
                            public: true,
                            description: 'Community events in Pleasanton, CA' )


science_pdf = Resource.create( name: 'Science Standars',
                            subject: 'Science',
                            url: 'http://www.cde.ca.gov/ci/cr/cf/documents/glc6thgradecurriculum.pdf',
                            grade_level: '6',
                            price: 'free',
                            public: true,
                            description: 'List of science guidelines for 6th grade students in California' )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Therapist.destroy_all
Note.destroy_all

therapist = Therapist.create(
    name: 'Testing therapist',
    signature: 'ABC'
)

p "Created Therapist with signature: ABC and name: Testing therapist"

therapist.notes.create!([{
    content: '/sh/ IWP imitative -++--+++-+ 6/10 60%\nerrors: sheep, she, shape'
},{
    content: 'Expressive/Pragmatic Language - book (the tiny seed)\nSTG2: named vocabulary in pictures -visual/verbal/max cues\nsun -+\nfish +\nseed +\nbird - -\ngrass +\nsnow -\nrain -\nfoot -\nflower - -\ntree +\nTotal: 5/13=38%'
}])


p "Created Two Notes"
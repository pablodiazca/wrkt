namespace :db do
  task populate: :environment do

    Workout.destroy_all

    10.times do
      Workout.create(
        name: FFaker::Company.name,
        mood: FFaker::HipsterIpsum.words(10).join(' ')
      )
    end
  end
end
namespace :db do
  task populate: :environment do

      Quote.create(
        :author => 'This name'
        :quote => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium, quisquam. Suscipit dolor placeat voluptatum, saepe vel eos ex, consequuntur molestias nesciunt, exercitationem in expedita voluptate assumenda delectus veritatis, nostrum temporibus!'
      )
    end
  end
end
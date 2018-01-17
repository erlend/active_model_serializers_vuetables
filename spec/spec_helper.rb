require "bundler/setup"
require "active_record"
require "active_model_serializers_vuetables"
ActiveModelSerializers.config.adapter = :vuetables

ActiveRecord::Base.establish_connection(adapter: 'sqlite3',
                                        database: ':memory:')
ActiveRecord::Schema.define do
  create_table :authors, force: true do |t|
    t.string :name
  end

  create_table :books, force: true do |t|
    t.string :title
    t.references :author
  end
end

class Author < ActiveRecord::Base
  has_many :books
end

class Book < ActiveRecord::Base
  belongs_to :author
end

class BookSerializer < ActiveModel::Serializer
  attributes :id, :title
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.after { Author.delete_all; Book.delete_all }
end

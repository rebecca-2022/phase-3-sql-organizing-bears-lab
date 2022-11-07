describe 'populating the bears table' do
  let(:db) do
    SQLite3::Database.new(':memory:')
  end

  before do
    create_sql = File.read("lib/create.sql")
    db.execute_batch(create_sql)
    insert_sql = File.read("lib/insert.sql")
    db.execute_batch(insert_sql)
  end

  
  

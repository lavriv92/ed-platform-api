Hanami::Model.migration do
  change do
    create_table :users do
      primary_key(:id)

      column(:email, String, null: false, unique: true)
      column(:password, String, null: false)
      column(:password_confirmation, String, null: false)
      column(:first_name, String)
      column(:last_name, String)
      column(:created_at, DateTime)
      column(:updated_at, DateTime)
    end
  end
end

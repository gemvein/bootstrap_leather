FactoryBot.definition_file_paths << File.join(
  BootstrapLeather::Engine.root.join 'spec/factories'
)
FactoryBot.find_definitions

FactoryBot.create_list(:doo_dad, 5)
FactoryBot.create_list(:whatzit, 5)
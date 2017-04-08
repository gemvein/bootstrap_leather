FactoryGirl.definition_file_paths << File.join(
  BootstrapLeather::Engine.root.join 'spec/factories'
)
FactoryGirl.find_definitions

FactoryGirl.create_list(:doo_dad, 5)
FactoryGirl.create_list(:whatzit, 5)
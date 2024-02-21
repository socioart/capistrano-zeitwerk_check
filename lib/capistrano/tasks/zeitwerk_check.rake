Capistrano::DSL.stages.each do |stage|
  after stage, "zeitwerk:check"
end

namespace :zeitwerk do
  task :check do
    run_locally do
      execute "bin/rails zeitwerk:check"
    end
  end
end

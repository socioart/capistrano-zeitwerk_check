Capistrano::DSL.stages.each do |stage|
  after stage, "zeitwerk:check"
end

namespace :zeitwerk do
  task :check do
    next if fetch(:skip_zeitwerk_check)

    run_locally do
      execute "bin/rails zeitwerk:check"
    end
  end
end

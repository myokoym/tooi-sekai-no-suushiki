mtimes = {}

loop do
  Dir.glob("*.{rb,csv}") do |path|
    mtime = File.mtime(path)
    if mtimes[path].nil? or
         mtimes[path] != mtime
      system("ruby", "run-test.rb")
      mtimes[path] = mtime
    end
  end

  sleep 1
end

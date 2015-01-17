mtimes = {}

loop do
  Dir.glob("*.rb") do |path|
    mtime = File.mtime(path)
    if mtimes[path].nil? or
         mtimes[path] != mtime
      system("ruby", "test-calculator.rb")
      mtimes[path] = mtime
    end
  end

  sleep 1
end

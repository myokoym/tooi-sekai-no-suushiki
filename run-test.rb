current_dir = File.expand_path(".")
$LOAD_PATH.unshift(current_dir)

require "test-unit"

exit(Test::Unit::AutoRunner.run(true, current_dir))

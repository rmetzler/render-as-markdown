dep-doc:
	bundle exec bin/veye check Gemfile.lock --format=md > DEPENDENCIES.md

sandi:
	bundle exec sandi_meter -g && open ./sandi_meter/index.html

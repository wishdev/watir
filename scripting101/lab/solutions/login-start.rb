require 'toolkit'

# assume we have a new user. (delete user-file and restart server if necessary.)

# login
start_ie("http://localhost:8080")
form = forms[0]
form.name = "ruby"
form.submit
wait

# create a background job
new_job = get_form_by_action("job")
new_job.name = "background"
new_job.submit
wait

# start the day
button_click_by_name("start_day", "start_day")


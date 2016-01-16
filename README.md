
#Single model apps

###Epicodus Instructions (I pulled this repo and updated it on Jan  16, 2016)

Make a To Do list app, with just a single model task model. Don't worry about having a checkbox for done - save marking tasks as done or not until the next step.
On the index page, let users mark tasks as done without deleting them. Here's an example of the how to do this:
    <form action="/tasks/<%= @task.id %>" method="post">
      <input name="_method" type="hidden" value="patch">
      <input name="done" type="hidden" value="true">
      <button>Mark done</button>
    </form>
This will display a button on the page that submits submits a PATCH request to update the task's done attribute to true.

On your view, display done tasks and not done tasks under separate headers. Remember, your views should contain no application logic, and should never access your classes directly - in other words, don't put something like Task.where(:done => false) into your views. Instead, create methods in your model for List#done_tasks and List#not_done_tasks, and then call those methods in the view.

Multiple model apps

To Do list
Allow users to create tasks, list them out, edit them, and delete them. Have a dedicated new page.
Now, combine the new page onto the index page.
Add the ability to have multiple lists.

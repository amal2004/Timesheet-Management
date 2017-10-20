package org.timesheet.web.exceptions;

import org.timesheet.domain.Task;

@SuppressWarnings("serial")
public class TaskDeleteException extends Exception {

	private Task task;
	 
    public TaskDeleteException(Task task) {
        this.task = task;
    }
 
    public Task getTask() {
        return task;
    }

}

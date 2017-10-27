require 'date'

class Task
    attr_accessor :title, :description, :marked
    def initialize (title, description, marked)
        @title = title
        @description = description
        @marked = marked
    end
    def toggle_marked
        if @marked == false
            @marked = true
        else
            @marked = false
        end
    end
    def marked
        if @marked == true
            return "complete"
        else
            return "incomplete"
        end
    end
end

class Due_date < Task
    attr_accessor :date
    def initialize
        super(title, description, marked)
        @date = date

    end
    def add_date
        @date = Date.today + 1
    end
    def show_date
        return @date
    end
end


class Task_list < Task
    attr_accessor :list
    def initialize
        @list = []
        @complete = []
        @incomplete = []
    end
    def complete
        @list.each do |x|
            if x.marked == "complete"
                @complete << x
            else
                @incomplete << x
            end
        end
    end
end

tasklist = Task_list.new

task1 = Task.new("homework", "biology assignment", true)
task1.toggle_marked.add_date
tasklist.list << task1
task2 = Task.new("laundry", "wash colors",true)
task2.toggle_marked
task2.add_date
tasklist.list << task2
task3 = Task.new("bills", "pay the internet bill", false)
task3.toggle_marked
tasklist.list << task3
task4 = Task.new("email", "check my email", true)
task4.toggle_marked
task4.add_date
tasklist.list << task4
tasklist
tasklist.complete
p tasklist


# my_tasks = Task_list.new
# my_tasks.list << task1
# my_tasks.list << task2
# my_tasks.list << task3
# my_tasks.list << task4

# p.my_tasks

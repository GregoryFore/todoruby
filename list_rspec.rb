require 'rspec'
require_relative 'list'

# Story: As a developer, I can create a Task.
describe "Task" do
    it "has to be real" do
        expect{Task.new("title", "description", false)}.to_not raise_error
    end
#Story: As a developer, I can give a Task a title and retrieve it.
    it "has a title" do
        title = Task.new("title", "description", false)
        expect(title.title).to be_a String
    end
# Story: As a developer, I can give a Task a description and retrieve it.
    it "has a description" do
        description = Task.new("title", "description", false)
        expect(description.description).to be_a String
    end
# Story: As a developer, I can mark a Task done.
    it "has to start as false" do
        marked = Task.new("title", "description", false)
        expect(marked.marked).to be false
    end

# Story: As a developer, when I print a Task that is done, its status is shown.
    it "has to be marked as true or false" do
        marked = Task.new("title", "description", false)
        expect(marked.marked).to be false or True
    end
end

# Story: As a developer, I can add all of my Tasks to a TaskList.
describe "Task_list" do
    it "can make an empty array" do
        a_task_list = Task.new("title", "description", false)
        a_task_list = []
        expect(a_task_list).to eq []
    end
end

# Story: As a developer with a TaskList, I can get the completed items.
describe "Completed_items" do
    it "has the complted tasks" do

    end
end

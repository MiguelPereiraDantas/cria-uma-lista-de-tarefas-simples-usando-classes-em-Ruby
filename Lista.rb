class Task
    attr_accessor :description, :status
  
    def initialize(description)
      @description = description
      @status = false
    end
  
    def mark_as_done
      @status = true
    end
  end
  
  class TaskList
    attr_accessor :tasks
  
    def initialize
      @tasks = []
    end
  
    def add_task(task)
      @tasks.push(task)
    end
  
    def show_tasks
      puts "Lista de Tarefas:"
      @tasks.each_with_index do |task, index|
        status = task.status ? "[X]" : "[ ]"
        puts "#{index + 1}. #{status} #{task.description}"
      end
    end
  end
  
  # Exemplo de uso
  task1 = Task.new("Fazer compras")
  task2 = Task.new("Estudar para o exame")
  task3 = Task.new("Fazer exercícios físicos")
  
  list = TaskList.new
  list.add_task(task1)
  list.add_task(task2)
  list.add_task(task3)
  
  list.show_tasks
  
  # Marcar a primeira tarefa como concluída
  list.tasks[0].mark_as_done
  
  puts "\nApós marcar a primeira tarefa como concluída:"
  list.show_tasks
  
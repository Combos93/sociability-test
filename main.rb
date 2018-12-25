require_relative "test"
require_relative "result_printer"

current_path = File.dirname(__FILE__)
questions_path = current_path + "/data/questions.txt"
results_path = current_path + "/data/results.txt"
# Создаем объекты, обратите внимание, что конструкторам не нужно никаких
# параметров, т.к. всю информацию мы «захардкодили» в классы. Иногда это удобно.
test = Test.new(questions_path)
result_printer = ResultPrinter.new(results_path)

# Основной цикл программы. Конструкция until работает также, как и while, только
# пока условие НЕ выполнено.
until test.finished?
  # Пока тест не закончился, задаем пользователю следующий вопрос методом
  # next_question нашего экземпляра класса Test.
  test.next_question
end

# Вводим результаты теста методом print_result у объекта класса ResultPrinter
result_printer.print_result(test.points)

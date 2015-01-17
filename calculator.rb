class Calculator
  OPERATORS = [
    "|",
    "&",
    "+",
    "*",
  ]

  def execute(text)
    terms = text.scan(/\d+|\D/)
    OPERATORS.each do |operator|
      terms = execute_an_operator(terms, operator)
    end
    terms.first
  end

  private
  def execute_an_operator(terms, operator)
    new_terms = []
    buffer_terms = []
    index = 0
    while terms[index]
      term = terms[index]
      buffer_terms << term
      if term == operator
        index += 1
        buffer_terms << terms[index]
        result = eval(buffer_terms.join)
        buffer_terms = [result]
      elsif OPERATORS.include?(term)
        new_terms += buffer_terms
        buffer_terms = []
      end
      index += 1
    end
    new_terms + buffer_terms
  end
end

RubyVM::InstructionSequence.compile_option = {
    tailcall_optimization: true,
    trace_instruction: false
}

require_relative 'fib_tail_recursive'
puts fibonacci(7)
puts fibonacci(1000000)
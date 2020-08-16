.global square

square:                                 # @square
        pushq   %rbp
        movq    %rsp, %rbp
        movl    $10, %eax
        popq    %rbp
        retq

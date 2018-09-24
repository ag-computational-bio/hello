#!/usr/bin/env nextflow
echo true

Channel.from('Bonjour', 'Ciao', 'Hello', 'Hola')
  .set{ch_greetings}

process sayHello {
  input: 
    val x from ch_greetings
  script:
    """
    echo '$x world!'
    """
}

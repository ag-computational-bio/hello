#!/usr/bin/env nextflow
Channel.from('Bonjour', 'Ciao', 'Hello', 'Hola')
  .set{ch_greetings}

process sayHello {

    echo true

  input: 
    val x from ch_greetings
  script:
    """
    echo '$x world!'
    """
}

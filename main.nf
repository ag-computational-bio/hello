#!/usr/bin/env nextflow
echo true

Channel.from('Bonjour', 'Ciao', 'Hello', 'Hola')
  .set{ch_greetings}

process sayHello {

  container "ubuntu:18.04"
  input: 
    val x from ch_greetings
  script:
    """
    echo '$x world!'
    """
}

#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {

  container "ubuntu:18.04"
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}

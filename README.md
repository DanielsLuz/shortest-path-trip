# shortest-path-trip #

Esta é uma implementação do algoritmo de Dijkstra para encontrar o menor caminho entre dois pontos
de um grafo.

## Instruções de uso ##

As dependências são gerenciadas usando `bundle`, para instalar rode:

```shell
$ bundle install
```

A execução é feita por meio de uma task Rake, que pode ser conferida [aqui](lib/tasks/console.rake).
E a estrutura do comando é dada por:
```shell
$ # É possível que seja necessário colocar o `bundle exec` antes do comando
$ rake main:run[<path/to/input/file.csv>,<source>-<target>]
```

Para executar de acordo com o [arquivo de instruções](INSTRUCTIONS.md), basta:

```shell
$ # É possível que seja necessário colocar o `bundle exec` antes do comando
$ rake main:run[resources/input-file.csv,GRU-CDG]
  Best route: GRU -> BRC -> SCL -> ORL -> CDG
```

O arquivo de entrada fornece as arestas do grafo, e sua estrutura pode ser verificada no diretório
"resources". Da seguinte forma:
```csv
<nodo-origem>,<nodo-destino>,<peso-da-aresta>
```

Exemplo:

```csv
GRU,BRC,10
BRC,SCL,5
GRU,CDG,75
```

## Estrutura da aplicação ##

A base da aplicação é baseada na estrutura do Ruby on Rails, que nos dá uma série de facilidades em
relação a estrutura de diretórios, testes, debug, console, etc.

Nessa base, a importação dos módulos é tratada automaticamente, então os módulos ficam visíveis
entre si, sem a necessidade de importação manual.

O diretório `src` pode ser estruturado de acordo com a necessidade. Na sugestão atual, as pastas
`modules` e `lib` possuem os módulos específicos da aplicação e os módulos que podem ser exportados,
respectivamente.

O setup de testes é feito utilizando a gema `rspec`, e os testes podem ser rodados com o comando:
```shell
$ # É possível que seja necessário colocar o `bundle exec` antes do comando
$ rspec
```

Com a utilização da gema `pry`, podemos executar um console por meio da task `rake console`, já com os
módulos importados para possíveis execuções pontuais. E o debugging pode ser feito colocando a linha
`byebug` em qualquer lugar do código também (gema `pry-byebug`).

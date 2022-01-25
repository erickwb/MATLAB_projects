# MATLAB_projects

## Arquivos 
* Convolucao.m
* Decompoem_sinal.m
* main.m

### Como compilar
Para testa as funções basta descomentar sua seção no arquivo main e execultar o programa. 

__Seção 01:  Decompoem_sinal__

__Seção 02: Convolucao__

## Exemplos de caso de teste 
Para utilizar os exemplos de caso de teste basta copiar os valores de cada parametro 

### Decompoem_sinal.m
#### exemplo 01:

__n__ = 0:10

__x__ = (n1>=0)-(n1>=10)

#### exemplo 02:

__n__ =  0:15

__x__ = (n1<=0)+(n1<=10)

### Convolucao.m
#### exemplo 01:

__n_x__ = -3:3

__n_h__ = -3:3

__x__ = [0,5,2,3,0,0,0]

__h__ = [0,2,4,0,0,0,0]

#### exemplo 02:

__n_x__  = 1:9

__n_h__ = 4:15

__x__ = (n_x>=4 & n_x<=7)

__h__ = (n_h>=6 & n_h<=10)

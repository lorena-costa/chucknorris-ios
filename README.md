#  Chuck Norris APP iOS

## Compilação

O aplicativo foi feito utilizando o CocoaPods, portanto é necessário instalar as dependências:

```
pod install
```

Caso não tenha o CocoaPods instalado:

```
sudo gem install cocoapods
pod setup --verbose
```

Os testes foram feitos utilizando os emuladores do XCode. 

## Arquitetura

A arquitetura utilizada foi a MVVM, dividida em duas partes principais:

* ListView: Tela para a lista de categorias
* DetailView: Tela com os detalhes da piada de determinada categoria

Além das Views principais, existe uma auxiliar para o processo de cache de imagens.
Todas as Views estão contidas na pasta **View**.
Todos os Models e ViewModels estão na pasta **Model**.

A pasta **Util** contém código auxiliar o restante da aplicação:

* HTTPService: classe auxiliar para realização de requisições HTTP utilizando a biblioteca Alamofire.
* CustomNavigationView: Extensão para modificar o estilo da barra de navegação.
* Formatter: Extensão para formatar String.

**Obs:** Apesar de existirem as pastas para teste, nenhum teste foi implementado.

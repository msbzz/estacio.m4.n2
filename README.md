# Missão Prática | Nível 2 | Mundo 4


- Introdução

```
Esta atividade esta dividida em duas partes sendo a primeira a 
de Microatividades (Parte 1) e a segunda, desenvolvimento de um App (Parte 2)
```


- Objetivos da prática
```
   - Configurar o ambiente de desenvolvimento Flutter;
   - Utilização de widgets Básicos; 
   - Criação de layouts básicos;
   - Utilização do Widget ListView em Flutter.
   - Desenvolvimento de Outra Funcionalidade para o Widget em Flutter.
``` 

 - Especificação

https://sway.cloud.microsoft/s/MaC4thQaZwjelq5H/embed


- obs: cada microatividade esta sendo representada como um compomente

# Microatividades (Parte 1)


## 1 - Preparação do ambiente

- Material necessário para a prática

Flutter SDK (Pode ser baixado no site oficial do Flutter);
Android Studio e/ou um editor de texto (Intellij idea community);
Git para controle de versionamento;
Emulador Android ou iOS para testar o aplicativo

- Descrição
``` 
Esta atividade tem como objetivo preparar a configuração do ambiente de
desenvolvimento Flutter para a plataforma Windows, MacOS e Linux,
fornecendo-lhes as ferramentas essenciais e orientações para começar a criar
aplicativos móveis com esta tecnologia.  

No meu caso foi feito para ambiente Windows
``` 
Instalando o VSCODE : https://code.visualstudio.com/

Instalando o flutter no Windows : https://docs.flutter.dev/get-started/install/windows

Instalando o Node :  https://nodejs.org/en
 
Instalando o android studio : https://bit.ly/492ToHS

2. Após a conclusão das instalações, você pode verificar se o Node.js e o npm estão
instalados abrindo um prompt de comando e executando os seguintes comandos:

> node --version 
> npm  --version

<img src="images/versao.node.npm.png" alt="" style="width: 55%; display: block;"/>
 
 - verificação do flutter doctor

 > flutter doctor

<img src="images/flutter.doctor.png" alt="" style="width: 55%; display: block;"/>

 
obs: optei pelo yarn ao invés do npm que tem foco na velocidade, segurança e confiabilidade.

>npm install --global yarn


 ### Configurações adicionais

 - Instalação do Android Studio  

  Vá para https://developer.android.com/?hl=pt-br 
  
  procure logo abaixo por "Fazer download do android studio"

 <img src="images/install.androidStudio.png" alt="" style="width: 55%; display: block;"/>

<BR>

- No meu caso minha instalação ficou assim :

``` 
Android Studio Giraffe | 2022.3.1 Patch 3
Build #AI-223.8836.35.2231.11005911, built on October 25, 2023
Runtime version: 17.0.6+0-b2043.56-10027231 amd64
VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o.
Windows 11 10.0
GC: G1 Young Generation, G1 Old Generation
Memory: 1280M
Cores: 8
Registry:
    external.system.auto.import.disabled=true
    ide.text.editor.with.preview.show.floating.toolbar=false

Non-Bundled Plugins:
    Dart (223.8977)
    io.flutter (76.3.2) 

``` 
- Android Studio

 
<img src="images/androidStudio.png" alt="" style="width: 55%; display: block;"/>
 <BR>
- Android SDK 

 <BR>
 <img src="images/androidSdk.png" alt="" style="width: 55%; display: block;"/>

  <BR>
 - Emulator : No meu caso, optei por executar o emulador via arquivo bat
  
 <BR>
<img src="images/emulador.bat" alt="" style="width: 55%; display: block;"/>

  <BR>

## Criando o app de microatividades

 -  Agora abra um prompt e vá para o diretório onde você deseja que o projeto fique e execute o seguinte comando:

> flutter create microatividades

    
 -  Depois que o projeto for criado, vá para o diretório do projeto executando o seguinte
comando no prompt de comando:

> cd microatividades

> code .

<img src="images/app.microatividades.png" alt="" style="width: 55%; display: block;"/>

Resultados esperados
```
Ao concluir esta microatividade, você estará habilitado a desenvolver
aplicações de maneira ágil, segura e flexível. Iniciando com a
configuração e instalação do Flutter em sua máquina, você terá os
fundamentos necessários para criar aplicativos incríveis.

```
 <BR> 
 <img src="images/microatividade1.final.png" alt="" style="width: 85%; display: block;"/>
 
<br>

## 2 - Utilização de Widgets Flutter Básicos - MaterialApp, Scaffold e AppBar

- Descrição:
```
Nesta atividade, foi a de implementar a funcionalidade de
entrada de texto em um componente React Native. Tambem criamos um
componente que permite aos usuários inserir textos e ver a tradução
desse texto em forma de emojis de pizza. Isso envolve o uso do
componente TextInput, a manipulação de eventos de alteração de
texto (onChangeText), e a exibição do resultado traduzido em tempo
real. Ao final desta atividade, se tem um componente React Native
funcional que demonstra uma interação de entrada de texto.
```

- Criar pasta 'src' e em seguida pasta 'components\index.tsx' 

 <BR> 
 <img src="images/microatividade2.codigo.final.png" alt="" style="width: 55%; display: block;"/>

 <BR>

  - Resultados esperados
```
Ao seguir esses passos, você terá implementado com sucesso a
funcionalidade de entrada de texto em um componente React Native. O
componente permitirá que o usuário insira texto e o traduzirá para
emojis de pizza, similar ao exemplo fornecido.
```

<img src="images/microatividade2.final.png" alt="" style="width: 55%; display: block;"/>

## 3 - Implementar um Componente de Lista Dinâmica (ScrollView)

- Descrição
```
Nesta atividade, foi a criar um componente de lista que
permite exibir informações de forma dinâmica em um aplicativo React
Native. Isso é útil quando você deseja criar uma lista que pode conter
vários tipos de elementos, como texto e imagens, e que pode ser
rolada verticalmente.
```

- Nessa atividade, optei por experimentar outro tamanho de fontes assim como criação de estilos

<BR>

<img src="images/microatividade3.final.png" alt="" style="width: 55%; display: block;"/>

<BR>

 Resultados esperados

 ``` 
Ter criado um componente React Native que permite exibir informações de 
forma dinâmica em uma lista rolável, contendo elementos heterogêneos, 
como texto e imagens. Isso é útil para criar interfaces de usuário 
mais complexas e interativas em seu aplicativo. A seguir são apresentadas 
imagens do resultado após a execução do código.
``` 
<BR>

<img src="images/app.microatividade3.2.final.png" alt="" style="width: 55%; display: block;"/>


## 4 - Criando o visualizador de listas

- Descrição
``` 
Criar um componente React Native que permitirá exibir informações de forma 
dinâmica em uma lista. Isso é útil quando você tem um grande conjunto de 
dados e deseja que apenas os itens visíveis sejam renderizados para economizar recursos.

``` 
### 1. Criando uma Lista Simples:

- Lista simples usando flatList (você pode substituir os nomes da lista de acordo com sua
necessidade)

<img src="images/microatividade4.flatList.final.png" alt="" style="width: 55%; display: block;"/>

## 2. Criando uma Lista com Seções:

Lista com seções lógicas, talvez com cabeçalhos de seção, então um SectionList é o caminho a percorrer.
Usando uma SectionList:

<img src="images/microatividade4.listaBasica.final.png" alt="" style="width: 55%; display: block;"/>


 Resultados esperados
``` 
Ter um componente React Native que pode exibir informações de forma dinâmica 
em uma lista, economizando recursos ao renderizar apenas os itens visíveis na tela.
Poder personalizar esses componentes para atender às suas necessidades específicas ao 
trabalhar com grandes conjuntos de dados.
``` 

## 5 - Empregar imagens,seja para exibir gráficos, ícones, fotos ou outros elementos visuais em um aplicativo React Native


- Descrição
``` 
Incorporar imagens em um aplicativo React Native. Imagens são usadas para exibir gráficos,
ícones, fotos e outros elementos visuais em um aplicativo.  
``` 

Imagens de diferentes fontes, incluindo armazenamento local, rede e um esquema 'data:':

<BR>
<img src="images/displayImage.png" alt="" style="width: 55%; display: block;"/>

<BR>
Aqui foram adicionados estilos a uma imagem

<BR>
<img src="images/DisplayAnImageWithStyle.png" alt="" style="width: 55%; display: block;"/>

<BR>

Resultados esperados
 
```
Ter incorporado imagens ao aplicativo React Native e aprendido a aplicar estilos 
às imagens para personalizá-las de acordo com suas necessidades.
```

## 6 Composição do app do Gato

- Neste ultimo exercicio, modifique a funcionalidade para que utilizasse eventos e estado com isso o resultado foi que ao se digitar o nome, este é condiderado no dialogo.

<BR>
<img src="images/appGato.png" alt="" style="width: 55%; display: block;"/>

<BR>

# Desenvolvimento de um App (Parte 2) 

- Descrição
```
Nessa atividade é tudo o que utilizado tudo que foi apresentado nas micro
atividades anteriores. Além disso, também é varificado como o React
Native responde a eventos.
```

- Contextualização
```
A empresa "Meeting" busca criar um aplicativo móvel eficaz para o
cadastro de fornecedores, com listas e imagens de alta qualidade,
economizando recursos e proporcionando uma excelente experiência
ao usuário. A escolha da tecnologia React Native é crucial para
estabelecer uma presença sólida no mercado móvel. Nesta atividade,
você aprenderá os princípios básicos do React Native.
```
Requisitos Funcionais:

- Cadastro de Fornecedores: O aplicativo deve permitir o cadastro
de fornecedores, incluindo informações detalhadas, como nome,
endereço, contato e categorias de produtos fornecidos. Essas
informações serão exibidas utilizando componentes como <Text>,
<TextInput>, e <Image>.

- Listagem de Fornecedores: Deve ser possível visualizar uma lista
de fornecedores cadastrados, com opções de pesquisa e filtragem
com base em critérios como categoria ou localização. A lista de
fornecedores será exibida utilizando componentes como <Text> e
<Image>.

- Associação de Imagens: O aplicativo deve permitir a associação de
imagens aos perfis dos fornecedores. Os usuários devem poder
fazer o upload de logotipos ou fotos relacionadas ao fornecedor,
utilizando o componente <Image>.

- Experiência de Usuário Intuitiva: A interface do aplicativo deve ser
intuitiva e fácil de usar, garantindo que os usuários possam
navegar, adicionar e editar informações de forma eficiente. Isso
será alcançado usando componentes como <Text>, <TextInput>,
e <Image>.

## Apresentação do aplicativo

 - Aplicativo 'MeetingApp' tem o objetivo de atender as demandas basicas, tendo um start apartir de uma 
 lista pré estabelecida para podemos fazer filtros e edições,remoções e cadastros.

 
<BR>
<img src="images/meeting_app.telas.png" alt="" style="width: 55%; display: block;"/>

<BR>

 - Foi utilizado o 'Expo' que é uma plataforma de desenvolvimento que facilita a criação de aplicativos 
 React Native.
 
 - Para sua execução esteja na pastas do projeto 'meetingApp' abra o prompt de comando e execute
 '> npx expo start' considerando que o emulador do android já esteja ativo
  
<BR>
<img src="images/meeting_app.expo.png" alt="" style="width: 55%; display: block;"/>

<BR>

 - A apresentação esta em forma de lista com seções onde temos imagens associadas a cada item que podem ser 
 alteradas realizando-se um click sobre os mesmos onde é apresentada uma tela para edição e remoção


<BR>
<img src="images/meeting_app.telas.png" alt="" style="width: 55%; display: block;"/>

<BR>

 - A adição é feita clicando no 'floating button +' abaixo a direita e o filtro no button acima a direita


<BR>
<img src="images/meeting_app.cadastro.png" alt="" style="width: 55%; display: block;"/>

<BR>

- As edições,remoções são executadas através de um click sobre o item da lista onde será apresentada
uma tela onde é possivel alterar qualquer campo

<BR>
<img src="images/meeting_app.edicao.png" alt="" style="width: 55%; display: block;"/>

<BR>

- obs1: a carga inicial e feita através de arquivos 'MOCKs' tanto para a lista de clientes
como para as categorias

- obs2: as operações de CRUD não são persistidas em banco,api ou local storage, são manipulados
em memoria através de um Context Provider, sendo assim, o mock clientes não é alterado 

- obs2: devido as images se tratarem de 'links' com imagens da internet, sua renderização vai depender
da 'qualidade de internet' tanto no seu aparelho quanto no host de origem 

<BR>
<img src="images/meeting_app.mocks.png" alt="" style="width: 55%; display: block;"/>

<BR>

- A aplicação do filtro é acionada através do botão 'lupa' acima a direita onde 
é apresentado um 'form modal' modal com as opções de filtro que são, categorias
e conteudo do nome da empresa. Tambem existe um compomente 'chek-box' onde e
feito o controle se o filtro esta ou não aplicado a lista.
 
 
<BR>
<img src="images/meeting_app.filtro.png" alt="" style="width: 55%; display: block;"/>

<BR>

- obs: a remoção da aplicação do filtro é feita voltando a tela de filtro e 
removendo a seleção do 'check-box' e confirmando.

 
<BR>
<img src="images/meeting_app.remove.filtro.png" alt="" style="width: 55%; display: block;"/>

<BR>

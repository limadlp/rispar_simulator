# Rispar - Simulador de Crédito
## Teste de Desenvolvedor Mobile Flutter


### Tópicos 📋

   - [📖 Sobre](#-sobre)
   - [📱 Design e Preview](#-design-e-preview)
   - [📦 Framework e Packages Utilizados](#-framework-e-packages-utilizados)
   - [🛠 Arquitetura e Estrutura de Pastas](#arquitetura-e-estrutura-de-pastas)
   - [🤔 Como executar](#-como-executar)
   - [📝 Testes de uso](#testes-de-uso)

---
#### 📖 Sobre 

##### Demanda
   - Implementar as telas do Simulador de Crédito da Rispar seguindo os detalhes visuais enviados e mantendo os valores de simulação entre           1.000 e 300.000 Reais.
 
##### Fluxo

- A funcionalidade mais utilizada da plataforma, é a simulação de crédito.
- Através dela, o usuário consegue descobrir a sua taxa de empréstimo, bem como a garantia necessária para efetivar aquela operação.
- A operação funciona assim:
    1. Usuário informa o nome e e-mail;
    2. Usuário informa os dados do empréstimo;
    3. Plataforma inicia o cálculo da operação;
    4. Plataforma disponibiliza os dados para o usuário;

---

#### 📱 Design e Preview

Referencia visual enviada
![cores](screenshots/rispar-cores.png)
![fonte](screenshots/rispar-fonte.png)

A partir da referência foi feito um estudo de cores e de fontes. 

Preview comparativo
...

Exemplo em dispositivos diferentes
![fonte](screenshots/rispar-devices.png)



---


#### 📦 Framework e Packages Utilizados

##### Versão do Flutter
- O aplicativo foi desenvolvido em Flutter na versão 3.0.1
  
  
##### packages utilizados
 
- http (client http para utilizar o método post),
- provider (gerenciamento de estados e injeção de dependências),
- validatorless (validação de e-mail),
- flutter_screenutil (responsividade e adaptação das fontes para diferentes tamanhos e proporções de tela)
- asuka (para mensagens de erro referentes à falha na conexão)
- flutter_masked_text2 (máscara financeira para o formulário)
- intl (para conversões de formatos)
- syncfusion_flutter_sliders (sliders customizados)
- flutter_native_splash (splash screen nativa)

 Todos os packages podem ser encontrados em http://pub.dev.
 As versões utilizadas se encontram no arquivo pubspec.yaml

 
---

#### Arquitetura e Estrutura de Pastas

#####

- Para este projeto, optou-se pelo padrão MVVM. 
- O MVVM que possibilita que o projeto escale e facilita sua manutenção, mas não é tão complexo como uma implementação de Clean Architecture, Hexagonal, ou Clean Dart. Apesar de arquituras mais elaboradas poderem ser mais robustas, devemos pensar também no tempo e o custo de desenvolvimento do projeto, que neste aplicação ainda está ainda na fase de MVP. 



<p align="center">
      <img src="https://www.journaldev.com/wp-content/uploads/2018/04/android-mvvm-pattern.png" width="600" alt="MVVM Pattern">
   </p>
   
No diagrama acima vemos que  view se comunica com a camada de dados por uma camada intermediária.


##### Camadas utilizadas:

- Repositories (a camada de acesso aos dados)

- Services (A camada de Services é a camada para de regras de negócio. No momento funciona apenas como um proxy para a camada de repository. Se tornará útil quando a aplicação escalar e houver mais regras de negócio. )

- Models (Os objetos do mundo real. A representação do banco de dados)

- Viewmodels (A viewmodel foi chamada de controller. controla as regras de exibição da tela)

- View (A UI)


As implementações das camadas de Services e Repositories foram feitas através de interfaces, respeitando, na medida do possível, os princípios SOLID. Testes unitários e mocks foram implementados para testar o repository durante o desenvolvimento. 

Também se utilizou uma estrutura modular, com navegação e injestão de dependências utilizado o package provider. Alcançando assim, um funcionamento semelhante ao package flutter_modular.

Cada funcionalidade é dividida em um módulo com injestão de dependências, view e controller.

##### Estrutura de pastas:

```
app/
|- core/
|- models/
|- modules/
|- repositories/
|- services/
app_module.dart
app_widget.dart

```

- core/
Tudo que é comum para toda a aplicação. Também contém o tema da aplicação, os temas dos widgets mais utilizados, os estilos, as cores etc. 

- models/
A representação do banco de dados, os dados de envio e recebimento

- modules/
Features da aplicação.

- services/
Regras de negócio da empresa, camada existente pensando no escalamento da aplicação.

- repositories/
Camada de dados. responsável por buscar os dados no backend.

---

#### 🤔 Como executar

   ```
   Configure o ambiente de desenvolvimento na sua máquina:
   https://flutter.dev/docs/get-started/install

   - Clone o repositório:
   $ git clone https://github.com/felipecastrosales/app_filmes app_filmes

   - Entre no diretório:
   $ cd app_filmes

   - Instale as dependências:
   $ flutter pub get

   - Execute:
   $ flutter run
   ```

---

#### Testes de Uso 


- Após a implementação, testes foram feitos para garantir o funcionamento da aplicação. 

- (Ver os casos nos vídeos demonstrativos)

- Para fins de teste centrado no usuário consideramos a persona Ana Souza que precisa de fazer um empréstimo de R$25.000,00 em 9 parcelas com percentual de garantia de 35%. 
Ana é uma pessoa que tem facilidade com tecnologia e por isso não teve nenhum problema para fazer a simulação.

- No segundo teste consideramos Lucas Ferreira que é um usuário um pouco desatento e que não quer adicionar a garantia protegida. Ele precisa de um empréstimo de R$2.000,00 para pagar em 12 parcelas com um percentual de garantia de 20%. Ele também conseguiu fazer a simulação porque a interface o orienta a cada campo que ele não preenche corretamente.

##### Sugestões para uma melhor experiência do usuário

- Substituir a frase “Escolha a quantidade de parcelas” pela pergunta “Em quantas parcelas gostaria de pagar?”, assim como está no site. 

- Na tela 3 pede-se ao usuário para escolher o número de parcelas, porém não especifica a que se refere este número de parcelas. Então há uma ambiguidade entre pagar a Rispar ou receber o empréstimo. Se o usuário nunca utilizou o simulador do site, ele pode ficar em dúvida se vai escolher um numero de parcelas para pagar à Rispar ou se é o numero de parcelas para receber o empréstimo.

---

Projeto desenvolvido por Dangeles Lima

---

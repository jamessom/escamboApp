[![Codeship][codeship-shield]][codeship-url]
[![Travis][travis-shield]][travis-url]
[![Circle CI][circleci-shield]][circleci-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/jamessom/escamboApp/">
    <img src="https://i.imgur.com/fO8fKaD.png?1" alt="Logo">
  </a>

  <h3 align="center">EscamboApp</h3>

  <p align="center">
    <br />
    <br />
    <a href="https://github.com/jamessom/escamboApp/issues">Reportar bugs</a>
    ·
    <a href="https://github.com/jamessom/escamboApp/issues">Requisitar novas features</a>
  </p>
</p>

> Este projeto utiliza docker e docker-compose
## Rodando o ambiente docker

Acesse o diretório que o projeto foi clonado e rode os seguintes comandos:

- `docker-compose build` para _buildar_ as images, criar containers etc.
- `docker-compose up` para instalar as _gems_ utilizadas no projeto, criar o banco de dados, rodar seeds e inicializar o servidor de desenvolvimento.

> Este projeto possui um script em /container/start que automatiza os comandos de startup do rails.

## Popula banco de dados com dados faker

`docker-compose run --rm escambo_app bundle exec rails db:seed`

## Subindo e descendo containers
Para inicializar `docker-compose start` e
para finalizar `docker-compose stop`

## Acessando o container

Rode no seu terminal favorito `docker-compose run --rm escambo_app comando` para executar via _docker-compose_ ou
`docker exec -it escambo_app comando` para executar via docker, substituindo **comando** pelo comando desejado.
> vale ressaltar que executar via docker é necessário que o container já esteja e pé.

## Acessando o console rails

Rode `docker-compose run --rm escambo_app bundle exec rails c`

## Acessando o terminal do container

Rode `docker-compose run --rm escambo_app sh`

## Visualizando os logs do container

Rode `docker-compose logs --tail=100 -f escambo_app` ou `docker logs -f escambo_app`

[codeship-shield]: https://img.shields.io/codeship/5e39dd40-6d91-0135-5e97-0eed939e5dcf/master.svg?logo=codeship&style=for-the-badge
[codeship-url]: https://app.codeship.com/projects/5e39dd40-6d91-0135-5e97-0eed939e5dcf/status?branch=master

[travis-shield]: https://img.shields.io/travis/jamessom/escamboApp/master.svg?logo=travis&style=for-the-badge
[travis-url]: https://www.travis-ci.com/jamessom/escamboApp

[circleci-shield]: https://img.shields.io/circleci/build/github/jamessom/escamboApp.svg?logo=circleci&style=for-the-badge
[circleci-url]: https://circleci.com/gh/jamessom/escamboApp/tree/master
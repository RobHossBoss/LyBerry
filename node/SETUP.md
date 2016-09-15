[![Dependency Status](https://david-dm.org/datatypevoid/vulgar.svg)](https://david-dm.org/datatypevoid/vulgar) [![volkswagen status](https://auchenberg.github.io/volkswagen/volkswargen_ci.svg?v=1)](https://travis-ci.org/datatypevoid/vulgar) [![GitHub tag](https://img.shields.io/github/tag/datatypevoid/vulgar.svg?maxAge=2592000)](https://github.com/datatypevoid/vulgar) [![Issue Stats](http://issuestats.com/github/datatypevoid/vulgar/badge/pr?style=flat)](http://issuestats.com/github/datatypevoid/vulgar) [![Issue Stats](http://issuestats.com/github/datatypevoid/vulgar/badge/issue?style=flat)](http://issuestats.com/github/datatypevoid/vulgar) [![Stack Share](http://img.shields.io/badge/tech-stack-0690fa.svg?style=flat)](stackshare.io/datatypevoid/vulgar) [![Angular 2 Style Guide](https://mgechev.github.io/angular2-style-guide/images/badge.svg)](https://github.com/mgechev/angular2-style-guide)

[![MEAN with NG2 and Webpack](https://cloud.githubusercontent.com/assets/10481547/13732046/5ba42ab0-e94f-11e5-9962-ab04cbd6779f.png)](http://www.davidniciforovic.com)

# v#!g@r [![Join Slack](https://img.shields.io/badge/slack-join-brightgreen.svg)](http://www.davidniciforovic.com/wp-login.php?action=slack-invitation) [![Join the chat at https://gitter.im/datatypevoid/vulgar](https://badges.gitter.im/datatypevoid/vulgar.svg)](https://gitter.im/datatypevoid/vulgar?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## MEAN Stack Development Starter

> A MEAN stack development kit featuring [Angular 2](https://angular.io) ([Router](https://angular.io/docs/js/latest/api/router/), [Forms](https://angular.io/docs/js/latest/api/forms/), [Http](https://angular.io/docs/js/latest/api/http/), [Services](https://gist.github.com/gdi2290/634101fec1671ee12b3e#_follow_@AngularClass_on_twitter), [Tests](https://angular.io/docs/js/latest/api/test/), [E2E](https://angular.github.io/protractor/#/faq#what-s-the-difference-between-karma-and-protractor-when-do-i-use-which-)), [Express](http://expressjs.com/), [MongoDB](https://www.mongodb.org/) (complete with [Mongoose](https://www.mongoosejs.org/)), [Node](https://www.nodejs.org/), [Redux](https://egghead.io/series/getting-started-with-redux), [@ngrx/store](https://github.com/ngrx/store) [PassportJS](https://www.passportjs.org/), [Socket.IO](https://www.socket.io/), [Karma](https://karma-runner.github.io/), [Protractor](https://angular.github.io/protractor/), [Jasmine](https://github.com/jasmine/jasmine), [Istanbul](https://github.com/gotwarlost/istanbul), [Configuration](#configuration), [TypeScript](http://www.typescriptlang.org/), [Typings](https://github.com/typings/typings), [Sass](https://sass-lang.com), [Docco](https://jashkenas.github.io/docco/), [TsLint](http://palantir.github.io/tslint/), [Codelyzer](https://github.com/mgechev/codelyzer), [Hot Module Replacement](https://webpack.github.io/docs/hot-module-replacement-with-webpack.html), [Material](https://github.com/angular/material2), and [Webpack](http://webpack.github.io/), as well as ES6/ES7 support for the back-end by [datatype_void](https://twitter.com/datatype_void).

> Walk through a complete tutorial that shows you how to build a simple todo app using this framework, check out [Building A Single Page Todo App with MEAN--Including Angular 2](http://www.davidniciforovic.com/2016/02/03/building-a-single-page-todo-app-with-mean-including-angular-2/)

> If you're looking to learn about Webpack and ES6 Build Tools check out [ES6-build-tools](https://github.com/AngularClass/ES6-build-tools)

> If you're looking to learn TypeScript see [TypeStrong/learn-typescript](https://github.com/TypeStrong/learn-typescript)

> If you're looking to learn how to move your Angular 1.x directives over to Angular 2 see [Migrating Directives to Angular 2](http://angular-tips.com/blog/2015/09/migrating-directives-to-angular-2/)

> And always keep the [Angular 2 docs](https://angular.io/docs/ts/latest/) at hand, because the times are always changing

This seed repo serves as an MEAN starter for anyone looking to get a MEAN fullstack app up and running with Angular 2, TypeScript(on the front-end), and ES6/ES7 (on the back-end) fast. Using [Webpack](http://webpack.github.io/) for building our files and assisting with boilerplate. We're also using Protractor for our end-to-end story and Karma for our unit tests.

- Best practices in file and application organization for Angular 2.
- Ready to go build system using Webpack for working with TypeScript.
- Hot module reloading for the front-end à la Webpack.
- Angular 2 examples that are ready to go when experimenting with Angular 2.
- A great MEAN seed repo for anyone who wants to start their project.
- Testing Angular 2 code with Jasmine and Karma.
- Coverage with Istanbul and Karma
- End-to-end Angular 2 code using Protractor.
- Type manager with Typings
- Material Design with [angular/material2](https://github.com/angular/material2)
- Sass preprocessor linting and compiling
- Automatic documentation for all project related Sass, TypeScript, and JavaScript files with Docco; front-end and back-end

The rest of the stack features:

- [Express](https://www.expressjs.com/) ready for ES6/ES7 code through transpiling with [Babel 6](https://babeljs.io/),
- [Socket.io](https://www.socket.io/) for real time event-based communication.
- [Mongoose](https://www.mongoosejs.com/) for modeling [MongoDB](https://www.mongodb.org) objects within [NodeJS](https://nodejs.org).
- Support for the [Sass](https://sass-lang.com) CSS preprocessor.

## Quick start

**Make sure you have Node version >= 4.0 and NPM >= 3**

### If you are located in China, use `cnpm`

#### <https://github.com/cnpm/cnpm>

> Install the stack then edit `app.ts` inside [`/src/app/app.ts`](/src/app/app.ts)

```bash
# install vulgar-cli and the generator it hooks into
$ npm install -g vulgar-cli generator-vulgar

# initialize installer
$ vulgar init <nameOfApplication>

# change directory to new application root
$ cd <nameOfApplication>

# add required global libraries
$ npm install -g typings webpack webpack-dev-server concurrently

# install the repo with npm
# required only if you declined automated dependency installation
# during installation
$ npm install

# build code
$ npm run build

# start up the stack

# this command runs two commands in parallel via `concurrently`:
# `npm run server` starts up `webpack-dev-server` allowing for
# hot module reloading
# `npm` run watch` uses `webpack` to watch the necessary files
# and build on file change
$ npm start

# in a separate terminal:
# start `Express` server
$ gulp serve
```

go to <http://0.0.0.0:8080> or <http://localhost:8080> in your browser

# Table of Contents

- [File Structure](#file-structure)
- [Getting Started](#getting-started)

  - [Dependencies](#dependencies)
  - [Installing](#installing)
  - [Running the app](#running-the-app)

- [Contributing](#contributing)

- [TypeScript](#typescript)

- [Typings](#typings)

- [Frequently asked questions](#frequently-asked-questions)

- [Support, Questions, or Feedback](#support-questions-or-feedback)

- [License](#license)

## File Structure

We use the component approach in our starter. This is the new standard for developing Angular apps and a great way to ensure maintainable code by encapsulation of our behavior logic. A component is basically a self contained app usually in a single file or a folder with each concern as a file: style, template, specs, e2e, and component class. Here's how it looks:

```
vulgar/
 │
 ├──app/                            * back-end routing and MongoDB object models
 │   ├──models/                     * model definitions for Mongoose
 │   │   ├──user.model.js           * a user model for use with PassportJS
 │   ├──routes/                     * store modular REST API routes for Express here
 │   │   └──authentication          * an Express route for use with PassportJS
 │   │        .router.js
 │   └──routes.js                   * import Express routes and middleware here
 │
 ├──config/                         * configuration files
 |   ├──helpers.js                  * helper functions for our configuration files
 |   ├──spec-bundle.js              * magic that sets up the NG2 testing environment
 |   ├──karma.conf.js               * karma config for our unit tests
 |   ├──protractor.conf.js          * protractor config for our end-to-end tests
 │   ├──webpack.dev.js              * our development webpack config
 │   ├──webpack.prod.js             * our production webpack config
 │   ├──webpack.test.js             * our test webpack config
 │   ├──config.json/                * allows definition of environment variables
 │   ├──env.conf.js/                * utility functions for setting up env vars
 │   ├──mongoose.conf.js/           * configuration file for Mongoose
 │   ├──gulpfile.conf.js            * contains all of the workflow management delegated
 │   │                                to `gulp`: auto documentation generation; `sass`
 │   │                                linting; `nodemon`, et cetera
 │   └──passport.conf.js/           * configuration file for PassportJS
 │
 ├──sockets/                        * directory for socket.io functionality
 │   └──base.js/                    * a basic socket.io server function
 │
 ├──src/                            * source that will be compiled to javascript
 │   ├──main.ts                     * our entry file for our browser environment
 │   │
 │   ├──index.html                  * Index.html: where we generate our index page
 │   │
 │   ├──polyfills.ts                * our polyfills file
 │   │
 |   ├──vendor.ts                   * our vendor file
 │   │
 │   ├──app/                        * WebApp: folder
 │   │   ├──todo/                   * an example component directory
 │   │   │   ├──todo.component.ts   * a simple Angular 2 component
 │   │   │   ├──todo.e2e.ts         * simple test of components in todo.component.ts
 │   │   │   ├──todo.spec.ts        * a simple end-to-end test for /todo
 │   │   │   ├──todo.html           * template for our component
 │   │   │   └──todo.service.ts     * Angular 2 service linking to our API
 │   │   ├──app.spec.ts             * a simple test of components in app.ts
 │   │   ├──app.e2e.ts              * a simple end-to-end test for /
 │   │   └──app.ts                  * App.ts: primary application component
 │   │
 │   ├──assets/                     * static assets are served here
 │   │   ├──icon/                   * our list of icons from www.favicon-generator.org
 │   │   ├──service-worker.js       * ignore this. Web App service worker that's not
 │   │   │                            complete yet
 │   │   ├──robots.txt              * for search engines to crawl your website
 │   │   └──human.txt               * for humans to know who the developers are
 │   │
 │   └──sass/                       * folder for Sass stylesheets
 │       |
 │       ├──base/
 │       │   ├──_animations.scss    * Animation keyframe definitions
 │       │   ├──_reset.scss         * Reset/normalize
 │       │   ├──_typography.scss    * Typography rules
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       │
 │       ├──components/
 │       │   ├──_buttons.scss       * Buttons
 │       │   ├──_carousel.scss      * Carousel
 │       │   ├──_cover.scss         * Cover
 │       │   ├──_dropdown.scss      * Dropdown
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       │
 │       ├─ layout/
 │       │   ├──_navigation.scss    * Navigation
 │       │   ├──_grid.scss          * Grid system
 │       │   ├──_header.scss        * Header
 │       │   ├──_footer.scss        * Footer
 │       │   ├──_sidebar.scss       * Sidebar
 │       │   ├──_forms.scss         * Forms
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       │
 │       ├─ pages/
 │       │   ├──_home.scss          * Home specific styles
 │       │   ├──_contact.scss       * Contact specific styles
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       │
 │       ├─ themes/
 │       │   ├──_theme.scss         * Default theme
 │       │   ├──_admin.scss         * Admin theme
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       │
 │       ├─ utils/
 │       │   ├──_variables.scss     * Sass Variables
 │       │   ├──_functions.scss     * Sass Functions
 │       │   ├──_mixins.scss        * Sass Mixins
 │       │   ├──_helpers.scss       * Class & placeholders helpers
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       ├──vendors/
 │       │   ├──_bootstrap.scss     * Bootstrap
 │       │   ├──_jquery-ui.scss     * jQuery UI
 │       │   ├──_module.scss        * Load all partials into a single partial
 │       │   └── …                  * Etc.
 │       │
 │       │
 │       └──main.scss               * Main sass file importing all partials
 │
 ├──.babelrc                        * configure Babel 6 plugins and ES6/ES7 presets
 │
 ├──server.js                       * ES5 `.js` importing the server code along with a
 │                                    Babel 6 hook to transpile server ES6/ES7 code
 │                                    on the fly
 ├──server.conf.js                  * configure Express application, connect to
 │                                    database, instantiate Mongoose models, define API
 │                                    and front-end Angular routes, et cetera
 │
 ├──gulpfile.js                     * ES5 `gulpfile` importing the `gulp` workflow code
 │                                    along with a Babel 6 hook to transpile the ES6
 │                                    code on the fly
 │
 ├──protractor.conf.js              * Exposes `protractor.conf` from `config/`
 │
 ├──karma.conf.js                   * Exposes `karma.conf` from `config/`
 │
 ├──tslint.json                     * typescript lint config
 ├──typedoc.json                    * typescript documentation generator
 │
 ├──tsconfig.json                   * config that webpack uses for typescript
 ├──typings.json                    * our typings manager
 └──package.json                    * what npm uses to manage it's dependencies
```

# Getting Started

## Prerequisite Technologies

### What you need to run this app:

### Linux

- _Node.js_ - [Download](http://nodejs.org/download/) and Install Node.js, nodeschool has free [node tutorials](http://nodeschool.io/#workshoppers) to get you started.
- _MongoDB_ - [Download](https://www.mongodb.org/downloads) and Install mongodb - [Checkout their manual](https://docs.mongodb.org/manual/) if you're just starting.

If you're using ubuntu, this is the preferred repository to use...

```bash
$ curl -sL https://deb.nodesource.com/setup | sudo bash -
$ sudo apt-get update
$ sudo apt-get install nodejs
```

or use [Node Version Manager](https://github.com/creationix/nvm) to easily manage and update your `node` installations and global dependencies

### Windows

- _Node.js_ - [Download](http://nodejs.org/download/) and Install Node.js, nodeschool has free [node tutorials](http://nodeschool.io/#workshoppers) to get you started.
- _MongoDB_ - Follow the great tutorial from the mongodb site - ["Install Mongodb On Windows"](https://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/)
- _Git_ - The easiest way to install git and then run the rest of the commands through the _git bash_ application (via command prompt) is by downloading and installing [Git for Windows](http://git-scm.com/download/win)

### OSX

- _Node.js_ - [Download](http://nodejs.org/download/) and Install Node.js or use the packages within brew or macports.
- _MongoDB_ - Follow the tutorial here - [Install mongodb on OSX](https://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/)
- _git_ - Get git [from here](http://git-scm.com/download/mac).

### _Ensure you are running the latest versions Node `v4.x.x`+ and NPM `3.x.x`+_

## Dependencies

Once you have those, you should install these globals with `npm install --global`:

- `webpack` (`$ npm install --global webpack`)
- `webpack-dev-server` (`$ npm install --global webpack-dev-server`)
- `karma` (`$ npm install --global karma-cli`)
- `protractor` (`$ npm install --global protractor`)
- `typings` (`$ npm install --global typings`)
- `typescript` (`$ npm install --global typescript`)
- `concurrently` (`$ npm install --global concurrently`)
- `mocha` (`$ npm install --global mocha`)

## Installing

- `$ npm install -g vulgar-cli generator-vulgar`
- `$ vulgar init` to install a new instance of the v#!g@r `MEAN` stack framework
- `$ npm install -g typings webpack webpack-dev-server concurrently rimraf` to install global dependencies
- `$ npm install` to install all local dependencies
- `$ typings install` to install necessary typings
- `$ npm run build` to build necessary front-end code with Webpack
- `$ npm start` to enable hot module reloading and build on file change
- In a new terminal, `node server` to start the server for the first time

## config.json

The `server.conf.js` file is expecting certain `environment` `variables` to be set within `Node`. The `env.conf.js` has functions to check whether the expected `environment` `variables` have been setup before proceeding to start up the rest of the server. It uses a file called `config.json` stored in the `config` directory that looks something like this:

```
{
  "ENV" : "development",
  # MAKE SURE PORT IS NOT 8080 OR WHATEVER THE WEBPACK
  # DEV SERVER PORT IS SET TO
  "PORT" : 3000,
  "MONGO_URI" : {
    "DEVELOPMENT" : "mongodb://[username:password]@host[:port]",
    "PRODUCTION" : "mongodb://[username:password]@host[:port]",
    "TEST" : "mongodb://[username:password]@host[:port]"
  },
  # Generate your own 256-bit WEP key here:
  # http://randomkeygen.com/
  # Note that you don't need to use specifically
  # this, but it will certainly suffice
  "SESSION_SECRET" : "355FC4FE9348639B4E4FED1B8E93C"
}

You should definitely change your `SESSION_SECRET` for even the most lackadaisical development effort.
```

### A Quick Note About the `config.json` Object

This object is not absolutely required. You can pass these values in however you want, whether it is through the command line or some alternative method. This just provided me with an easy way of storing a couple of values that do not change often.

## Running the app

After you have installed all dependencies and modified your `config.json` file, you can now run the app. First, you must start up the back-end server in a separate terminal using the `gulp serve` command. This will fire up our Express app using `nodemon`, which will watch for file changes and restart our backend when necessary. Next use the `npm start` command in the original terminal which runs two `npm` scripts in parallel: `npm run server` to start `webpack-dev-server` for building our front-end in the computer's memory, enabling hot module reloading; `npm run watch` to watch all of the front-end files and build them upon changes. You can now fire up your favorite web browser and visit the running application at `localhost:8080`!

### server

```bash
# development
# package front-end files with Webpack and hot reload
# upon any changes
$ npm start
# use `Gulp` in a second terminal to run the Express
# app responsible for our back-end
$ gulp serve
# optionally use `Gulp` in a third terminal to auto
# generate documentation and lint `Sass`
$ gulp

# production
$ npm run build:prod
$ npm run server:prod
```

## Other commands

### start `Express` back-end

```bash
$ gulp serve
```

### build documentation

```bash
$ gulp build:docs
```

### watch and build documentation

```bash
$ gulp watch:docs
```

### watch and lint sass

```bash
$ gulp watch:sass
```

### build files

```bash
# development
$ npm run build:dev
# production
$ npm run build:prod
```

### watch and build files

```bash
$ npm run watch
```

### run tests

```bash
$ npm run test
```

### watch and run our tests

```bash
$ npm run watch:test
```

### run end-to-end tests

```bash
# make sure you have your server running in another terminal
$ npm run e2e
```

### run webdriver (for end-to-end)

```bash
$ npm run webdriver:update
$ npm run webdriver:start
```

### run Protractor's elementExplorer (for end-to-end)

```bash
$ npm run webdriver:start
# in another terminal
$ npm run e2e:live
```

# Configuration

Configuration files live in `config/`. We are currently using `mongooose`, `passportJS`, `webpack`, `mocha`, `karma`, and `protractor` for different stages and parts of your full-stack application

# Contributing

Contibutors are welcome. If you are interested in collaborating with us or contributing to this project, please join our chat on [Slack](http://www.davidniciforovic.com/wp-login.php?action=slack-invitation). You can also view our `Trello` board which is where the roadmap and task backlog live here <https://trello.com/b/Kk4qnt2T/vulgar>

# TypeScript

> To take full advantage of TypeScript with autocomplete you would have to install it globally and use an editor with the correct TypeScript plugins.

## Use latest TypeScript compiler

TypeScript 1.7.x includes everything you need. Make sure to upgrade, even if you installed TypeScript previously.

```
$ npm install --global typescript
```

## Use a TypeScript-aware editor

We have good experience using these editors:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Webstorm 10](https://www.jetbrains.com/webstorm/download/)
- [Atom](https://atom.io/) with [TypeScript plugin](https://atom.io/packages/atom-typescript)
- [Sublime Text](http://www.sublimetext.com/3) with [Typescript-Sublime-Plugin](https://github.com/Microsoft/Typescript-Sublime-plugin#installation)

# Typings

> When you include a module that doesn't include Type Definitions inside of the module you need to include external Type Definitions with Typings

## Use latest Typings module

```
$ npm install --global typings
```

## Custom Type Definitions

When including 3rd party modules you also need to include the type definition for the module if they don't provide one within the module. You can try to install it with typings

```
$ typings install node --save
```

If you can't find the type definition in the registry we can make an ambient definition in this file for now. For example

```typescript
declare module "my-module" {
  export function doesSomething(value: string): string;
}
```

If you're prototyping and you will fix the types later you can also declare it as type any

```typescript
declare var assert: any;
```

If you're importing a module that uses Node.js modules which are CommonJS you need to import as

```typescript
import * as _ from 'lodash';
```

You can include your type definitions in this file until you create one for the typings registry see [typings/registry](https://github.com/typings/registry)

# Frequently asked questions

- What's the current browser support for Angular 2 Beta?

  - Please view the updated list of [browser support for Angular 2](https://github.com/angularclass/awesome-angular2#current-browser-support-for-angular-2)

- Why is my service, aka provider, is not injecting parameter correctly?

  - Please use `@Injectable()` for your service for typescript to correctly attach the metadata (this is a TypeScript problem)

- How do I run protractor with node 0.12.x?

  - please check out this repo to use the old version of protractor [#146](https://github.com/AngularClass/angular2-webpack-starter/pull/146/files)

- Where do I write my tests?

  - You can write your tests next to your component files. See [`/src/app/home/home.spec.ts`](/src/app/home/home.spec.ts)

- How do I start the app when I get `EACCES` and `EADDRINUSE` errors?

  - The `EADDRINUSE` error means the port `8080` is currently being used and `EACCES` is lack of permission for webpack to build files to `./dist/`

- How to use `sass` for css?

  - `loaders: ['raw-loader','sass-loader']` and `@Component({ styles: [ require('./filename.scss') ] })` see issue [#136](https://github.com/AngularClass/angular2-webpack-starter/issues/136) from the [Angular 2 Webpack Starter Kit](https://github.com/AngularClass/angular2-webpack-starter)

- How do I test a Service?

  - See issue [#130](https://github.com/AngularClass/angular2-webpack-starter/issues/130#issuecomment-158872648)

- How do I add `vscode-chrome-debug` support?

  - The VS Code chrome debug extension support can be done via `launch.json` see issue [#144](https://github.com/AngularClass/angular2-webpack-starter/issues/144#issuecomment-164063790) from the [Angular 2 Webpack Starter Kit](https://github.com/AngularClass/angular2-webpack-starter)

- How do I make the repo work in a virtual machine?

  - You need to use `0.0.0.0` so revert these changes [#205](https://github.com/AngularClass/angular2-webpack-starter/pull/205/files) from the [Angular 2 Webpack Starter Kit](https://github.com/AngularClass/angular2-webpack-starter)

- What are the naming conventions for Angular 2?

  - please see issue [#185](https://github.com/AngularClass/angular2-webpack-starter/issues/185) and PR [196](https://github.com/AngularClass/angular2-webpack-starter/pull/196) from the [Angular 2 Webpack Starter Kit](https://github.com/AngularClass/angular2-webpack-starter)

- How do I include bootstrap or jQuery?

  - please see issue [#215](https://github.com/AngularClass/angular2-webpack-starter/issues/215) and [#214](https://github.com/AngularClass/angular2-webpack-starter/issues/214#event-511768416) from the [Angular 2 Webpack Starter Kit](https://github.com/AngularClass/angular2-webpack-starter)

- I'm getting an error about not finding my module that I installed?

  - please see [How to include or create custom type definitions](https://github.com/AngularClass/angular2-webpack-starter/wiki/How-to-include-or-create-custom-type-definitions) and [custom-typings.d.ts](https://github.com/AngularClass/angular2-webpack-starter/blob/master/src/custom-typings.d.ts) from the [Angular 2 Webpack Starter Kit](https://github.com/AngularClass/angular2-webpack-starter)

- How do I async load a component?

  - { path: '/about', loader: () => require('es6-promise!./about/about')('About') }
  - Also see [es6-promise-loader](https://github.com/gdi2290/es6-promise-loader)

- Error: Cannot find module 'tapable'

  - Remove `node_modules/` and run `npm cache clean` then `npm install`

- `RangeError: Maximum call stack size exceeded`

  - This is a problem with minifying Angular 2 and it's recent JIT templates. If you set `mangle` to `false` then you should be good.

- Why is the size of my app larger in development?

  - We are using inline source-maps and hot module replacement which will increase the bundle size.

- If you are located in China, use `cnpm`

  - <https://github.com/cnpm/cnpm>

- node-pre-gyp ERR in npm install (Windows)

  - install `Python x86` version between `2.5` and `3.0` on Windows machines

## Acknowledgements

> [AngularClass](https://github.com/AngularClass) for their Angular 2 Webpack repo which served as a starting point for the front-end

# Support, Questions, or Feedback

> Contact us anytime for anything about this repo, Angular 2, or MEAN stack development in general.

- [Twitter: @datatype_void](https://twitter.com/datatype_void)

--------------------------------------------------------------------------------

enjoy -- **Da5id**

<br><br>

> Looking for corporate Angular/MEAN training, want to host us, or Angular/MEAN consulting? david.r.niciforovic@gmail.com

# License

[MIT](/LICENSE)

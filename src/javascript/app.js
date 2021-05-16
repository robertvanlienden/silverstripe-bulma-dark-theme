// eslint-disable-next-line import/no-webpack-loader-syntax,import/no-unresolved,no-unused-vars
// import $ from 'expose-loader?exposes[]=$&exposes[]=jQuery!jquery';

import HamburgerNav from './hamburger-nav';

class App {
  constructor() {
    new HamburgerNav();
  }
}

(() => new App({}))();

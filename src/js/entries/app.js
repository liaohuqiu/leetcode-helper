// load bootstrap
require(__bootstrap_sass__);

import cube             from 'cube-js';
import log              from 'loglevel';
import jquery           from 'jquery'
import Q                from 'q';

import ga               from 'ut/ga-agent.js';
import Controller       from 'leetcode/controller.js'

window.$ = jquery;
log.setLevel(__log_level__);

var App = function() {
};

cube.mix(App.prototype, {

  run: function() {

    var controller = new Controller();
    controller.start();

    ga('send', 'pageview','/leetcode');
    ga.auto();
  },
});

var app = new App();
app.run();

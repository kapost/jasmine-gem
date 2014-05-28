var jsApiReporter;
(function() {
  var jasmineEnv = jasmine.getEnv();

  jsApiReporter = new jasmine.JsApiReporter();
  var htmlReporter = new jasmine.HtmlReporter();

  jasmineEnv.addReporter(jsApiReporter);
  jasmineEnv.addReporter(htmlReporter);

  jasmineEnv.specFilter = function(spec) {
    return htmlReporter.specFilter(spec);
  };

  window.addEventListener('specs_loaded', function(e) {
    execJasmine();
  };

  function execJasmine() {
    jasmineEnv.execute();
  }
})();

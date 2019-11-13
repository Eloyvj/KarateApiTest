function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	baseUrl: '',
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
    config.baseUrl = 'https://jsonplaceholder.typicode.com'
  } else if (env == 'hom') {
    // customize
    config.baseUrl = 'https://jsonplaceholder.typicode.com'
  }

  karate.log('config.baseUrl was:', config.baseUrl);
  return config;
}
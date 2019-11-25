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
    config.baseUrl = 'https://jsonplaceholder.typicode.com'
  } else if (env == 'hom') {
    config.baseUrl = 'https://jsonplaceholder.typicode.com'
  }

  karate.log('config.baseUrl was:', config.baseUrl);
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}
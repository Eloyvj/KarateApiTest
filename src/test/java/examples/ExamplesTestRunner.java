package examples;

import com.intuit.karate.junit5.Karate;

class ExamplesTestRunner {

    @Karate.Test
    Karate testGet() {
        return new Karate().feature("/posts/get").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPost() {
        return new Karate().feature("/posts/post").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPut() {
        return new Karate().feature("/posts/put").relativeTo(getClass());
    }

    @Karate.Test
    Karate testDelete() {
        return new Karate().feature("/posts/delete").relativeTo(getClass());
    }

    @Karate.Test
    Karate testUsers() {
        return new Karate().feature("/users/users").relativeTo(getClass());
    }

    // this will run all *.features files that exists in sub-directories except scenarios with tag @ignore
    @Karate.Test
    Karate testTags() {
        return new Karate().tags("~@ignore").relativeTo(getClass());
    }

    // this will run all *.feature files that exist in sub-directories
    @Karate.Test
    Karate testAll() {
        return new Karate().relativeTo(getClass());
    }
}

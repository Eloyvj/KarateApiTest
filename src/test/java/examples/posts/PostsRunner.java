package examples.posts;

import com.intuit.karate.junit5.Karate;

public class PostsRunner {

    @Karate.Test
    Karate testPosts() {
        return new Karate().feature("posts").relativeTo(getClass());
    }
}

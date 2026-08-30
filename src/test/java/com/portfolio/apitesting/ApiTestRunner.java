package com.portfolio.apitesting;

import com.intuit.karate.junit5.Karate;

class ApiTestRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:features/users/users.feature");
    }
}

package com.stroebitzer.knativeserve

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class KnativeServeApplication

fun main(args: Array<String>) {
    runApplication<KnativeServeApplication>(*args)
}

@RestController
class MyController {

    @GetMapping("/")
    fun greeting() = ResponseEntity.ok("Hello KNative " + System.getenv("KNATIVE_METRIC"))

}
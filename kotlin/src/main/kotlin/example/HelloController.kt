package example

import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller("/")
class HelloController(
    private val greetingService: GreetingService
) {

    @Get("/")
    fun index(): String {
        return greetingService.greet("World") + " from: " + System.getenv("APP_NAME")
    }

    @Get("/hello/{name}")
    fun hello(name: String) = greetingService.greet(name)
}
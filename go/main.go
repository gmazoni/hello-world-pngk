// package main

// import (
// 	"github.com/gofiber/fiber/v2"
// 	"os"
// )

// func main() {
// 	app := fiber.New()

// 	app.Get("/", func(c *fiber.Ctx) error {
// 		return c.SendString("Hello, World! from: " + os.Getenv("APP_NAME"))
// 	})

// 	app.Listen(":" + os.Getenv("PORT"))
// }

package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":"+os.Getenv("PORT"), nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, World! from:  %s", os.Getenv("APP_NAME"))
}

package main

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {

	fmt.Println("Hello service starting...")

	r := gin.Default()
	r.GET("/hello", func(c *gin.Context) {

		fmt.Println("Responding to hello request...")
		c.JSON(http.StatusOK, gin.H{
			"message": "hello from minikube",
		})

	})
	r.Run() // listen and serve on 0.0.0.0:8080
}

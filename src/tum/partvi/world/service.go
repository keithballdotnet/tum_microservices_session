package main

import (
	"fmt"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
)

func main() {

	fmt.Println("World service starting...")

	r := gin.Default()
	r.GET("/world", func(c *gin.Context) {

		fmt.Println("Responding to world request...")
		c.JSON(http.StatusOK, gin.H{
			"message": "world!",
			"time":    time.Now().Format(time.RFC3339Nano),
		})

	})
	r.Run() // listen and serve on 0.0.0.0:8080
}

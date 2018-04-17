package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {

	fmt.Println("Hello service starting...")

	r := gin.Default()
	r.GET("/hello", func(c *gin.Context) {

		fmt.Println("Responding to hello request...")

		resp, err := http.Get("http://world:8080/world")
		if err != nil {
			fmt.Printf("Unable to call world: %v", err)
			c.Status(http.StatusInternalServerError)
			return
		}
		// TODO:  We should not swallow the error
		defer resp.Body.Close()

		body, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			fmt.Printf("Unable to read body: %v", err)
			c.Status(http.StatusInternalServerError)
			return
		}

		var worldResp worldResponse
		err = json.Unmarshal(body, &worldResp)
		if err != nil {
			fmt.Printf("Unable to marshall body: %v", err)
			c.Status(http.StatusInternalServerError)
			return
		}

		c.JSON(http.StatusOK, gin.H{
			"message": fmt.Sprintf("hello %s from minikube @ %s", worldResp.Message, worldResp.Time),
		})

	})
	r.Run() // listen and serve on 0.0.0.0:8080
}

type worldResponse struct {
	Message string
	Time    string
}

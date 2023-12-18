package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

type MyInput struct {
	Action string `json:"action"`
	Data   string `json:"data"`
}

type MyResponse struct {
	StatusCode    string `json:"statusCode"`
	StatusMessage string `json:"statusMessage"`
}

func handle(event MyInput) (MyResponse, error) {
	fmt.Printf("%v\n", event)

	return MyResponse{StatusCode: "200", StatusMessage: "Successs"}, nil
}

func main() {
	lambda.Start(handle)
}

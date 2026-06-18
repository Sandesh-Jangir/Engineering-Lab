# A simple program to demonstrate how we can now build solutions to complex or simple problems in today's world using programming.

# Here we'll be building a simple chatbot that can respond to user input.
from openai import OpenAI

client = OpenAI()  # Initialize the OpenAI client
user_prompt = input("You: ") # Get user input for the chatbot
system_prompt = "Limit your answer to one sentence." # Set the system prompt
response = client.responses.create( # Getting the response from the OpenAI API
    model="gpt-4o-mini",
    input=user_prompt,
    instructions=system_prompt
)

print(response.output_text)
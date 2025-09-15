# Use an ARM64 compatible Elixir image with version 1.17
FROM elixir:1.17-alpine as build

# Install Hex + Rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Set the working directory
WORKDIR /app

# Copy the mix.exs and mix.lock files
COPY mix.exs mix.lock ./

# Install the dependencies
RUN mix deps.get

# Copy the rest of the application code
COPY . .

# Compile the application
RUN mix compile

# Run the application
CMD ["mix", "run", "--no-halt"]
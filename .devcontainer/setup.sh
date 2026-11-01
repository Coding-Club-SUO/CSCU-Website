#!/usr/bin/env bash
set -e 

echo "Setting up project dependencies..."

#Install frontend dependencies 
if [-d "frontend"]; then 
  npm install --prefix frontend 
fi 

#Resolve backend dependencies 
if [-d "backend"] && [-f "./backend/gradlew"]; then 
  chmod +x ./backend/gradlew 
  ./backend/gradlew dependencies --project-dir backend 
fi 

echo "Dev container setup complete!" 



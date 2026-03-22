jobs:
  security-check:
    # ... same as before ...
  
  taste-test:
    # ... same as before ...
  
  make-special-cup:
    runs-on: ubuntu-latest
    needs: taste-test  # Only make cup if lemonade tastes good!
    
    steps:
    - name: Get Recipe
      uses: actions/checkout@v3
    
    - name: Make Special Cup
      run: |
        echo "🥤 Building your special lemonade cup!"
        docker build -t my-lemonade:latest .
        echo "✅ Cup is ready! You can take your lemonade anywhere!"

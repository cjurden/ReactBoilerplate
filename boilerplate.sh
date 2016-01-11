rm -rf .git
rm README.md
mkdir source source/components build
mv index.html build
touch source/app.js
npm init
npm install --save-dev browserify gulp babelify@^6.2.0 vinyl-source-stream run-sequence opn gulp-connect
npm install --save react react-dom babelify babel-preset-react
gulp
rm -- "$0"
fi

if [ -n "$1" ] ; then
  mkdir "$1"
  cp gulpfile.js "$1"
  mkdir "$1"/source "$1"/source/components "$1"/build
  cp index.html "$1"/build
  touch "$1"/source/app.js
  cd "$1"
  npm init
  npm install --save-dev browserify gulp babelify@^6.2.0 vinyl-source-stream run-sequence opn gulp-connect
  npm install --save react react-dom babelify babel-preset-react
  gulp
  fi
else
  mkdir project
  cp gulpfile.js project
  mkdir project/source project/source/components project/build
  cp index.html project/build
  touch project/source/app.js
  cd project
  npm init
  npm install --save-dev browserify gulp babelify@^6.2.0 vinyl-source-stream run-sequence opn gulp-connect
  npm install --save react react-dom babelify babel-preset-react
  gulp
  fi

switch(ReactDOM.querySelector("#root")) {
| Some(root) => ReactDOM.render(
    <h1> {"Hello, World" -> React.string} </h1>, 
    root
  )
| None => ()
}
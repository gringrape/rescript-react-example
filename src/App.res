type todoItem = {id: string, text: string, complete: bool}

@react.component
let make = () => {
  let (genId, setGenId) = React.useState((_) => 0)
  let (todo, setTodo) = React.useState((_) => "")
  let (todos, setTodos) = React.useState((_) => [
    {id: "todo1", text: "eat something", complete: false},
    {id: "todo2", text: "study something", complete: false},
  ])

  let items = Belt.Array.map(todos, todoItem => {
    <li key={todoItem.id}> {React.string(todoItem.text)}</li>
  })

  let onChange = (evt) => {
    let value = ReactEvent.Form.target(evt)["value"]
    setTodo(_prev => value)
  }

  let onClick = (evt) => {
    setTodos(_prev => {
      Js.Array.concat(
        [{ id: genId -> Belt.Int.toString, text: todo, complete: false}],
        todos, 
      )
    })

    setGenId(_prev => _prev + 1)
  }

  <>
    <h1>{"TODO List" -> React.string}</h1>
    <p>
      <input onChange value=todo />
      <button onClick>{"submit" -> React.string}</button>
    </p>
    {items -> React.array}
  </>
}

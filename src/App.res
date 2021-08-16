@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0) 

  let onClickIncrease = (evt) => {
    setCount(_prev => _prev + 1);
  }

  let onClickDecrease = (evt) => {
    setCount(_prev => _prev - 1);
  }

  <>
    <h1>{"Simple Counter" -> React.string}</h1>
    <p>
      <span>{count -> Belt.Int.toString -> React.string}</span>
      <button onClick=onClickIncrease type_="button">{"increase" -> React.string}</button>
      <button onClick=onClickDecrease type_="button">{"decrease" -> React.string}</button>
    </p>
  </>
}

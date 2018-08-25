'use strict';


//  export default class Main extends React.Component {
//   constructor(props) {
//     super(props);
//   }
//   render() {
//     return(
//       <div>
//         <h1>Fruits are great!</h1>
//         <AllFruits />
//       </div>
//     )
//   }
// }

// const Main = createReactClass({
//   render: function() {
//     return(
//       <div>
//         <h1>Fruits are great! , {props.name}</h1>
//         {/* <AllFruits /> */}
//       </div>
//     )
//   }
// })

const Main = createReactClass({
  render: function() {
    return (
      <React.Fragment>
      <div>Name: {this.props.name} </div>
      {/* <AllFruits /> */}
      </React.Fragment>
    );
  }
});

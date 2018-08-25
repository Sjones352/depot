// import React from 'react';
// import _ from 'lodash';
// import React from 'react';
var map = require('lodash.map');
// import map from 'lodash.map';

class AllFruits extends React.Component {
  
  constructor(props) {
     super(props);
     this.state = {
       fruits: []
     };
   }

   componentDidMount(){
     fetch('/api/v1/fruits.json')
       .then((response) => {return response.json()})
       .then((data) => {this.setState({ fruits: data }) });
  }

  render(){
    var fruits = this.state.fruits;
    _.map(fruits, (fruit) => {
      return(
        fruit.name
          // <h1>{fruit.name}</h1>
          // <p>{fruit.description}</p>
      )
    })
// return(
//       <div>
//         {fruits}
//       </div>
//     )
  }
}
// export default AllFruits;

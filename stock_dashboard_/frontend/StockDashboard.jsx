
import React, { Component, createRef } from "react";
import io from "socket.io-client";
import "./style.css";

const socket = io("http://localhost:5000");

class StockDashboard extends Component {
  constructor(){
    super();
    this.state = { symbol:"", price:"", searches:[] };
    this.searchRef = createRef();
  }

  componentDidMount(){
    socket.on("stockUpdate",(data)=>{
      this.setState({price:data.price});
    });
  }

  componentDidUpdate(prevProps,prevState){
    if(prevState.symbol !== this.state.symbol){
      console.log("Symbol changed:",this.state.symbol);
    }
  }

  handleChange=(e)=>{
    this.setState({symbol:e.target.value});
  }

  handleSubmit=(e)=>{
    e.preventDefault();
    const val=this.searchRef.current.value;
    this.setState({searches:[...this.state.searches,val]});
    this.searchRef.current.value="";
  }

  render(){
    return(
      <div className="container mt-5">
        <h2 className="text-center">Stock Market Dashboard</h2>

        <div className="card p-4 shadow">
          <h4>Live Stock Price</h4>
          <p>Symbol: {this.state.symbol || "AAPL"}</p>
          <p className="price">${this.state.price}</p>

          <form onSubmit={this.handleSubmit}>
            <input className="form-control mb-2"
              value={this.state.symbol}
              onChange={this.handleChange}
              placeholder="Enter stock symbol"/>

            <input className="form-control mb-2"
              ref={this.searchRef}
              placeholder="Save search"/>

            <button className="btn btn-primary">Save Search</button>
          </form>
        </div>

        <div className="mt-4">
          <h4>Previous Searches</h4>
          <ul>
            {this.state.searches.map((s,i)=>(<li key={i}>{s}</li>))}
          </ul>
        </div>
      </div>
    )
  }
}

export default StockDashboard;

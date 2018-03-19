import React, { Component } from 'react'
import axios from 'axios'

class UsersContainer extends Component{
    render(){
        return(
            <div>
                Users
            </div>
        )
    }

    componentDidMount() {
        axios.get('http://localhost:3001/api/v1/users.json')
            .then(response => {
                console.log(response)
                this.setState({ideas: response.data})
            })
            .catch(error => console.log(error))
    }
}

export default UsersContainer
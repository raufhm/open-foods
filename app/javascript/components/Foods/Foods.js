import React, { useState, useEffect, Fragment} from 'react'
import axios from 'axios'

const Foods = () => {
    const [foods, setFoods] = useState([])
    
    useEffect(()=> {
        //get all foods from api
        //update food in our state
        axios.get('/api/v1/foods')
        .then( resp => {
            setFoods(resp.data.data)
        })
        .catch( resp => console.log(resp))
    }, [foods.length])

    const list = foods.map( item => {
    return (<li key={item.attributes.name}>{item.attributes.name}</li>)
    })

    return (
    <Fragment>
        <div>this is the Foods#index view for our App.</div>
        <ul>{list}</ul>
    </Fragment>
    )
}

export default Foods
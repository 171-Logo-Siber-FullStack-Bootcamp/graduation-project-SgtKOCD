const express = require('express'); 
const Router = require('./router/router.js') 
const server = express() 
const cors = require('cors'); 
const logger = require('./logging');
 
server.use(cors()); 
server.use(express.json()) 

server.get('/', (req, res) => { //server get proccess
    res.send("Hello World") 
}) 
 
const port = 5000 //server port
server.listen(port, () => { 
    console.log(`Server is running on ${port} port`) 
}) 



server.use('/api',Router)
logger.log({
    
    level:'info',
    
})
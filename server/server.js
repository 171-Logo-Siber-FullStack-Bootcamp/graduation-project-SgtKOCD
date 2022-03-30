const express = require('express'); 
const Router = require('./router/router.js') 
const server = express() 
const cors = require('cors'); 
const logger = require('./logging');
const elasticClient = require('./elasticsearch/elasticClient');
server.use(cors()); 
server.use(express.json()) 

elasticClient.ping({    
    requestTimeout: 1000
}, function (error) {
    if (error) {
        console.trace('Elasticsearch\'e erişilmiyor!');
    } else {
        console.log('Elasticsearch ayakta :)');
    }
});

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
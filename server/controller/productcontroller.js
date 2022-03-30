const pool = require('../db/config') 
 
getProducts=(request,response)=> { 
    
    pool.query('SELECT * FROM products ORDER BY id', function(err, res) { 
        if(err) { 
            return console.error('error running query', err); 
        } 
        return response.status(200).json(res.rows) 
    }); 
} 
 
getProduct = (request,response)=> { 
    console.log(request.query.id) 
    pool.query(`SELECT * FROM products WHERE id = ${request.query.id}`, function(err, res) { 
        if(err) { 
            return console.error('error running query', err); 
        } 
        return response.status(200).json(res.rows) 
    }) 
} 
 
getProductsFromCategories = (request,response)=> { // this methods are sql queries
    console.log(request.query.category_id) 
    pool.query(`SELECT * FROM products WHERE category_id = ${request.query.category_id}`, function(err, res) { 
        if(err) { 
            return console.error('error running query', err); 
        } 
        return response.status(200).json(res.rows) 
    }) 
} 

getProductImages = (request, response) => {

    pool.query(`SELECT productimages FROM products ORDER BY id ASC`, function (err, res) {
        if (err) {
            return console.error('error running query', err);
        }
        return response.status(200).json(res.rows)
    })
}

getProductElastic=(req, res) => {
 
    elasticClient.search({
      index:"Products",
      body:{query: {
        match_phrase_prefix: {
            "title":   req.query.query
        }
    } }
    },(err,rest)=>{
      if (err) {
        console.log(err);
      }
      else{
        return    res.status(200).json(rest.hits);
      }
    })  
}
postProductElastic=(req, res) => {
    elasticClient.index({
      index:"Products",
      type:  'products',
      body:req.body
    },(err)=>{
      if (err) {
        console.log(err);
      }
      else{
        return    res.status(201).json(req.body);
      }
    })
  }

 
 
module.exports = { 
    getProducts, 
    getProduct, 
    getProductsFromCategories,
    getProductImages,
    postProductElastic,
    getProductElastic
    
}
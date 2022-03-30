const express = require('express') 
const Products = require('../controller/productcontroller')    
const Categories = require('../controller/categorycontroller')

const router = express.Router() 
 
//Products 
router.get('/Products', Products.getProducts) 
router.get('/Product',Products.getProduct) 
router.get('/Productscategory', Products.getProductsFromCategories)
router.get('/Images', Products.getProductImages)
router.post('/elastic', Products.postProductElastic)
router.get('/getelastic', Products.getProductElastic)
//Categories 
router.get('/categories', Categories.getCategories) 
router.get('/category', Categories.getCategory)


 
module.exports =router
import http from "../httpcommon"; 
class DataService { 
  getAllProducts() { 
    return http.get("/Products"); 
  } 


  getProductDetail(param) { // this is a dataservice by routes by files
    return http.get("/Products/"+param); 
  } 
  
  getImages(){
    return http.get("/Images"); 
  }
  getProductFromCategories(c_id) { 
    return http.get("/Productscategory?category_id="+c_id) 
  } 
 
  getAllCategories() { 
    return http.get("/categories"); 
  } 
 
 
  create(data) { 
    return http.post("/tutorials", data); 
  } 
} 
export default new DataService();
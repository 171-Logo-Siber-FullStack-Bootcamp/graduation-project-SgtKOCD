<template>
  <div><!--This template is made to present the products to the user in the form of cards.-->
    <div class="container">
      <div class="row">
        <!--Here, on the other hand, the method of displaying the cards according to their products in the entire database at first and selecting them according to category_id from the sidebar is made.-->
        <div  class="col-md-3"  v-for="item in products.filter(
            (el) =>{
              if(store.categoryId==0){
                 return el;
              }
        return el.category_id==store.categoryId;
}
           )" :key="item.id"  >
          <div>
          <div  class="card" style="height:450px; width:250px">
            <img
              class="card-img-top"
              v-bind:src="item.productimages"
              alt="Card image"
              style="height:150px; width:250px"
            />
            <div class="card-body">
              <h4 class="card-title">{{ item.productname }}</h4>
              <p class="card-text">{{ item.description }}</p>
              
            </div>
            <a
                type="button"
                class="btn btn-success"
                @click="getid(item)"
                data-toggle="modal"
                data-target="#myModal"
                
                >See Profile</a
              >
            <div class="card-footer">
              {{ item.price }}TL
            </div>
          </div>
      
          <br>
      
      
        </div>
     
          </div>

<CardModal :parentmessage="products2"/>
      </div>
  
    </div>
    
  </div>
</template>

<script>
    import CardModal from "./CardModal.vue"
import DataService from "../../services/dataservice";
import { store } from '../store'
export default {
  name: "ProductCards",
  data() {
    return {
      store,
      products: [],
      products2: [],


      
      //productimage: ['',]
    };
  },
  components:{
CardModal
  },
  created() {

    this.getProducts();
   
    //this.getAllImages();
  },

  methods: {

    getid(param){return this.products2=param},
    
    getProducts() {
      DataService.getAllProducts()
        .then((response) => {
          console.log(store.categoryId);
          if(store.categoryId==0){
           
     return this.products = response.data;
          }
          else{
            console.log("asdasd");
           this.products= this.products.filter(
            (el) =>{
              
        return el.category_id==store.categoryId;
}
           );
          }
         
          

          console.log(response);
          return JSON.parse(JSON.stringfy(this.products));
        })
        .catch((e) => {
          console.log(e);
        });
    },
   // getAllImages() {
   //   DataService.getImages()
   //     .then((response) => {
   //       this.productimage = response.data;
//
   //       console.log(response);
   //       return JSON.parse(JSON.stringfy(this.productimage));
   //     })
   //     .catch((e) => {
   //       console.log(e);
   //     });
   // },
  },
};
</script>

<style scoped>

</style>
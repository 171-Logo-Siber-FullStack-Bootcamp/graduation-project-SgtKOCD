<template>
  <div>
    <!--We divide the sub-items in the sidebar into components.-->
    <li class="nav-item">
      <a
        class="nav-link collapsed"
        href="#"
        data-toggle="collapse"
        data-target="#collapseTwo"
        aria-expanded="true"
        aria-controls="collapseTwo"
        
      >
        <i class="fas fa-bars"></i>
        <span> Categories</span>
      </a>
      <div
        id="collapseTwo"
        class="collapse"
        aria-labelledby="headingTwo"
        data-parent="#accordionSidebar"
      >
        <div class="bg-white py-2 collapse-inner rounded">
          <h6 class="collapse-header">Our Categories:</h6><!--This a category section. the following loop is the sorting of category_ids-->
          <a class="active" @click="category(item.id)" v-for="item in categories" :key="item.id">{{item.categoryname}}<br></a>
       
        </div>
      </div>
    </li>
  </div>
 
</template>

<script>
import { store } from '../store'
import DataService from "../../services/dataservice";

export default {
    name:"NavMenu",
    data() {
    return {
      store,
      categories:[]

    };
  },
    created() {
    this.getCategories();
   
  },


  methods: {
    getCategories() {
      DataService.getAllCategories()
        .then((response) => {
          this.categories = response.data;

          console.log(response);
          return JSON.parse(JSON.stringfy(this.categories));
        })
        .catch((e) => {
          console.log(e);
        });
    },
    category(param){
      store.added(param);
    },
    d(){
       store.added(0);
    }
  
    
  },
};
</script>

<style scoped>
</style>
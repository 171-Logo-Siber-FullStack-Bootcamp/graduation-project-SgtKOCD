<template>
  <div>
    <!--We divide the sub-items in the sidebar into components.-->
    <a
      class="sidebar-brand d-flex align-items-center justify-content-center"
      href="#"
    >
      <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-cart-plus"></i>
      </div>
      <div class="sidebar-brand-text mx-3" @click="d()">BazısıŞurada</div>
    </a>
    <hr class="sidebar-divider my-0" />
  </div>
</template>

<script>
import { store } from '../store';
export default {
  name: "SidebarBrand",
  


    data() {
    return {
      store,
      categories:[]

    };
  },
   
  methods: {
    
    d(){
       store.added(0);
    }
  
    
  },

};
</script>

<style scoped>
</style>
<template>
  <div>
    <!--Here we define the components that we divide into subsections in the sidebar. in this way, it becomes a whole.-->
    <ul
      class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
      id="accordionSidebar"
    >
      <SidebarBrand />
      
      <NavMenu />
      

    </ul>
    
  </div>
</template>

<script>
//Here we define the components that we divide into subsections in the sidebar. in this way, it becomes a whole.
import SidebarBrand from "./SidebarBrand.vue";
//import NavitemDashboard from "./NavitemDashboard.vue";
import NavMenu from "./NavMenu.vue";

export default {
  name: "SideBar",
  components: {
    SidebarBrand,
    NavMenu,
    
  }
};
</script>

<style scoped>
</style>

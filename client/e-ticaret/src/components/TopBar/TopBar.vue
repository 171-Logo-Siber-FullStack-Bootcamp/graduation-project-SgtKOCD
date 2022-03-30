<template>
  <div>
      
      <!--We define the components that we divide into the subsections in the Topbar here. in this way, it becomes a whole.-->
      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <SidebarToggle />
          <TopbarSearch />
          <NavBar />
      </nav>
  </div>
</template>

<script>
//We define the components that we divide into the subsections in the Topbar here. in this way, it becomes a whole.
import SidebarToggle from './SidebarToggle.vue';
import TopbarSearch from './TopbarSearch.vue';
import NavBar from './NavBar/NavBar.vue';
export default {
    name:"TopBar",
    components:{
        SidebarToggle,
        TopbarSearch,
        NavBar
    }

}
</script>

<style scoped>

</style>


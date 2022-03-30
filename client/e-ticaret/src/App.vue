<template>
  <div>
    
    <!--We define the main blocks in our index.html file to our app.vue file. and we define the components that contain the sub html elements.-->
    <div id="wrapper">
      <SideBar /> <!--We define the main components of sidebar, logout and topbar into the blocks they belong to.-->
      <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
          <TopBar />  <!--We define the main components of sidebar, logout and topbar into the blocks they belong to.-->
        </div>
       <ProductCards />
      </div>
    </div>
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>
    <LogOut />  <!--We define the main components of sidebar, logout and topbar into the blocks they belong to.-->
  </div>
  From B: {{ store.count }}
</template>

<script>

//We define the collector components to the main component so that the project can be integrated.
import { store } from './components/store'
import SideBar from "./components/SideBar/SideBar.vue"; //We define the sidebar.vue file, which is the collector component of the sidebar.
import TopBar from "./components/TopBar/TopBar.vue"; //""  ""    ""  Topbar.vue    ""    ""    " "   ""        ""        ""      Topbar.
import LogOut from "./components/LogOut/LogOut.vue"; //                LogOut.vue                                            Logout.
import ProductCards from "./components/Cards/ProductCards.vue"
export default {
  name: "App",
data() {
    return {
      store
    }
  },
  components: {
    SideBar, //We define the sidebar.vue file, which is the collector component of the sidebar.
    TopBar, //""  ""    ""  Topbar.vue    ""    ""    " "   ""        ""        ""      Topbar.
    LogOut, //                LogOut.vue                                            Logout.
    ProductCards
  },
};
</script>

<style scoped>

</style>

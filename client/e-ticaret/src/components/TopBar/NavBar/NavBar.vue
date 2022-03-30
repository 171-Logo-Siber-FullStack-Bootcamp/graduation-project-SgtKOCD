<template>
  <div>
    <!--We define the subsections in the Topbar in different components.-->
    <ul class="navbar-nav ml-auto">
        <NavDropdown />
        
    </ul>
  </div>
</template>

<script>
import NavDropdown from './NavDropdown.vue';
/*import NavAlerts from './NavAlerts.vue';
import NavMessage from './NavMessage.vue';
import NavUserInfo from './NavUserInfo.vue';*/
export default {
    name:"NavBar",
    components:{
        NavDropdown,
        

    }
};
</script>

<style scoped>
</style>
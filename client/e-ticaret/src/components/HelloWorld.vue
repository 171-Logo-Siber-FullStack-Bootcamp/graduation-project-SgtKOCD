<template>
  <div>
    <div id="wrapper">
      <SideBar />
      <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
          <TopBar />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import SideBar from "./SideBar/SideBar.vue";
import TopBar from "./TopBar/TopBar.vue"
export default {
  name: "HelloWorld",

  components: {
    SideBar,
    TopBar
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
</style>

<template>
<div><!--Here is the pop up part of the profits.-->
      <div class="modal" id="myModal" >
            <div class="modal-dialog">
              <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                  <h4 class="modal-title">{{ parentmessage.productname}}</h4>
                  <button type="button" class="close" data-dismiss="modal">
                    &times;
                  </button>
                </div>

                <!-- Modal body -->
                <div class="modal-body" >
                    <img v-bind:src="parentmessage.productimages" style="height:275px; width:450px">
                    <br>
                    {{ parentmessage.description}}
                </div>
                
                <!-- Modal footer -->
                <div class="modal-footer">
                  <button
                    type="button"
                    class="btn btn-danger"
                    data-dismiss="modal"
                  >
                    Close
                  </button>
                </div>
              </div>
            </div>
          </div>
               </div>
</template>

<script>
export default {
name:"CardModal",
 props: ['parentmessage'],//this is an child object. parent obj in the productcards.vue


}
</script>

<style>

</style>
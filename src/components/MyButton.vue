<template>
  <div>
    <h2>hello {{count}}次</h2>
    <button @click="count++">点我</button>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        count:0
      }
    },
  }
</script>

<style>
  h2{
    color:red
  }
</style>
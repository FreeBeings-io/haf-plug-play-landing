<template>
  <div class="card-component" :style="'background-color:' + background">
    <img :src="icon" alt="" />
    <h1>{{ title }}</h1>
    <div class="w-5/6">
      <span>{{ description }}</span>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    icon: String,
    title: String,
    description: String,
    background: String,
  },
};
</script>

<style lang="scss" scoped>
.card-component {
  @apply py-9 px-7 mx-0 md:mx-3 my-3 md:my-0;
  border-radius: 5px;
  h1 {
    font-weight: 600;
    font-size: 20px;
    line-height: 30px;
    color: #151617;
    @apply mb-3 mt-5;
  }
  span {
    font-weight: 500;
    font-size: 16px;
    line-height: 28px;
    color: #767676;
  }
}
</style>

<template>
  <div class="content" :id="id">
    <div class="mx-0 md:mx-auto text-left md:text-center">
      <h1 class="brand-gradient">{{ title }}</h1>
      <span>{{ bio }}</span>
    </div>
    <slot />
  </div>
</template>

<script>
export default {
  props: {
    title: String,
    bio: String,
    id: String,
  },
};
</script>

<style lang="scss" scoped>
.content {
  @apply w-full;
  position: relative;
  z-index: 5;

  h1:first-child {
    font-family: "Fira Code", monospace;
    font-weight: 700;
    line-height: 63px;
    letter-spacing: -0.03em;
    @apply mb-5 text-3xl md:text-5xl;
  }

  span {
    color: #767676;
    font-weight: 500;
    line-height: 28px;
    @apply text-base md:text-lg;
  }
}
</style>

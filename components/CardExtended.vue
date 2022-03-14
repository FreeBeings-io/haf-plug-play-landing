<template>
  <div class="card-component" :style="'background-color:' + background">
    <div>
      <h1>{{ title }}</h1>
      <div>
        <span>{{ description }}</span>
      </div>
      <div class="flex my-10 md:my-0">
        <a
          :style="'background-color:' + accent"
          :href="apiLink"
          target="_blank"
        >
          <img src="document-icon.svg" alt="" />
          API Documentation
        </a>
        <a
          :style="'border: 2px solid' + accent"
          :href="opsLink"
          target="_blank"
        >
          <img src="volume-icon.svg" alt="" />
          Broadcast Ops
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    image: String,
    title: String,
    description: String,
    background: String,
    accent: String,
    apiLink: String,
    opsLink: String,
  },
};
</script>

<style lang="scss" scoped>
.card-component {
  @apply px-5 py-8 md:py-16 md:px-16 w-full md:w-2/4 flex flex-col flex-col-reverse md:flex-row items-center my-14 rounded-xl md:rounded-2xl;
  h1 {
    font-family: "Fira Code", monospace;
    font-weight: bold;
    line-height: 63px;
    letter-spacing: -0.03em;
    color: #151617;
    @apply my-9 md:mb-9 text-3xl md:text-5xl;
  }
  span {
    font-weight: 500;
    line-height: 28px;
    color: #767676;
    @apply text-base md:text-lg;
  }
  a {
    @apply mt-0 md:mt-16 py-2 px-2 md:py-4 md:px-8 flex items-center text-xs md:text-base transition-all duration-500 ease-in-out cursor-pointer;
    border-radius: 5px;
    &:hover {
      @apply opacity-70;
    }
    img {
      @apply mr-2;
    }
  }
  a:nth-of-type(1) {
    color: white;
  }
  a:nth-of-type(2) {
    @apply ml-3 md:ml-5;
  }
}
</style>

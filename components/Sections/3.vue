<template>
  <div class="content" id="wallet">
    <div class="mx-0 md:mx-auto text-left md:text-center">
      <h1>Who is using Hive Plug & Play?</h1>
      <span
        >Spreuke is a tool for developers to easily build and deploy dApps on
        the Hive blockchain.</span
      >
    </div>
    <div class="mt-24 flex justify-start md:justify-center">
      <img
        src="peakd.svg"
        class="mr-3 md:mr-32 w-5/12 md:w-auto h-5/12 md:h-auto"
        alt=""
      />
      <img src="podping.svg" class="w-5/12 md:w-auto h-5/12 md:h-auto" alt="" />
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.content {
  @apply w-full;
  position: relative;
  z-index: 5;

  h1 {
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

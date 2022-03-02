<template>
  <div class="content">
    <div class="mx-0 md:mx-auto text-left md:text-center">
      <h1>Join other Web 3.0 developers leveraging Hive Plug & Play</h1>
      <span>What the community is saying</span>
    </div>
    <div class="mt-14">
      <div class="t">
        <img src="brianoflondon.png" />
        <h1>@brianoflondon</h1>
        <span
          >Buy and sell popular digital currencies, keep track of them in the
          one place.</span
        >
      </div>
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

  .t {
    @apply flex flex-col justify-center text-center mx-auto;
    img {
      @apply rounded-full h-32 w-32 mx-auto;
    }
    h1 {
      font-weight: 600;
      color: #151617;
      @apply mt-5 text-base md:text-xl;
    }
    span {
      color: #767676;
      @apply mt-3 text-sm md:text-base;
    }
  }
}
</style>

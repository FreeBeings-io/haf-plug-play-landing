<template>
  <Screen
    title="Who is using Hive Plug & Play?"
    bio="Platforms that have already integrated."
    id="integrations"
  >
    <div class="mt-24 flex justify-start md:justify-center">
      <a href="https://peakd.com" target="_blank" rel="noopener noreferrer">
        <img
          src="peakd.svg"
          class="mr-3 md:mr-32 w-5/12 md:w-auto h-5/12 md:h-auto"
          alt=""
        />
      </a>
      <a href="https://podping.org/" target="_blank" rel="noopener noreferrer">
        <img
          src="podping.svg"
          class="w-5/12 md:w-auto h-5/12 md:h-auto"
          alt=""
        />
      </a>
    </div>
  </Screen>
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

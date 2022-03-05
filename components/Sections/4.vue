<template>
  <Screen
    title="Public Protocols"
    bio="Features you can freely add to your dApp, available on Hive Plug & Play
        right now."
    id="api"
  >
    <CardExtended
      title="Polls"
      description="Enabling users to capture the quantitative distribution of opinions and reach public consensus"
      background="#EFF0F9;"
      accent="#0080FF"
      image="img6.svg"
      apiLink="https://plug-play.imwatsi.com/docs#/polls"
      opsLink="/integration-polls"
    />
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

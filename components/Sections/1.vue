<template>
  <div>
    <Screen
      title="Made by developers, for developers"
      bio="Spreuke is a tool for developers to easily build and deploy dApps on the Hive blockchain"
      id="developers"
    >
      <img src="img6.svg" class="flex justify-center mx-auto mt-14" alt="" />
    </Screen>
    <div class="frame12"></div>
    <div class="frame14"></div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.content {
  @apply w-full mb-24 md:mb-52;
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

.frame12 {
  @apply hidden md:block;
  position: absolute;
  width: 20rem;
  height: 20rem;
  left: 202px;
  top: 81rem;
  background: #7000ff;
  filter: blur(25rem);
}

.frame14 {
  @apply hidden md:block;
  position: absolute;
  width: 20rem;
  height: 20rem;
  left: 577px;
  top: 81rem;
  background: #ff00c7;
  filter: blur(25rem);
}
</style>

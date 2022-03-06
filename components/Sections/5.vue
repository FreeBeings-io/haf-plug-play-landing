<template>
  <Screen
    title="Join other Web 3.0 developers leveraging Hive Plug & Play"
    bio="What the community is saying"
    class="content"
  >
    <div class="mt-14">
      <a class="t" href="https://hive.blog/@brianoflondon" target="_blank">
        <img src="brianoflondon.png" />
        <h1>@brianoflondon</h1>
        <span
          ></span
        >
      </a>
    </div>
  </Screen>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
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
</style>

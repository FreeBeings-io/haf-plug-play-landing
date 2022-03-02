<template>
  <div class="content" id="ecosystem">
    <div class="mx-0 md:mx-auto text-left md:text-center">
      <h1>Get Started, easy peasy</h1>
      <span>Start developing using this easy steps</span>
    </div>
    <div class="mt-14 grid grid-cols-1 md:grid-cols-3 mx-auto">
      <Card
        title="Design"
        icon="design-icon.svg"
        description="API endpoints,
      custom_json operations and database schemas"
        background="rgba(233, 244,255, 1);"
      />
      <Card
        title="Develop"
        icon="develop-icon.svg"
        description="Write the code yourself or have one of our developers assist you"
        background="rgba(255, 233, 233, 1);"
      />
      <Card
        title="Deploy"
        icon="deploy-icon.svg"
        description="Plug into our public node (for serverless deployments) or deploy your custom server"
        background="rgba(255, 247, 233, 1);"
      />
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

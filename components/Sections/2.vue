<template>
  <Screen
    title="Get Started, easy peasy"
    bio="Start developing using this easy steps"
    id="ecosystem"
  >
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
  </Screen>
</template>

<script>
export default {};
</script>

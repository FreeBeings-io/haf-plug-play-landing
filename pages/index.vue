<template>
  <div>
    <div class="frame1"></div>

    <div class="wrap">
      <Nav />
      <Hero />
    </div>

    <div class="mb-10 mx-5 md:mx-44">
      <One />
      <Two />
      <Three />
      <Four />
      <Five />
      <Six />
      <Seven />
    </div>

    <Footer />
  </div>
</template>

<script lang="ts">
import Vue from "vue";

import One from "../components/Sections/1.vue";
import Two from "../components/Sections/2.vue";
import Three from "../components/Sections/3.vue";
import Four from "../components/Sections/4.vue";
import Five from "../components/Sections/5.vue";
import Six from "../components/Sections/6.vue";
import Seven from "../components/Sections/7.vue";

export default Vue.extend({
  name: "IndexPage",
  components: { One, Two, Three, Four, Five, Six, Seven },
});
</script>

<style lang="scss">
@import url("https://fonts.googleapis.com/css2?family=Fira+Code:wght@300;400;500;600;700&family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap");

html {
  scroll-behavior: smooth;
}

body {
  font-family: "Inter", sans-serif;
  overflow-x: hidden;
}

.wrap {
  @apply m-5 md:mx-44;
}

.frame1 {
  @apply hidden md:block;
  background: white;
  background: linear-gradient(180deg, #8bb5ff 0%, #e1fbff 100%);
  position: absolute;
  width: 50rem;
  height: 50rem;
  left: 40rem;
  top: -2.5rem;
  filter: blur(25rem);
  z-index: 1;
}

.brand-gradient {
  background: -webkit-linear-gradient(78.18deg, #000000 8.97%, #ff0000 72.35%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
</style>

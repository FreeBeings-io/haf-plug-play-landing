<template>
  <div id="contact">
    <div class="content">
      <div class="card-start mb-5 md:mb-44">
        <img src="decor3.svg" class="decor3" alt="" />

        <h1>Get started with Hive Plug & Play today</h1>
        <p>
          Use the power of custom_json operations on the Hive Blockchain and
          build your dream dApp.
        </p>
        <button>
          <NuxtLink to="/contact" class="contact">Contact us</NuxtLink>
        </button>

        <img src="decor4.svg" class="decor4" alt="" />
        <img src="decor5.svg" class="decor5" alt="" />
      </div>
    </div>
    <div class="frame3"></div>
    <div class="frame4"></div>
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

  .card-start {
    @apply text-left md:text-center p-5 md:p-32;
    background: #151617;
    border-radius: 20px;
    h1 {
      background: -webkit-linear-gradient(
        left,
        rgba(255, 255, 255, 1),
        rgba(255, 0, 0, 1)
      );
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      font-family: "Fira Code", monospace;
      font-weight: bold;
      line-height: 63px;
      letter-spacing: -0.03em;
      @apply text-2xl md:text-5xl;
    }
    p {
      font-weight: 500;
      line-height: 28px;
      color: #d6d6d6;
      @apply mt-2 text-base md:text-lg;
    }
    button {
      @apply mt-8 md:mt-14 mb-5 md:mb-0;
      .contact {
        border-radius: 5px;
        background: white;
        @apply px-24 py-3 w-full md:w-auto  transition-all duration-500 ease-in-out hover:opacity-70;
      }
    }
    .decor3 {
      @apply hidden md:block;
      position: absolute;
      transform: rotate(-90.63deg);
      @apply w-10 h-10;
    }
    .decor4 {
      @apply hidden md:block;
      position: absolute;
      width: 56px;
      height: 56px;
      left: 1314px;
      top: 50%;
    }
    .decor5 {
      @apply hidden md:block;
      position: absolute;
      left: 30%;
      top: 56%;
    }
  }
}

.frame3 {
  @apply hidden md:block;
  position: absolute;
  width: 20rem;
  height: 20rem;
  left: 202px;
  background: #7000ff;
  top: 330rem;
  filter: blur(400px);
}
.frame4 {
  @apply hidden md:block;
  position: absolute;
  width: 20rem;
  height: 20rem;
  left: 577px;
  top: 330rem;
  background: #ff00c7;
  filter: blur(400px);
}
</style>

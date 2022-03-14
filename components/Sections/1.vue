<template>
  <div id="developers">
    <Screen
      title="Made by developers, for developers"
      bio="The power and flexibility of PostgreSQL coupled with versatile API design and the freedom of blockchain"
      id="developers"
    >
      <div
        class="focus:outline-none mt-20 flex flex-wrap justify-center gap-10 px-4"
      >
        <div
          class="focus:outline-none flex sm:w-full md:w-5/12 pb-20 flex items-center"
          v-for="item in features"
          :key="item.desc"
        >
          <div class="w-20 h-20 relative mr-5">
            <div
              class="absolute top-0 right-0 bg-indigo-100 rounded w-16 h-16 mt-2 mr-1 shadow-inner shadow-lg"
            ></div>
            <div
              class="absolute text-white bottom-0 left-0 bg-indigo-700 rounded w-16 h-16 flex items-center justify-center mt-2 mr-3"
            >
              <img :src="item.img" alt="drawer" />
            </div>
          </div>
          <div class="w-10/12">
            <h2 class="focus:outline-none text-lg font-bold text-gray-800">
              {{ item.desc }}
            </h2>
          </div>
        </div>
      </div>
    </Screen>
    <div class="frame12"></div>
    <div class="frame14"></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      features: [
        {
          img: "https://tuk-cdn.s3.amazonaws.com/can-uploader/icon_and_text-SVG1.svg",
          desc: "Use the power and flexibility of PostgreSQL to create your data sets",
        },
        {
          img: "https://tuk-cdn.s3.amazonaws.com/can-uploader/icon_and_text-SVG2.svg",
          desc: "Create your APIs using FastAPI, which leverages OpenAPI",
        },
        {
          img: "https://tuk-cdn.s3.amazonaws.com/can-uploader/icon_and_text-SVG3.svg",
          desc: "Choose to run your own server or use the public node that's free forever",
        },
        {
          img: "https://tuk-cdn.s3.amazonaws.com/can-uploader/icon_and_text-SVG4.svg",
          desc: "Get consultation and support from our team (we’re also building dApps on Hive)",
        },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
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

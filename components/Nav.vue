<template>
  <nav id="nav">
    <div class="container mx-auto">
      <div class="flex items-center justify-between">
        <a href="/">
          <img src="logo.svg" alt="" />
        </a>

        <div class="hidden sm:flex sm:items-center">
          <div class="items">
            <NuxtLink
              class="font-medium px-4 py-2 transition duration-150 ease-in-out whitespace-nowrap text-neutral-200 hover:text-gray-300"
              v-for="item in arr"
              v-bind:key="item.index"
              :to="item.href"
            >
              {{ item.title }}
            </NuxtLink>
          </div>
        </div>

        <div class="hidden sm:flex sm:items-center">
          <NuxtLink class="main" to="#contact">Get started</NuxtLink>
        </div>

        <button
          class="md:hidden rounded-lg focus:outline-none focus:shadow-outline"
          @click="open = !open"
        >
          <svg fill="currentColor" viewBox="0 0 20 20" class="w-6 h-6">
            <path
              v-if="!open"
              fill-rule="evenodd"
              class="text-neutral-200"
              d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM9 15a1 1 0 011-1h6a1 1 0 110 2h-6a1 1 0 01-1-1z"
              clip-rule="evenodd"
            ></path>
            <path
              v-if="open"
              fill-rule="evenodd"
              class="text-neutral-200"
              d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
              clip-rule="evenodd"
            ></path>
          </svg>
        </button>
      </div>

      <div class="bg-white border-t-2 py-2" :class="open ? 'block' : 'hidden'">
        <div class="flex flex-col">
          <a
            v-for="item in arr"
            v-bind:key="item.index"
            :to="item.href"
            class="text-gray-800 text-sm font-semibold hover:text-purple-600 mb-1"
          >
            {{ item.title }}
          </a>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  data() {
    return {
      open: false,
      arr: [
        {
          href: "#developers",
          title: "Developers",
        },
        {
          href: "#ecosystem",
          title: "Getting Started",
        },
        {
          href: "#wallet",
          title: "Integrations",
        },
        {
          href: "#api",
          title: "Public Protocols",
        },
        {
          href: "#faq",
          title: "FAQ",
        },
      ],
    };
  },
  methods: {
    handleScroll() {
      let header = document.getElementById("nav");
      if (
        window.scrollY > 100 &&
        !header.className.includes("bg-blur") &&
        !header.className.includes("shadow-lg")
      ) {
        header.classList.add("bg-blur");
        header.classList.add("shadow-lg");
      } else if (window.scrollY < 100) {
        header.classList.remove("bg-blur");
        header.classList.remove("shadow-lg");
      }
    },
  },
  created() {
    if (process.client) {
      window.addEventListener("scroll", this.handleScroll);
    }
  },
  destroyed() {
    if (process.client) {
      window.removeEventListener("scroll", this.handleScroll);
    }
  },
};
</script>

<style lang="scss" scoped>
nav {
  @apply flex justify-between items-center transition-all duration-500 ease-in-out relative md:fixed h-auto md:h-24;
  z-index: 555;
  left: 0;
  top: 0;
  width: 100%;

  &.bg-blur {
    backdrop-filter: blur(400px);
  }
  .items {
    @apply flex-col align-middle pb-4 md:pb-0 md:flex md:justify-end md:flex-row;
    a {
      font-weight: 500;
      font-size: 18px;
      color: rgba(21, 22, 23, 1);
      @apply mx-9;
      @apply transition-all duration-500 ease-in-out hover:opacity-50;
    }
  }

  .main {
    background: #151617;
    color: white;
    font-weight: 500;
    font-size: 18px;
    border-radius: 5px;
    @apply py-3 px-10 hidden md:block transition-all duration-500 ease-in-out hover:opacity-70;
  }
}
</style>

<template>
  <div class="w-full bg-gray-800 h-screen">
    <div class="bg-gradient-to-b from-purple-900 to-purple-700 h-96"></div>
    <div class="max-w-5xl mx-auto px-6 sm:px-6 lg:px-8 mb-12">
      <Transition>
        <div v-if="success">
          <div
            class="text-center text-3xl font-bold leading-7 text-white bg-gray-900 w-full shadow rounded p-8 sm:p-12 -mt-12"
          >
            <h1>Message sent successfully.</h1>
          </div>
        </div>
        <div v-else>
          <div class="bg-gray-900 w-full shadow rounded p-8 sm:p-12 -mt-72">
            <p class="text-3xl font-bold leading-7 text-center text-white">
              Get in touch
            </p>
            <form action="" method="post">
              <div class="md:flex items-center mt-12">
                <div class="w-full flex flex-col">
                  <label class="font-semibold leading-none text-gray-300"
                    >Name</label
                  >
                  <input
                    v-model="name"
                    type="text"
                    required
                    class="leading-none text-gray-50 p-3 focus:border-purple-700 mt-4 border-0 bg-gray-800 rounded"
                  />
                </div>
              </div>
              <div>
                <div class="w-full flex flex-col mt-8">
                  <label class="font-semibold leading-none text-gray-300"
                    >E-mail address</label
                  >
                  <input
                    v-model="email"
                    type="email"
                    required
                    class="leading-none text-gray-50 p-3 focus:border-purple-700 mt-4 border-0 bg-gray-800 rounded"
                  />
                </div>
              </div>
              <div class="md:flex items-center mt-8">
                <div class="w-full flex flex-col">
                  <label class="font-semibold leading-none text-gray-300"
                    >Subject</label
                  >
                  <input
                    v-model="subject"
                    type="text"
                    required
                    class="leading-none text-gray-50 p-3 focus:border-purple-700 mt-4 border-0 bg-gray-800 rounded"
                  />
                </div>
              </div>
              <div>
                <div class="w-full flex flex-col mt-8">
                  <label class="font-semibold leading-none text-gray-300"
                    >Message</label
                  >
                  <textarea
                    type="text"
                    v-model="message"
                    required
                    class="h-40 text-base leading-none text-gray-50 p-3 focus:border-purple-700 mt-4 bg-gray-800 border-0 rounded resize-none"
                  ></textarea>
                </div>
              </div>
              <div class="flex items-center justify-center w-full">
                <button
                  type="submit"
                  @click="onSubmit"
                  class="shadow transition-all duration-500 ease-in-out mt-9 font-semibold leading-none text-white py-4 px-10 bg-blue-700 rounded hover:bg-blue-600 focus:ring-2 focus:ring-offset-2 focus:ring-blue-700 focus:outline-none"
                >
                  <span v-show="!loading">Send message</span>
                  <div v-show="loading" class="loader"></div>
                </button>
              </div>
            </form>
          </div>
        </div>
      </Transition>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      subject: "",
      message: "",
      email: "",
      loading: false,
      success: false,
    };
  },
  methods: {
    onSubmit(e) {
      this.loading = true;
      e.preventDefault();
      fetch("https://api.fr33beings.org/contact", {
        method: "POST",
        body: JSON.stringify({
          name: this.name,
          email: this.email,
          subject: this.subject,
          message: this.message,
        }),
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
        },
      })
        .then((res) => res.json())
        .then((res) => {
          this.loading = false;
          if (res.success === true) this.success = true;
        })
        .catch((e) => console.log(e));
    },
  },
};
</script>

<style lang="scss" scoped>
.loader {
  @apply ease-linear rounded-full border-4 border-t-4 border-indigo-200 h-8 w-8 mx-auto;
  border-top-color: #3498db;
  -webkit-animation: spinner 1.5s linear infinite;
  animation: spinner 1.5s linear infinite;
}

@-webkit-keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
  }
}
@keyframes spinner {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}

/* we will explain what these classes do next! */
.v-enter-active,
.v-leave-active {
  transition: opacity 0.5s ease;
}

.v-enter-from,
.v-leave-to {
  opacity: 0;
}
</style>

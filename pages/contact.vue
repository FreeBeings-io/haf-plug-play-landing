<template>
  <div class="w-full bg-gray-800 h-screen">
    <div class="bg-gradient-to-b from-purple-900 to-purple-700 h-96"></div>
    <div class="max-w-5xl mx-auto px-6 sm:px-6 lg:px-8 mb-12">
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
              class="transition-all duration-500 ease-in-out mt-9 font-semibold leading-none text-white py-4 px-10 bg-blue-700 rounded hover:bg-blue-600 focus:ring-2 focus:ring-offset-2 focus:ring-blue-700 focus:outline-none"
            >
              Send message
            </button>
          </div>
        </form>
      </div>
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
      loading: false,
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
          subject: this.subject,
          message: this.message,
        }),
      })
        .then((res) => res.json())
        .then((res) => {
          this.loading = false;
          console.log(res);
        });
    },
  },
};
</script>

<style></style>

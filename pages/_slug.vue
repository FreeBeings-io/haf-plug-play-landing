<template>
  <div class="bg-gray-800">
    <div class="bg-gradient-to-b from-purple-900 to-purple-700 p-24"></div>

    <div class="content">
      <div v-html="data" class="markdown"></div>
    </div>
  </div>
</template>

<script>
import { marked } from "marked";

export default {
  async asyncData({ params, redirect }) {
    let data;

    switch (params.slug) {
      case "integration-polls":
        data = await fetch(
          "https://raw.githubusercontent.com/imwatsi/haf-plug-play/master/docs/protocols/polls.md"
        ).then((response) => response.text());
        break;

      default:
        redirect("/");
        break;
    }

    return {
      data: marked(data),
    };
  },
};
</script>

<style>
.markdown {
  @apply md:px-52 font-light;
}

.content {
  @apply mx-auto px-6 sm:px-6 lg:px-8 pb-12;
}

.markdown pre {
  @apply bg-gray-200 w-full;
  white-space: pre-wrap;
  white-space: -moz-pre-wrap;
  white-space: -pre-wrap;
  white-space: -o-pre-wrap;
  word-wrap: break-word;
}

.markdown p {
  @apply my-3 text-gray-100;
}

.markdown h2 {
  color: white;
  @apply mt-12 text-2xl font-semibold mb-5;
}

.markdown h1 {
  @apply hidden;
}

.markdown h3 {
  @apply text-2xl font-bold text-gray-200 mt-12;
}

.markdown h1 + p {
  @apply hidden;
}

.markdown a {
  color: rgba(118, 99, 232, 1);
}

.markdown ul li {
  @apply my-5;
  color: #c6c6c6;
  list-style: inside;
}
</style>

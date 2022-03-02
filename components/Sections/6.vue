<template>
  <div class="content" id="faq">
    <div class="mx-0 md:mx-auto text-left md:text-center">
      <h1>FAQ</h1>
      <span>Frequently Asked Questions</span>
    </div>
    <div class="mt-3 w-full">
      <Accordion :items="myItems" :borderColor="'none'" />
    </div>
  </div>
</template>

<script>
import Accordion from "../Accordion.vue";

export default {
  components: {
    Accordion,
  },
  data() {
    return {
      myItems: [
        {
          title: "What is the Hive Blockchain?",
          value:
            "Hive is a forward-thinking, innovative, decentralized blockchain and ecosystem designed to scale with the widespread adoption of cryptocurrencies and Web3 platforms in mind. Combining fast processing times and commission-free transactions, Hive is positioned to become one of the leading Web3 blockchain used by people around the world.",
        },
        {
          title: "What is Hive Plug & Play?",
          value:
            "Hive Plug & Play is a customizable layer 2 microservice that simplifies buidling custom_json centric dApps on the Hive blockchain.",
        },
        {
          title: "What kind of apps are supported?",
          value:
            "Any idea/app you have that leverages custom_json ops on the Hive blockchain can leverage Hive Plug & Play",
        },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
.content {
  @apply w-full;
  position: relative;
  z-index: 5;

  h1:first-child {
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

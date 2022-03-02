<template>
  <Screen title="FAQ" bio="Frequently Asked Questions" id="faq">
    <div class="mt-3 w-full">
      <Accordion :items="myItems" :borderColor="'none'" />
    </div>
  </Screen>
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

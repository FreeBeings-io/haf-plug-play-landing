<template>
  <div class="hero">
    <div class="ls">
      <div class="typography">
        <h1>
          Build dApps on <br />
          <strong>Hive</strong>, easily
        </h1>
        <div class="w-full md:w-1/2">
          <span>
            Hive Plug & Play is a customizable layer 2 microservice that
            simplifies buidling custom_json centric dApps on the Hive
            blockchain.
          </span>
        </div>
      </div>
      <button>Get Started</button>
    </div>
    <div class="rs">
      <div class="feature">
        <img src="server-icon.svg" alt="" />
        <h1>Serverless deployment</h1>
        <span
          >Leverage our public node to develop and deploy without setting up
          your own server.
          <br />
          Just define your APIs and database schemas, and we’ll handle the rest.
        </span>
      </div>
      <div class="feature">
        <img src="cloud-icon.svg" alt="" />
        <h1>Custom server</h1>
        <span>Run your own customized node for your dApp</span>
      </div>
      <img src="decor1.svg" class="decor1" alt="" />
      <img src="decor2.svg" class="decor2" alt="" />
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.hero {
  position: relative;
  @apply pt-44 md:pt-60 pb-24 flex flex-col md:flex-row justify-between;
  z-index: 5;

  .ls {
    .typography {
      h1 {
        font-family: "Fira Code", monospace;
        font-weight: 700;
        line-height: 80px;
        letter-spacing: -0.03em;
        color: #151617;
        @apply mb-5 text-7xl;
        strong {
          background: -webkit-linear-gradient(
            78.18deg,
            #000000 8.97%,
            #ff0000 72.35%
          );
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
        }
      }

      span {
        font-weight: 500;
        font-size: 18px;
        color: #767676;
      }
    }

    button {
      background: #151617;
      color: white;
      font-weight: 500;
      font-size: 18px;
      border-radius: 5px;
      @apply py-3 px-16 mt-16 mb-20 md:mb-0 w-full md:w-auto transition-all duration-500 ease-in-out hover:opacity-70;
    }
  }

  .rs {
    .feature {
      @apply mb-12;
      img {
        @apply mb-4 w-9 h-9 md:w-auto md:h-auto;
      }
      h1 {
        font-family: "Fira Code", monospace;
        font-weight: 700;

        line-height: 37px;
        color: rgba(21, 22, 23, 1);
        @apply mb-2.5 text-xl md:text-3xl;
      }
      span {
        color: #767676;
        font-weight: 500;
        line-height: 28px;
        @apply text-base md:text-lg;
      }
    }
  }

  .decor1 {
    @apply hidden md:block;
    position: relative;
    width: 41px;
    height: 52px;
    bottom: 90%;
    left: -5rem;
  }

  .decor2 {
    @apply hidden md:block;
    position: relative;
    width: 82px;
    height: 85px;
    left: 35rem;
    bottom: 12%;
  }
}
</style>

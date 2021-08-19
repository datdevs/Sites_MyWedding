<template>
  <div :class="$style.AppWrap">
    <div :class="$style.Header">
      <img :class="$style.Logo" src="/themes/Wedding/images/logo.png" alt="logo" />
      <span :class="$style.OwnName">Chí Đạt <small>&</small> Diệu Trang</span>
      <h6 :class="$style.DateText">02.05.2021</h6>
    </div>
    <div :class="$style.CardCover">
      <div :class="$style.CardCInner">
        <div :class="$style.CardCInnerHeader">
          <span>Wedding Invitation</span>
        </div>
        <div :class="$style.CardImage">
          <CuteBg />
        </div>
        <div :class="$style.CardInviText">
          <div :class="$style.InviDes">
            <span :class="$style.WelText">Kính mời:</span>
            <span :class="$style.GuestName">{{ !routeNext ? 'Mr & Ms' : inviteeName }}</span>
          </div>
        </div>
        <div :class="$style.CardInviText" v-if="!routeNext">
          <ol>
            <li v-for="invitee in invitees" :key="invitee.key">
              <router-link :to="{ name: 'Invitee', params: { name: invitee.key, invitee: invitee.name } }">{{ invitee.name }}</router-link>
            </li>
          </ol>
        </div>
      </div>
    </div>
    <router-view :invitee="inviteeName"></router-view>
  </div>
</template>

<script>
import CuteBg from '../components/cute_bg'

export default {
  components: {
    CuteBg,
  },
  data() {
    return {
      routeNext: false,
      invitees: [],
      inviteeName: null,
    }
  },
  watch: {
    '$route.params': {
      handler: function(params) {
        const a = this
        if (params && Object.keys(params).length === 0 && params.constructor === Object) {
          a.routeNext = false
        } else {
          a.routeNext = true
          a.$watch(
            (vm) => vm.invitees,
            (val) => {
              if (typeof val !== 'undefined' && val.length > 0) {
                a.inviteeName = val.find((invitee) => invitee.key === params.name).name
              }
            },
            {
              immediate: true,
              deep: true,
            }
          )
        }
      },
      deep: true,
      immediate: true,
    },
  },
  mounted() {
    this.fetchInvitation()
  },
  methods: {
    fetchInvitation() {
      const a = this
      const requestInvitation = new XMLHttpRequest()
      requestInvitation.open('GET', '/themes/Wedding/invitation/index.json', true)
      requestInvitation.onload = function() {
        if (this.status >= 200 && this.status < 400) {
          const resp = JSON.parse(this.response)
          a.invitees = resp.invitation
        } else {
          console.log(this.response)
        }
      }
      requestInvitation.onerror = function() {
        console.log(this.response)
      }
      requestInvitation.send()
    },
  },
}
</script>

<style lang="scss" module>
body {
  background: #f6f1f0;
}

.AppWrap {
  padding: 20px;
  text-align: center;
}

.Header {
  margin: 20px 0 50px;
}

.Logo {
  width: 90px;
}

.OwnName {
  color: #bd945a;
  display: block;
  font-family: Snell Roundhand, cursive;
  font-size: 36px;
  font-weight: 400;
  line-height: 1.5em;
  margin-top: 0;
}

.DateText {
  color: #000;
  font-family: Dosis, sans-serif;
  font-size: 12px;
  font-weight: 400;
  letter-spacing: 5px;
  margin-bottom: 5px;
  text-transform: none;
}

.CardCover {
  background: #fff;
  margin: 50px auto;
  max-width: 100%;
  padding: 20px;
  width: 500px;
}

.CardCInner {
  border: 4px solid rgba(189, 148, 90, 0.7);
  padding: 20px;
}

.CardCInnerHeader {
  font-family: 'Prata', serif;
  font-size: 18px;
  letter-spacing: 2px;
  text-transform: uppercase;

  span {
    border-bottom: 1px solid #999;
    border-top: 1px solid #999;
    padding: 8px 0 2px;
  }
}

.CardImage {
  margin-top: 30px;

  svg {
    width: 200px;
  }
}

.CardInviText {
  display: flex;
  font-family: 'Prata', serif;
  font-size: 16px;
  font-weight: 500;
  justify-content: center;
  margin-top: 30px;
  overflow: hidden;
  text-align: left;
}

.InviDes {
  position: relative;

  &::before,
  &::after {
    border-top: 1px solid;
    bottom: 7px;
    content: '';
    position: absolute;
    width: 200px;
  }

  &::before {
    left: 100%;
    margin-left: 6px;
  }

  &::after {
    margin-right: 6px;
    right: 100%;
  }
}

.WelText {
  text-transform: uppercase;
}

.GuestName {
  margin-left: 6px;
  text-transform: capitalize;
}
</style>

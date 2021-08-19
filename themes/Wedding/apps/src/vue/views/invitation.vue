<template>
  <div>
    <div :class="$style.CardCover">
      <div :class="$style.CardCInner">
        <div :class="$style.CardCInnerHeader">
          <span>Lễ Thành Hôn</span>
        </div>
        <div :class="$style.CardCInnerBody">
          <div :class="$style.FamilyInfo">
            <table>
              <tr>
                <td>
                  <div :class="$style.FIName">Ông: Nguyễn Văn Thạnh</div>
                  <div :class="$style.FIName">Bà: Nguyễn Thị Thanh Trang</div>
                  <div :class="$style.FIAdd">Phước Hải - Nha Trang</div>
                </td>
                <td>
                  <div :class="$style.FIName">Ông: Nguyễn Khoa Lộc</div>
                  <div :class="$style.FIName">Bà: Trần Thị Kim Hòa</div>
                  <div :class="$style.FIAdd">Ngọc Hiệp - Nha Trang</div>
                </td>
              </tr>
            </table>
          </div>
          <div :class="$style.MainName">
            <span>Nguyễn Chí Đạt</span>
          </div>
          <div :class="$style.MiddleText">
            <span>Quý Nam</span>
            <span>&</span>
            <span>Quý Nữ</span>
          </div>
          <div :class="$style.MainName">
            <span>Nguyễn Khoa Diệu Trang</span>
          </div>
        </div>
        <div :class="$style.CardCInnerFooter">
          <div>Hôn lễ được cử hành tại tư gia</div>
          <div>Vào lúc: 12h00. Thứ bảy</div>
          <div :class="$style.FirstDate">01.05.2021</div>
          <div :class="$style.SubDate">(Nhằm ngày 20 tháng 03 năm Tân Sửu)</div>
        </div>
      </div>
    </div>
    <div :class="$style.CardCover">
      <div :class="$style.CardCInner">
        <div :class="$style.CardCInnerHeader">
          <span>Trân Trọng Kính Mời</span>
        </div>
        <div :class="$style.CardCInnerBody">
          <div :class="$style.InviteText">
            <div :class="$style.InviteeName">{{ invitee }}</div>
            <div :class="$style.LineHeight">
              Đến dự buổi tiệc thân mật <br />
              chung vui cùng gia đình chúng tôi tại:
            </div>
            <div :class="$style.PreHotel">Khách Sạn</div>
            <div :class="$style.Hotel">Yasaka Saigon Nhatrang</div>
            <div :class="[$style.SubHotel, $style.LineHeight]">
              Sảnh Grand Function - Tầng 1 <br />
              18 TRẦN PHÚ - NHA TRANG
              <div :class="$style.LinkMaps">
                <a href="https://g.page/yasakahotel?share" target="_blank">
                  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1300 1300">
                    <path style="fill:#34A853;" d="M457.7,945.8c37.9,47.4,76.5,107,96.7,143c24.6,46.8,34.8,78.4,53.1,135c10.7,31,20.9,40.4,42.3,40.4c23.4,0,34.1-15.8,42.3-40.4c17.1-53.1,30.3-93.5,51.2-132c80.6-152,212-260,286-408c0,0,48.7-90.4,48.7-217c0-118-48-200-48-200l-572,680L457.7,945.8z" />
                    <path style="fill:#FBBC04;" d="M263.7,667.8c46.1,105,134,197,194,278l318-377c0,0-44.9,58.8-126,58.8c-90.4,0-164-72-164-163c0-62.6,37.3-106,37.3-106c-234,34.8-221,91.5-260,309L263.7,667.8z" />
                    <path style="fill:#4285F4;" d="M779.7,55.5c106,34.1,196,106,250,211l-254,303c0,0,37.3-43.6,37.3-106c0-92.9-78.4-163-163-163c-80.3,0-126,58.1-126,58.1c19.5-44.4,221-288,256-303L779.7,55.5z" />
                    <path style="fill:#1A73E8;" d="M321.7,188.8c63.2-75.2,174-153,327-153c73.9,0,130,19.6,130,19.6l-255,303c-17.2-9.3-185-140-202-170V188.8z" />
                    <path style="fill:#EA4335;" d="M263.7,667.8c0,0-41.7-82.8-41.7-202c0-113,44.2-212,100-276l202,170l-260,308H263.7z" />
                  </svg>
                  Xem Bản Đồ
                </a>
              </div>
            </div>
            <div :class="$style.PreFirstDate">Vào lúc 17H30 - CHỦ NHẬT</div>
            <div :class="$style.FirstDate2">02.05.2021</div>
            <div :class="$style.SubDate">(Nhằm ngày 21 tháng 03 năm Tân Sửu)</div>
          </div>
        </div>
        <div :class="$style.SendWishes">
          <a href="/#rsvp" target="_blank">
            <span>Gửi Lời Chúc</span>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
              <path
                fill="currentColor"
                d="M587.6 414.1l-29.8 11.7-40.5-103c50.9-33.5 70.1-100.2 40.2-154.3l-84.1-152C467.6 6.1 456.8 0 445.4 0c-3.9 0-7.9.7-11.7 2.2L320 46.9 206.3 2.2C202.5.7 198.5 0 194.6 0c-11.3 0-22.2 6.1-28 16.5l-84.1 152c-29.9 54.1-10.7 120.8 40.2 154.3l-40.5 103-29.8-11.7c-20.6-8.1-43.8 2-51.9 22.6-1.6 4.1.4 8.8 4.5 10.4l163.8 64.4c4.1 1.6 8.8-.4 10.4-4.5 8.1-20.6-2-43.8-22.6-51.9l-29.8-11.7L167.1 341c8 1.6 16 2.5 23.8 2.5 52.6 0 100.9-34.2 114.2-87.4l14.8-59.6 14.8 59.6c13.2 53.2 61.5 87.4 114.2 87.4 7.9 0 15.9-.9 23.8-2.5l40.2 102.3-29.8 11.7c-20.6 8.1-30.7 31.3-22.6 51.9 1.6 4.1 6.3 6.1 10.4 4.5l164-64.4c4.1-1.6 6.1-6.3 4.5-10.4-8-20.5-31.3-30.6-51.8-22.5zm-329-169.6c-7.5 30-35.3 51-67.6 51-9.4 0-18.7-1.8-27.8-5.3-20.1-7.9-35.7-23.8-42.8-43.5-6.7-18.5-5.2-38 4.1-54.8l25.1-45.3 121.5 47.8-12.5 50.1zm24.2-97.2L173 104.1 201.8 52l95.4 37.5-14.4 57.8zm74.4 0l-14.4-57.7L438.2 52l28.8 52.1-109.8 43.2zm119.6 142.8c-9 3.5-18.3 5.3-27.8 5.3-32.3 0-60.1-21-67.6-51l-12.5-50.3 121.5-47.8 25.1 45.3c9.3 16.8 10.8 36.3 4.1 54.8-7.1 19.9-22.7 35.8-42.8 43.7z"
              ></path>
            </svg>
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['invitee'],
  data() {
    return {}
  },
}
</script>

<style lang="scss" module>
.CardCover {
  background: #fff;
  margin: 50px auto;
  max-width: 100%;
  padding: 20px;
  width: 500px;

  &:last-child {
    margin-bottom: 30px;
  }
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

.CardCInnerBody {
  margin: 30px 0;
}

.MainName {
  color: #a82321;
  display: block;
  font-family: Snell Roundhand, cursive;
  font-size: 36px;
  font-weight: 400;
  line-height: 1.5em;
  margin-top: 0;
}

.FamilyInfo {
  font-family: 'Prata', serif;
  margin: 20px 0;
  text-align: center;
  vertical-align: top;

  table {
    width: 100%;
  }
}

.FIName {
  font-size: 12px;
  font-weight: 700;
  margin: 6px 0;
  text-transform: uppercase;
}

.FIAdd {
  font-size: 10px;
  text-transform: capitalize;
}

.MiddleText {
  font-size: 14px;
  font-weight: 500;
  margin: 20px 0;
  text-transform: uppercase;

  span {
    margin: 0 10px;
  }
}

.CardCInnerFooter {
  font-family: 'Prata', serif;
  font-size: 14px;
  font-weight: 700;
  letter-spacing: 2px;
  text-transform: uppercase;

  div {
    margin: 10px 0;
  }
}

.FirstDate {
  color: #a82321;
  font-size: 30px;
}

.SubDate {
  font-size: 10px;
  font-weight: 700;
  letter-spacing: 2px;
  text-transform: uppercase;
}

.LineHeight {
  line-height: 1.8;
}

.InviteText {
  font-family: 'Prata', serif;
  text-transform: capitalize;
}

.InviteeName {
  color: #a82321;
  font-size: 20px;
  font-weight: 700;
  letter-spacing: 2px;
  margin: 20px 0;
  text-transform: uppercase;
}

.PreHotel {
  color: #bd945a;
  margin: 10px 0;
  text-transform: uppercase;
}

.Hotel {
  color: #a82321;
  font-family: 'Prata', serif;
  font-size: 30px;
  font-weight: 700;
  letter-spacing: 4px;
  margin: 10px 0;
  text-transform: uppercase;
}

.SubHotel {
  margin: 10px 0;
}

.LinkMaps {
  align-items: center;
  display: flex;
  font-family: 'Dosis', sans-serif;
  font-weight: 500;
  justify-content: center;
  line-height: 1;
  margin: 10px 0 20px;
  text-transform: uppercase;

  a {
    border: 1px solid #bd945a;
    padding: 10px 15px 7px 13px;
  }

  svg {
    margin-top: -4px;
    width: 18px;
  }
}

.PreFirstDate {
  color: #a82321;
  font-family: 'Prata', serif;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 2px;
  text-transform: uppercase;
}

.FirstDate2 {
  color: #a82321;
  font-family: 'Prata', serif;
  font-size: 38px;
  font-weight: 700;
  letter-spacing: 2px;
  margin: 10px 0;
}

.SendWishes {
  margin: -10px 0 10px;

  a {
    align-items: center;
    border: 1px solid #bd945a;
    display: inline-flex;
    font-family: 'Dosis', sans-serif;
    font-weight: 500;
    justify-content: center;
    line-height: 1;
    padding: 11px 15px 10px;
    text-transform: uppercase;

    &:hover {
      background: #bd945a;
      color: #fff;
    }
  }

  svg {
    margin-left: 6px;
    width: 16px;
  }
}
</style>

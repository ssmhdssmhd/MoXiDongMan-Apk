package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BannerInfo implements Parcelable {
    public static final Parcelable.Creator<BannerInfo> CREATOR = new Parcelable.Creator<BannerInfo>() { // from class: com.wsw.cospa.bean.BannerInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BannerInfo createFromParcel(Parcel parcel) {
            return new BannerInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BannerInfo[] newArray(int i) {
            return new BannerInfo[i];
        }
    };
    private List<BannerBean> banner;
    public boolean showBanner;

    public static class BannerBean {
        public String content;
        public String goUrl;
        public String imagePath;
        public String title;
        public String type;

        public String getContent() {
            return this.content;
        }

        public String getGoUrl() {
            return this.goUrl;
        }

        public String getImagePath() {
            return this.imagePath;
        }

        public String getTitle() {
            return this.title;
        }

        public String getType() {
            return this.type;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setGoUrl(String str) {
            this.goUrl = str;
        }

        public void setImagePath(String str) {
            this.imagePath = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    public BannerInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.showBanner ? (byte) 1 : (byte) 0);
        parcel.writeList(this.banner);
    }

    public BannerInfo(Parcel parcel) {
        this.showBanner = parcel.readByte() != 0;
        ArrayList arrayList = new ArrayList();
        this.banner = arrayList;
        parcel.readList(arrayList, BannerBean.class.getClassLoader());
    }
}

package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class AppUpdateInfo implements Parcelable {
    public static final Parcelable.Creator<AppUpdateInfo> CREATOR = new Parcelable.Creator<AppUpdateInfo>() { // from class: com.wsw.cospa.bean.AppUpdateInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppUpdateInfo createFromParcel(Parcel parcel) {
            return new AppUpdateInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppUpdateInfo[] newArray(int i) {
            return new AppUpdateInfo[i];
        }
    };
    private String appChangeLog;
    private String appMd5;
    private String appName;
    private String appPackage;
    private String appPath;
    private long appSize;
    private String appUrl;
    private int appVersionCode;
    private String appVersionName;
    private int forceUpdate;
    public boolean showUpdate;
    private String topImage;

    public AppUpdateInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAppChangeLog() {
        return this.appChangeLog;
    }

    public String getAppMd5() {
        return this.appMd5;
    }

    public String getAppName() {
        return this.appName;
    }

    public String getAppPackage() {
        return this.appPackage;
    }

    public String getAppPath() {
        return this.appPath;
    }

    public long getAppSize() {
        return this.appSize;
    }

    public String getAppUrl() {
        return this.appUrl;
    }

    public int getAppVersionCode() {
        return this.appVersionCode;
    }

    public String getAppVersionName() {
        return this.appVersionName;
    }

    public int getForceUpdate() {
        return this.forceUpdate;
    }

    public String getTopImage() {
        return this.topImage;
    }

    public boolean isShowUpdate() {
        return this.showUpdate;
    }

    public void setAppChangeLog(String str) {
        this.appChangeLog = str;
    }

    public void setAppMd5(String str) {
        this.appMd5 = str;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setAppPackage(String str) {
        this.appPackage = str;
    }

    public void setAppPath(String str) {
        this.appPath = str;
    }

    public void setAppSize(long j) {
        this.appSize = j;
    }

    public void setAppUrl(String str) {
        this.appUrl = str;
    }

    public void setAppVersionCode(int i) {
        this.appVersionCode = i;
    }

    public void setAppVersionName(String str) {
        this.appVersionName = str;
    }

    public void setForceUpdate(int i) {
        this.forceUpdate = i;
    }

    public void setShowUpdate(boolean z) {
        this.showUpdate = z;
    }

    public void setTopImage(String str) {
        this.topImage = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.appVersionName);
        parcel.writeString(this.appPackage);
        parcel.writeInt(this.appVersionCode);
        parcel.writeString(this.appUrl);
        parcel.writeLong(this.appSize);
        parcel.writeString(this.appPath);
        parcel.writeString(this.appChangeLog);
        parcel.writeString(this.appMd5);
        parcel.writeString(this.appName);
        parcel.writeInt(this.forceUpdate);
        parcel.writeString(this.topImage);
        parcel.writeByte(this.showUpdate ? (byte) 1 : (byte) 0);
    }

    public AppUpdateInfo(Parcel parcel) {
        this.appVersionName = parcel.readString();
        this.appPackage = parcel.readString();
        this.appVersionCode = parcel.readInt();
        this.appUrl = parcel.readString();
        this.appSize = parcel.readLong();
        this.appPath = parcel.readString();
        this.appChangeLog = parcel.readString();
        this.appMd5 = parcel.readString();
        this.appName = parcel.readString();
        this.forceUpdate = parcel.readInt();
        this.topImage = parcel.readString();
        this.showUpdate = parcel.readByte() != 0;
    }
}

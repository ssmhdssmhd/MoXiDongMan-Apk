package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public class ComicShelfGroupBean implements Parcelable {
    public static final Parcelable.Creator<ComicShelfGroupBean> CREATOR = new Parcelable.Creator<ComicShelfGroupBean>() { // from class: com.wsw.cospa.bean.ComicShelfGroupBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicShelfGroupBean createFromParcel(Parcel parcel) {
            return new ComicShelfGroupBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicShelfGroupBean[] newArray(int i) {
            return new ComicShelfGroupBean[i];
        }
    };
    private boolean enable;
    private String groupName;
    private Integer groupNumber;
    private String groupSort;
    private String groupView;
    private Long id;
    private int sortCheckedId;
    private int sortId;
    private int viewCheckedId;
    private int viewId;

    public ComicShelfGroupBean() {
        this.groupNumber = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean getEnable() {
        return this.enable;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public int getGroupNumber() {
        return this.groupNumber.intValue();
    }

    public String getGroupSort() {
        return this.groupSort;
    }

    public String getGroupView() {
        return this.groupView;
    }

    public Long getId() {
        return this.id;
    }

    public int getSortCheckedId() {
        return this.sortCheckedId;
    }

    public int getSortId() {
        return this.sortId;
    }

    public int getViewCheckedId() {
        return this.viewCheckedId;
    }

    public int getViewId() {
        return this.viewId;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setGroupNumber(Integer num) {
        this.groupNumber = num;
    }

    public void setGroupSort(String str) {
        this.groupSort = str;
    }

    public void setGroupView(String str) {
        this.groupView = str;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setSortCheckedId(int i) {
        this.sortCheckedId = i;
    }

    public void setSortId(int i) {
        this.sortId = i;
    }

    public void setViewCheckedId(int i) {
        this.viewCheckedId = i;
    }

    public void setViewId(int i) {
        this.viewId = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.id);
        parcel.writeString(this.groupName);
        parcel.writeInt(this.viewCheckedId);
        parcel.writeInt(this.viewId);
        parcel.writeString(this.groupView);
        parcel.writeInt(this.sortCheckedId);
        parcel.writeInt(this.sortId);
        parcel.writeString(this.groupSort);
        parcel.writeInt(this.groupNumber.intValue());
    }

    public ComicShelfGroupBean(Parcel parcel) {
        this.groupNumber = 0;
        this.id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.groupName = parcel.readString();
        this.viewCheckedId = parcel.readInt();
        this.viewId = parcel.readInt();
        this.groupView = parcel.readString();
        this.sortCheckedId = parcel.readInt();
        this.sortId = parcel.readInt();
        this.groupSort = parcel.readString();
        this.groupNumber = Integer.valueOf(parcel.readInt());
    }

    public ComicShelfGroupBean(Long l, boolean z, String str, int i, int i2, String str2, int i3, int i4, String str3, Integer num) {
        this.groupNumber = 0;
        this.id = l;
        this.enable = z;
        this.groupName = str;
        this.viewCheckedId = i;
        this.viewId = i2;
        this.groupView = str2;
        this.sortCheckedId = i3;
        this.sortId = i4;
        this.groupSort = str3;
        this.groupNumber = num;
    }
}

package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ComicContentBean implements Parcelable {
    public static final Parcelable.Creator<ComicContentBean> CREATOR = new Parcelable.Creator<ComicContentBean>() { // from class: com.wsw.cospa.bean.ComicContentBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicContentBean createFromParcel(Parcel parcel) {
            return new ComicContentBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicContentBean[] newArray(int i) {
            return new ComicContentBean[i];
        }
    };
    private int durChapterIndex;
    private String durChapterUrl;
    private List<ComicContentImgBean> durContentUrl;
    private String noteUrl;
    private String tag;

    public ComicContentBean() {
        this.durContentUrl = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDurChapterIndex() {
        return this.durChapterIndex;
    }

    public String getDurChapterUrl() {
        return this.durChapterUrl;
    }

    public List<ComicContentImgBean> getDurContentUrl() {
        return this.durContentUrl;
    }

    public String getNoteUrl() {
        return this.noteUrl;
    }

    public String getTag() {
        return this.tag;
    }

    public void setDurChapterIndex(int i) {
        this.durChapterIndex = i;
    }

    public void setDurChapterUrl(String str) {
        this.durChapterUrl = str;
    }

    public void setDurContentUrl(List<ComicContentImgBean> list) {
        this.durContentUrl = list;
    }

    public void setNoteUrl(String str) {
        this.noteUrl = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.noteUrl);
        parcel.writeString(this.durChapterUrl);
        parcel.writeInt(this.durChapterIndex);
        parcel.writeList(this.durContentUrl);
        parcel.writeString(this.tag);
    }

    public ComicContentBean(Parcel parcel) {
        this.durContentUrl = new ArrayList();
        this.noteUrl = parcel.readString();
        this.durChapterUrl = parcel.readString();
        this.durChapterIndex = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        this.durContentUrl = arrayList;
        parcel.readList(arrayList, ComicContentImgBean.class.getClassLoader());
        this.tag = parcel.readString();
    }

    public ComicContentBean(String str, String str2, int i, String str3) {
        this.durContentUrl = new ArrayList();
        this.noteUrl = str;
        this.durChapterUrl = str2;
        this.durChapterIndex = i;
        this.tag = str3;
    }
}

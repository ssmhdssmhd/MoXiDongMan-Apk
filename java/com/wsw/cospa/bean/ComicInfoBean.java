package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ComicInfoBean implements Parcelable, Cloneable {
    public static final Parcelable.Creator<ComicInfoBean> CREATOR = new Parcelable.Creator<ComicInfoBean>() { // from class: com.wsw.cospa.bean.ComicInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicInfoBean createFromParcel(Parcel parcel) {
            return new ComicInfoBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicInfoBean[] newArray(int i) {
            return new ComicInfoBean[i];
        }
    };
    private static final long serialVersionUID = 536871008;
    private String author;
    private List<ChapterListBean> chapterList;
    private String chapterUrl;
    private String coverUrl;
    private Long download;
    private long finalRefreshData;
    private String introduce;
    private String kind;
    private String name;
    private String noteUrl;
    private String origin;
    private String tag;

    public ComicInfoBean() {
        this.chapterList = new ArrayList();
    }

    public Object clone() throws CloneNotSupportedException {
        ComicInfoBean comicInfoBean = (ComicInfoBean) super.clone();
        comicInfoBean.name = this.name;
        comicInfoBean.tag = this.tag;
        comicInfoBean.noteUrl = this.noteUrl;
        comicInfoBean.chapterUrl = this.chapterUrl;
        comicInfoBean.coverUrl = this.coverUrl;
        comicInfoBean.author = this.author;
        comicInfoBean.introduce = this.introduce;
        comicInfoBean.origin = this.origin;
        if (this.chapterList != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<ChapterListBean> it = this.chapterList.iterator();
            while (it.hasNext()) {
                arrayList.add((ChapterListBean) it.next().clone());
            }
            comicInfoBean.setChapterList(arrayList);
        }
        return comicInfoBean;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        ComicInfoBean comicInfoBean = (ComicInfoBean) obj;
        return this.name.equals(comicInfoBean.getName()) && this.noteUrl.equals(comicInfoBean.getNoteUrl());
    }

    public String getAuthor() {
        return this.author;
    }

    public List<ChapterListBean> getChapterList() {
        List<ChapterListBean> list = this.chapterList;
        return list == null ? new ArrayList() : list;
    }

    public String getChapterUrl() {
        return this.chapterUrl;
    }

    public String getCoverUrl() {
        return this.coverUrl;
    }

    public Long getDownload() {
        return this.download;
    }

    public long getFinalRefreshData() {
        return this.finalRefreshData;
    }

    public String getIntroduce() {
        return this.introduce;
    }

    public String getKind() {
        return this.kind;
    }

    public String getName() {
        return this.name;
    }

    public String getNoteUrl() {
        return this.noteUrl;
    }

    public String getOrigin() {
        return this.origin;
    }

    public String getTag() {
        return this.tag;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setChapterList(List<ChapterListBean> list) {
        this.chapterList = list;
    }

    public void setChapterUrl(String str) {
        this.chapterUrl = str;
    }

    public void setCoverUrl(String str) {
        this.coverUrl = str;
    }

    public void setDownload(Long l) {
        this.download = l;
    }

    public void setFinalRefreshData(long j) {
        this.finalRefreshData = j;
    }

    public void setIntroduce(String str) {
        this.introduce = str;
    }

    public void setKind(String str) {
        this.kind = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNoteUrl(String str) {
        this.noteUrl = str;
    }

    public void setOrigin(String str) {
        this.origin = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.tag);
        parcel.writeString(this.noteUrl);
        parcel.writeString(this.chapterUrl);
        parcel.writeLong(this.finalRefreshData);
        parcel.writeString(this.coverUrl);
        parcel.writeString(this.author);
        parcel.writeString(this.introduce);
        parcel.writeString(this.origin);
        parcel.writeString(this.kind);
        parcel.writeValue(this.download);
        parcel.writeTypedList(this.chapterList);
    }

    public ComicInfoBean(Parcel parcel) {
        this.chapterList = new ArrayList();
        this.name = parcel.readString();
        this.tag = parcel.readString();
        this.noteUrl = parcel.readString();
        this.chapterUrl = parcel.readString();
        this.finalRefreshData = parcel.readLong();
        this.coverUrl = parcel.readString();
        this.author = parcel.readString();
        this.introduce = parcel.readString();
        this.origin = parcel.readString();
        this.kind = parcel.readString();
        this.download = (Long) parcel.readValue(Long.class.getClassLoader());
        this.chapterList = parcel.createTypedArrayList(ChapterListBean.CREATOR);
    }

    public ComicInfoBean(String str, String str2, String str3, String str4, long j, String str5, String str6, String str7, String str8, String str9, Long l) {
        this.chapterList = new ArrayList();
        this.name = str;
        this.tag = str2;
        this.noteUrl = str3;
        this.chapterUrl = str4;
        this.finalRefreshData = j;
        this.coverUrl = str5;
        this.author = str6;
        this.introduce = str7;
        this.origin = str8;
        this.kind = str9;
        this.download = l;
    }
}

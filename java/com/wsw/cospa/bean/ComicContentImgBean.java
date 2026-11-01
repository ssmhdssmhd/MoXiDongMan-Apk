package com.wsw.cospa.bean;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.wq;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class ComicContentImgBean implements Parcelable, BaseComicBean {
    public static final int STATE_NULL = 0;
    public static final int STATE_PAGE_1 = 1;
    public static final int STATE_PAGE_2 = 2;
    private static final long serialVersionUID = 536871008;
    private String chapterContentUrl;
    private int chapterIndex;
    private String chapterText;
    private String customVariable;
    private Map<String, String> customVariableMap;
    private int id;
    private List<String> imageUrls;
    private String imgurl;
    private int indexPape;
    private boolean isDownload;
    private Bitmap leftBitmap;
    private String localPath;
    private int maxPage;
    private Bitmap rightBitmap;
    private int state;
    private String tag;
    private String variable;
    private Map<String, String> variableMap;
    private static AtomicInteger count = new AtomicInteger(0);
    public static final Parcelable.Creator<ComicContentImgBean> CREATOR = new Parcelable.Creator<ComicContentImgBean>() { // from class: com.wsw.cospa.bean.ComicContentImgBean.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicContentImgBean createFromParcel(Parcel parcel) {
            return new ComicContentImgBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ComicContentImgBean[] newArray(int i) {
            return new ComicContentImgBean[i];
        }
    };

    public ComicContentImgBean() {
        this.imageUrls = new ArrayList();
        this.id = count.getAndAdd(1);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        ComicContentImgBean comicContentImgBean = (ComicContentImgBean) obj;
        return this.imgurl.equals(comicContentImgBean.imgurl) && getChapterContentUrl().equals(comicContentImgBean.chapterContentUrl) && getChapterText().equals(comicContentImgBean.chapterText);
    }

    public String getChapterContentUrl() {
        return this.chapterContentUrl;
    }

    public int getChapterIndex() {
        return this.chapterIndex;
    }

    public String getChapterText() {
        return this.chapterText;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getCoverHeader() {
        Map<String, String> variableMap = getVariableMap();
        if (variableMap == null) {
            return null;
        }
        return variableMap.get(wq.l0);
    }

    public String getCustomVariable() {
        return this.customVariable;
    }

    public Map<String, String> getCustomVariableMap() {
        Map<String, String> map = this.customVariableMap;
        return map == null ? (Map) new Gson().fromJson(this.customVariable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.ComicContentImgBean.2
        }.getType()) : map;
    }

    public int getId() {
        return this.id;
    }

    public String getImgurl() {
        return this.imgurl;
    }

    public int getIndexPape() {
        return this.indexPape;
    }

    public boolean getIsDownload() {
        return this.isDownload;
    }

    public Bitmap getLeftBitmap() {
        return this.leftBitmap;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public int getMaxPage() {
        return this.maxPage;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getNoteUrl() {
        return null;
    }

    public Bitmap getRightBitmap() {
        return this.rightBitmap;
    }

    public int getState() {
        return this.state;
    }

    public String getTag() {
        return this.tag;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getUrlHeader() {
        Map<String, String> variableMap = getVariableMap();
        if (variableMap == null) {
            return null;
        }
        return variableMap.get(wq.n0);
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public String getVariable() {
        return this.variable;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public Map<String, String> getVariableMap() {
        Map<String, String> map = this.variableMap;
        return map == null ? (Map) new Gson().fromJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.ComicContentImgBean.1
        }.getType()) : map;
    }

    public boolean isDownload() {
        return this.isDownload;
    }

    public void putCustomVariable(String str, String str2) {
        if (this.customVariableMap == null) {
            this.customVariableMap = new HashMap();
        }
        this.customVariableMap.put(str, str2);
        this.variable = new Gson().toJson(this.customVariableMap);
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void putVariable(String str, String str2) {
        if (this.variableMap == null) {
            this.variableMap = new HashMap();
        }
        this.variableMap.put(str, str2);
        this.variable = new Gson().toJson(this.variableMap);
    }

    public void setChapterContentUrl(String str) {
        this.chapterContentUrl = str;
    }

    public void setChapterIndex(int i) {
        this.chapterIndex = i;
    }

    public void setChapterText(String str) {
        this.chapterText = str;
    }

    public void setCustomVariable(String str) {
        this.customVariable = str;
    }

    public void setDownload(boolean z) {
        this.isDownload = z;
    }

    public void setImgurl(String str) {
        this.imgurl = str;
    }

    public void setIndexPape(int i) {
        this.indexPape = i;
    }

    public void setIsDownload(boolean z) {
        this.isDownload = z;
    }

    public void setLeftBitmap(Bitmap bitmap) {
        this.leftBitmap = bitmap;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void setMaxPage(int i) {
        this.maxPage = i;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setNoteUrl(String str) {
    }

    public void setRightBitmap(Bitmap bitmap) {
        this.rightBitmap = bitmap;
    }

    public void setState(int i) {
        this.state = i;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    @Override // com.wsw.cospa.bean.BaseComicBean
    public void setVariable(String str) {
        this.variable = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.imgurl);
        parcel.writeInt(this.indexPape);
        parcel.writeInt(this.maxPage);
        parcel.writeInt(this.chapterIndex);
        parcel.writeString(this.chapterContentUrl);
        parcel.writeString(this.chapterText);
        parcel.writeString(this.variable);
        parcel.writeString(this.tag);
        parcel.writeByte(this.isDownload ? (byte) 1 : (byte) 0);
        parcel.writeString(this.localPath);
        parcel.writeInt(this.state);
        parcel.writeStringList(this.imageUrls);
    }

    public ComicContentImgBean(Parcel parcel) {
        this.imageUrls = new ArrayList();
        this.imgurl = parcel.readString();
        this.indexPape = parcel.readInt();
        this.maxPage = parcel.readInt();
        this.chapterIndex = parcel.readInt();
        this.chapterContentUrl = parcel.readString();
        this.chapterText = parcel.readString();
        this.variable = parcel.readString();
        this.tag = parcel.readString();
        this.isDownload = parcel.readByte() != 0;
        this.localPath = parcel.readString();
        this.state = parcel.readInt();
        this.imageUrls = parcel.createStringArrayList();
    }

    public ComicContentImgBean(String str, int i, int i2, int i3, String str2, String str3, String str4, String str5, boolean z, String str6, int i4) {
        this.imageUrls = new ArrayList();
        this.id = count.getAndAdd(1);
        this.imgurl = str;
        this.indexPape = i;
        this.maxPage = i2;
        this.chapterIndex = i3;
        this.chapterContentUrl = str2;
        this.chapterText = str3;
        this.variable = str4;
        this.tag = str5;
        this.isDownload = z;
        this.localPath = str6;
        this.state = i4;
    }

    public ComicContentImgBean(String str, int i, int i2, int i3, String str2, String str3, String str4, String str5, String str6, boolean z, String str7, int i4) {
        this.imageUrls = new ArrayList();
        this.imgurl = str;
        this.indexPape = i;
        this.maxPage = i2;
        this.chapterIndex = i3;
        this.chapterContentUrl = str2;
        this.chapterText = str3;
        this.variable = str4;
        this.customVariable = str5;
        this.tag = str6;
        this.isDownload = z;
        this.localPath = str7;
        this.state = i4;
    }
}

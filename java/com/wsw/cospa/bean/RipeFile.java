package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.l22;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.wsw.cospa.utils.Cdefault;
import java.io.File;

/* loaded from: classes2.dex */
public class RipeFile implements Parcelable {
    public static final Parcelable.Creator<RipeFile> CREATOR = new Parcelable.Creator<RipeFile>() { // from class: com.wsw.cospa.bean.RipeFile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RipeFile createFromParcel(Parcel parcel) {
            return new RipeFile(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RipeFile[] newArray(int i) {
            return new RipeFile[i];
        }
    };
    private Integer childCount;
    private String currPagePath;
    private String date;
    private File file;
    private int indexPape;
    private Boolean isDirectory;
    private boolean isSelected;
    private int maxPage;
    private String name;
    private String parentName;
    private String parentPath;
    private String path;
    private String rootPath;
    private String size;
    private String suffix;

    public RipeFile() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof RipeFile ? TextUtils.equals(((RipeFile) obj).path, this.path) : super.equals(obj);
    }

    public boolean exists() {
        File file = getFile();
        return file != null && file.exists();
    }

    public int getChildCount() {
        File file;
        if (this.childCount == null && (file = this.file) != null) {
            String[] list = file.list();
            this.childCount = Integer.valueOf(list == null ? 0 : list.length);
        }
        Integer num = this.childCount;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getCurrPagePath() {
        return this.currPagePath;
    }

    public String getDate() {
        File file;
        if (this.date == null && (file = this.file) != null) {
            this.date = l22.m4563for(file.lastModified(), "yyyy-MM-dd");
        }
        return this.date;
    }

    public File getFile() {
        File file = new File(getPath());
        this.file = file;
        return file;
    }

    public int getIndexPape() {
        return this.indexPape;
    }

    public Boolean getIsDirectory() {
        return this.isDirectory;
    }

    public boolean getIsSelected() {
        return this.isSelected;
    }

    public int getMaxPage() {
        return this.maxPage;
    }

    public String getName() {
        File file;
        if (this.name == null && (file = this.file) != null) {
            this.name = file.getName();
        }
        return this.name;
    }

    public String getParentName() {
        return this.parentName;
    }

    public String getParentPath() {
        return this.parentPath;
    }

    public String getPath() {
        File file;
        if (this.path == null && (file = this.file) != null) {
            this.path = file.getAbsolutePath();
        }
        return this.path;
    }

    public String getRootPath() {
        return this.rootPath;
    }

    public String getSize() {
        File file;
        if (this.size == null && (file = this.file) != null) {
            this.size = Cdefault.m26754catch(file.length());
        }
        return this.size;
    }

    public String getSuffix() {
        File file;
        if (this.suffix == null && (file = this.file) != null) {
            this.suffix = Cdefault.m26755class(file).toUpperCase();
        }
        return this.suffix;
    }

    public boolean isDirectory() {
        File file;
        if (this.isDirectory == null && (file = this.file) != null) {
            this.isDirectory = Boolean.valueOf(file.isDirectory());
        }
        Boolean bool = this.isDirectory;
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setChildCount(Integer num) {
        this.childCount = num;
    }

    public void setCurrPagePath(String str) {
        this.currPagePath = str;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setFile(File file) {
        this.file = file;
        this.path = file.getAbsolutePath();
    }

    public void setIndexPape(int i) {
        this.indexPape = i;
    }

    public void setIsDirectory(Boolean bool) {
        this.isDirectory = bool;
    }

    public void setIsSelected(boolean z) {
        this.isSelected = z;
    }

    public void setMaxPage(int i) {
        this.maxPage = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setParentName(String str) {
        this.parentName = str;
    }

    public void setParentPath(String str) {
        this.parentPath = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setRootPath(String str) {
        this.rootPath = str;
    }

    public void setSelected(boolean z) {
        if (isDirectory()) {
            this.isSelected = z;
        }
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setSuffix(String str) {
        this.suffix = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        parcel.writeSerializable(this.file);
        parcel.writeString(this.name);
        parcel.writeString(this.size);
        parcel.writeString(this.date);
        parcel.writeString(this.suffix);
        parcel.writeString(this.path);
        parcel.writeValue(this.isDirectory);
        parcel.writeValue(this.childCount);
        parcel.writeInt(this.indexPape);
        parcel.writeInt(this.maxPage);
        parcel.writeString(this.parentName);
        parcel.writeString(this.parentPath);
        parcel.writeString(this.currPagePath);
        parcel.writeString(this.rootPath);
    }

    public RipeFile(boolean z, String str, String str2, String str3, String str4, String str5, Boolean bool, Integer num, int i, int i2, String str6, String str7, String str8, String str9) {
        this.isSelected = z;
        this.name = str;
        this.size = str2;
        this.date = str3;
        this.suffix = str4;
        this.path = str5;
        this.isDirectory = bool;
        this.childCount = num;
        this.indexPape = i;
        this.maxPage = i2;
        this.parentName = str6;
        this.parentPath = str7;
        this.currPagePath = str8;
        this.rootPath = str9;
    }

    public RipeFile(Parcel parcel) {
        this.isSelected = parcel.readByte() != 0;
        this.file = (File) parcel.readSerializable();
        this.name = parcel.readString();
        this.size = parcel.readString();
        this.date = parcel.readString();
        this.suffix = parcel.readString();
        this.path = parcel.readString();
        this.isDirectory = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.childCount = (Integer) parcel.readValue(Integer.class.getClassLoader());
        this.indexPape = parcel.readInt();
        this.maxPage = parcel.readInt();
        this.parentName = parcel.readString();
        this.parentPath = parcel.readString();
        this.currPagePath = parcel.readString();
        this.rootPath = parcel.readString();
    }
}

package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes2.dex */
public class FileSnapshot implements Parcelable {
    public static final Parcelable.Creator<FileSnapshot> CREATOR = new Parcelable.Creator<FileSnapshot>() { // from class: com.wsw.cospa.bean.FileSnapshot.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileSnapshot createFromParcel(Parcel parcel) {
            return new FileSnapshot(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FileSnapshot[] newArray(int i) {
            return new FileSnapshot[i];
        }
    };
    private List<RipeFile> files;
    private RipeFile parent;
    private int scrollOffset;

    public FileSnapshot() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<RipeFile> getFiles() {
        return this.files;
    }

    public RipeFile getParent() {
        return this.parent;
    }

    public int getScrollOffset() {
        return this.scrollOffset;
    }

    public void setFiles(List<RipeFile> list) {
        this.files = list;
    }

    public void setParent(RipeFile ripeFile) {
        this.parent = ripeFile;
    }

    public void setScrollOffset(int i) {
        this.scrollOffset = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.parent, i);
        parcel.writeTypedList(this.files);
        parcel.writeInt(this.scrollOffset);
    }

    public FileSnapshot(Parcel parcel) {
        this.parent = (RipeFile) parcel.readParcelable(RipeFile.class.getClassLoader());
        this.files = parcel.createTypedArrayList(RipeFile.CREATOR);
        this.scrollOffset = parcel.readInt();
    }
}

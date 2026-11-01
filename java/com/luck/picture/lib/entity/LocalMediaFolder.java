package com.luck.picture.lib.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class LocalMediaFolder implements Parcelable {
    public static final Parcelable.Creator<LocalMediaFolder> CREATOR = new Cdo();

    /* renamed from: case, reason: not valid java name */
    private boolean f18745case;

    /* renamed from: do, reason: not valid java name */
    private String f18746do;

    /* renamed from: else, reason: not valid java name */
    private List<LocalMedia> f18747else;

    /* renamed from: for, reason: not valid java name */
    private String f18748for;

    /* renamed from: if, reason: not valid java name */
    private String f18749if;

    /* renamed from: new, reason: not valid java name */
    private int f18750new;

    /* renamed from: try, reason: not valid java name */
    private int f18751try;

    /* renamed from: com.luck.picture.lib.entity.LocalMediaFolder$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<LocalMediaFolder> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public LocalMediaFolder createFromParcel(Parcel parcel) {
            return new LocalMediaFolder(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public LocalMediaFolder[] newArray(int i) {
            return new LocalMediaFolder[i];
        }
    }

    public LocalMediaFolder() {
        this.f18747else = new ArrayList();
    }

    /* renamed from: break, reason: not valid java name */
    public void m23107break(String str) {
        this.f18748for = str;
    }

    /* renamed from: case, reason: not valid java name */
    public String m23108case() {
        return this.f18749if;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m23109catch(int i) {
        this.f18750new = i;
    }

    /* renamed from: class, reason: not valid java name */
    public void m23110class(List<LocalMedia> list) {
        this.f18747else = list;
    }

    /* renamed from: const, reason: not valid java name */
    public void m23111const(String str) {
        this.f18746do = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public int m23112do() {
        return this.f18751try;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m23113else() {
        return this.f18745case;
    }

    /* renamed from: final, reason: not valid java name */
    public void m23114final(String str) {
        this.f18749if = str;
    }

    /* renamed from: for, reason: not valid java name */
    public int m23115for() {
        return this.f18750new;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23116goto(boolean z) {
        this.f18745case = z;
    }

    /* renamed from: if, reason: not valid java name */
    public String m23117if() {
        return this.f18748for;
    }

    /* renamed from: new, reason: not valid java name */
    public List<LocalMedia> m23118new() {
        if (this.f18747else == null) {
            this.f18747else = new ArrayList();
        }
        return this.f18747else;
    }

    /* renamed from: this, reason: not valid java name */
    public void m23119this(int i) {
        this.f18751try = i;
    }

    /* renamed from: try, reason: not valid java name */
    public String m23120try() {
        return this.f18746do;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f18746do);
        parcel.writeString(this.f18749if);
        parcel.writeString(this.f18748for);
        parcel.writeInt(this.f18750new);
        parcel.writeInt(this.f18751try);
        parcel.writeByte(this.f18745case ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.f18747else);
    }

    public LocalMediaFolder(Parcel parcel) {
        this.f18747else = new ArrayList();
        this.f18746do = parcel.readString();
        this.f18749if = parcel.readString();
        this.f18748for = parcel.readString();
        this.f18750new = parcel.readInt();
        this.f18751try = parcel.readInt();
        this.f18745case = parcel.readByte() != 0;
        this.f18747else = parcel.createTypedArrayList(LocalMedia.CREATOR);
    }
}

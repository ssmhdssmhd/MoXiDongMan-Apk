package com.luck.picture.lib.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class LocalMedia implements Parcelable {
    public static final Parcelable.Creator<LocalMedia> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    private String f18732break;

    /* renamed from: case, reason: not valid java name */
    private boolean f18733case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f18734catch;

    /* renamed from: class, reason: not valid java name */
    private int f18735class;

    /* renamed from: const, reason: not valid java name */
    private int f18736const;

    /* renamed from: do, reason: not valid java name */
    private String f18737do;

    /* renamed from: else, reason: not valid java name */
    public int f18738else;

    /* renamed from: for, reason: not valid java name */
    private String f18739for;

    /* renamed from: goto, reason: not valid java name */
    private int f18740goto;

    /* renamed from: if, reason: not valid java name */
    private String f18741if;

    /* renamed from: new, reason: not valid java name */
    private long f18742new;

    /* renamed from: this, reason: not valid java name */
    private int f18743this;

    /* renamed from: try, reason: not valid java name */
    private boolean f18744try;

    /* renamed from: com.luck.picture.lib.entity.LocalMedia$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<LocalMedia> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public LocalMedia createFromParcel(Parcel parcel) {
            return new LocalMedia(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public LocalMedia[] newArray(int i) {
            return new LocalMedia[i];
        }
    }

    public LocalMedia() {
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m23083break() {
        return this.f18734catch;
    }

    /* renamed from: case, reason: not valid java name */
    public String m23084case() {
        return this.f18737do;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m23085catch() {
        return this.f18733case;
    }

    /* renamed from: class, reason: not valid java name */
    public void m23086class(boolean z) {
        this.f18744try = z;
    }

    /* renamed from: const, reason: not valid java name */
    public void m23087const(String str) {
        this.f18741if = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public String m23088do() {
        return this.f18741if;
    }

    /* renamed from: else, reason: not valid java name */
    public String m23089else() {
        if (TextUtils.isEmpty(this.f18732break)) {
            this.f18732break = "image/jpeg";
        }
        return this.f18732break;
    }

    /* renamed from: final, reason: not valid java name */
    public void m23090final(boolean z) {
        this.f18734catch = z;
    }

    /* renamed from: for, reason: not valid java name */
    public long m23091for() {
        return this.f18742new;
    }

    public int getHeight() {
        return this.f18736const;
    }

    public int getWidth() {
        return this.f18735class;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m23092goto() {
        return this.f18738else;
    }

    /* renamed from: if, reason: not valid java name */
    public String m23093if() {
        return this.f18739for;
    }

    /* renamed from: import, reason: not valid java name */
    public void m23094import(int i) {
        this.f18743this = i;
    }

    /* renamed from: native, reason: not valid java name */
    public void m23095native(int i) {
        this.f18740goto = i;
    }

    /* renamed from: new, reason: not valid java name */
    public int m23096new() {
        return this.f18743this;
    }

    /* renamed from: public, reason: not valid java name */
    public void m23097public(String str) {
        this.f18737do = str;
    }

    /* renamed from: return, reason: not valid java name */
    public void m23098return(String str) {
        this.f18732break = str;
    }

    public void setHeight(int i) {
        this.f18736const = i;
    }

    public void setWidth(int i) {
        this.f18735class = i;
    }

    /* renamed from: static, reason: not valid java name */
    public void m23099static(int i) {
        this.f18738else = i;
    }

    /* renamed from: super, reason: not valid java name */
    public void m23100super(boolean z) {
        this.f18733case = z;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m23101this() {
        return this.f18744try;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m23102throw(String str) {
        this.f18739for = str;
    }

    /* renamed from: try, reason: not valid java name */
    public int m23103try() {
        return this.f18740goto;
    }

    /* renamed from: while, reason: not valid java name */
    public void m23104while(long j) {
        this.f18742new = j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f18737do);
        parcel.writeString(this.f18741if);
        parcel.writeString(this.f18739for);
        parcel.writeLong(this.f18742new);
        parcel.writeByte(this.f18744try ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18733case ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f18738else);
        parcel.writeInt(this.f18740goto);
        parcel.writeInt(this.f18743this);
        parcel.writeString(this.f18732break);
        parcel.writeByte(this.f18734catch ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f18735class);
        parcel.writeInt(this.f18736const);
    }

    public LocalMedia(String str, long j, int i, String str2) {
        this.f18737do = str;
        this.f18742new = j;
        this.f18743this = i;
        this.f18732break = str2;
    }

    public LocalMedia(String str, long j, int i, String str2, int i2, int i3) {
        this.f18737do = str;
        this.f18742new = j;
        this.f18743this = i;
        this.f18732break = str2;
        this.f18735class = i2;
        this.f18736const = i3;
    }

    public LocalMedia(String str, long j, boolean z, int i, int i2, int i3) {
        this.f18737do = str;
        this.f18742new = j;
        this.f18744try = z;
        this.f18738else = i;
        this.f18740goto = i2;
        this.f18743this = i3;
    }

    public LocalMedia(Parcel parcel) {
        this.f18737do = parcel.readString();
        this.f18741if = parcel.readString();
        this.f18739for = parcel.readString();
        this.f18742new = parcel.readLong();
        this.f18744try = parcel.readByte() != 0;
        this.f18733case = parcel.readByte() != 0;
        this.f18738else = parcel.readInt();
        this.f18740goto = parcel.readInt();
        this.f18743this = parcel.readInt();
        this.f18732break = parcel.readString();
        this.f18734catch = parcel.readByte() != 0;
        this.f18735class = parcel.readInt();
        this.f18736const = parcel.readInt();
    }
}

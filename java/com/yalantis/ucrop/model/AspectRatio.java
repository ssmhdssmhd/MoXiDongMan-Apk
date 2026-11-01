package com.yalantis.ucrop.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class AspectRatio implements Parcelable {
    public static final Parcelable.Creator<AspectRatio> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final String f23067do;

    /* renamed from: for, reason: not valid java name */
    private final float f23068for;

    /* renamed from: if, reason: not valid java name */
    private final float f23069if;

    /* renamed from: com.yalantis.ucrop.model.AspectRatio$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<AspectRatio> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public AspectRatio createFromParcel(Parcel parcel) {
            return new AspectRatio(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public AspectRatio[] newArray(int i) {
            return new AspectRatio[i];
        }
    }

    public AspectRatio(@Nullable String str, float f, float f2) {
        this.f23067do = str;
        this.f23069if = f;
        this.f23068for = f2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public String m27470do() {
        return this.f23067do;
    }

    /* renamed from: for, reason: not valid java name */
    public float m27471for() {
        return this.f23068for;
    }

    /* renamed from: if, reason: not valid java name */
    public float m27472if() {
        return this.f23069if;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f23067do);
        parcel.writeFloat(this.f23069if);
        parcel.writeFloat(this.f23068for);
    }

    public AspectRatio(Parcel parcel) {
        this.f23067do = parcel.readString();
        this.f23069if = parcel.readFloat();
        this.f23068for = parcel.readFloat();
    }
}

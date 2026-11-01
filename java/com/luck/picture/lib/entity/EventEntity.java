package com.luck.picture.lib.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class EventEntity implements Parcelable {
    public static final Parcelable.Creator<EventEntity> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public int f18729do;

    /* renamed from: for, reason: not valid java name */
    public List<LocalMedia> f18730for;

    /* renamed from: if, reason: not valid java name */
    public int f18731if;

    /* renamed from: com.luck.picture.lib.entity.EventEntity$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<EventEntity> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public EventEntity createFromParcel(Parcel parcel) {
            return new EventEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public EventEntity[] newArray(int i) {
            return new EventEntity[i];
        }
    }

    public EventEntity() {
        this.f18730for = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f18729do);
        parcel.writeInt(this.f18731if);
        parcel.writeTypedList(this.f18730for);
    }

    public EventEntity(int i) {
        this.f18730for = new ArrayList();
        this.f18729do = i;
    }

    public EventEntity(int i, List<LocalMedia> list) {
        this.f18730for = new ArrayList();
        this.f18729do = i;
        this.f18730for = list;
    }

    public EventEntity(int i, int i2) {
        this.f18730for = new ArrayList();
        this.f18729do = i;
        this.f18731if = i2;
    }

    public EventEntity(int i, List<LocalMedia> list, int i2) {
        this.f18730for = new ArrayList();
        this.f18729do = i;
        this.f18731if = i2;
        this.f18730for = list;
    }

    public EventEntity(Parcel parcel) {
        this.f18730for = new ArrayList();
        this.f18729do = parcel.readInt();
        this.f18731if = parcel.readInt();
        this.f18730for = parcel.createTypedArrayList(LocalMedia.CREATOR);
    }
}

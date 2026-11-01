package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;

/* loaded from: classes.dex */
public class DateValidatorPointForward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final long f11695do;

    /* renamed from: com.google.android.material.datepicker.DateValidatorPointForward$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<DateValidatorPointForward> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public DateValidatorPointForward createFromParcel(@NonNull Parcel parcel) {
            return new DateValidatorPointForward(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public DateValidatorPointForward[] newArray(int i) {
            return new DateValidatorPointForward[i];
        }
    }

    public /* synthetic */ DateValidatorPointForward(long j, Cdo cdo) {
        this(j);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static DateValidatorPointForward m13142do(long j) {
        return new DateValidatorPointForward(j);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static DateValidatorPointForward m13143if() {
        return m13142do(Cbreak.m13283public().getTimeInMillis());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointForward) && this.f11695do == ((DateValidatorPointForward) obj).f11695do;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f11695do)});
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean isValid(long j) {
        return j >= this.f11695do;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeLong(this.f11695do);
    }

    private DateValidatorPointForward(long j) {
        this.f11695do = j;
    }
}

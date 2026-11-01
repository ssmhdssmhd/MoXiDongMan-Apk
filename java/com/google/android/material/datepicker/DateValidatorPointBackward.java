package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.Arrays;

/* loaded from: classes.dex */
public class DateValidatorPointBackward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointBackward> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final long f11694do;

    /* renamed from: com.google.android.material.datepicker.DateValidatorPointBackward$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<DateValidatorPointBackward> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public DateValidatorPointBackward createFromParcel(@NonNull Parcel parcel) {
            return new DateValidatorPointBackward(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public DateValidatorPointBackward[] newArray(int i) {
            return new DateValidatorPointBackward[i];
        }
    }

    public /* synthetic */ DateValidatorPointBackward(long j, Cdo cdo) {
        this(j);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static DateValidatorPointBackward m13138do(long j) {
        return new DateValidatorPointBackward(j);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static DateValidatorPointBackward m13139if() {
        return m13138do(Cbreak.m13283public().getTimeInMillis());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointBackward) && this.f11694do == ((DateValidatorPointBackward) obj).f11694do;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f11694do)});
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean isValid(long j) {
        return j <= this.f11694do;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeLong(this.f11694do);
    }

    private DateValidatorPointBackward(long j) {
        this.f11694do = j;
    }
}

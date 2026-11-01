package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new Cdo();

    /* renamed from: case, reason: not valid java name */
    public final long f11783case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Calendar f11784do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private String f11785else;

    /* renamed from: for, reason: not valid java name */
    public final int f11786for;

    /* renamed from: if, reason: not valid java name */
    public final int f11787if;

    /* renamed from: new, reason: not valid java name */
    public final int f11788new;

    /* renamed from: try, reason: not valid java name */
    public final int f11789try;

    /* renamed from: com.google.android.material.datepicker.Month$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.m13220if(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarM13267case = Cbreak.m13267case(calendar);
        this.f11784do = calendarM13267case;
        this.f11787if = calendarM13267case.get(2);
        this.f11786for = calendarM13267case.get(1);
        this.f11788new = calendarM13267case.getMaximum(7);
        this.f11789try = calendarM13267case.getActualMaximum(5);
        this.f11783case = calendarM13267case.getTimeInMillis();
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static Month m13219for(long j) {
        Calendar calendarM13285static = Cbreak.m13285static();
        calendarM13285static.setTimeInMillis(j);
        return new Month(calendarM13285static);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static Month m13220if(int i, int i2) {
        Calendar calendarM13285static = Cbreak.m13285static();
        calendarM13285static.set(1, i);
        calendarM13285static.set(2, i2);
        return new Month(calendarM13285static);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static Month m13221new() {
        return new Month(Cbreak.m13283public());
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public Month m13222break(int i) {
        Calendar calendarM13267case = Cbreak.m13267case(this.f11784do);
        calendarM13267case.add(2, i);
        return new Month(calendarM13267case);
    }

    /* renamed from: case, reason: not valid java name */
    public long m13223case(int i) {
        Calendar calendarM13267case = Cbreak.m13267case(this.f11784do);
        calendarM13267case.set(5, i);
        return calendarM13267case.getTimeInMillis();
    }

    /* renamed from: catch, reason: not valid java name */
    public int m13224catch(@NonNull Month month) {
        if (this.f11784do instanceof GregorianCalendar) {
            return ((month.f11786for - this.f11786for) * 12) + (month.f11787if - this.f11787if);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Comparable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public int compareTo(@NonNull Month month) {
        return this.f11784do.compareTo(month.f11784do);
    }

    /* renamed from: else, reason: not valid java name */
    public int m13226else(long j) {
        Calendar calendarM13267case = Cbreak.m13267case(this.f11784do);
        calendarM13267case.setTimeInMillis(j);
        return calendarM13267case.get(5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f11787if == month.f11787if && this.f11786for == month.f11786for;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public String m13227goto(Context context) {
        if (this.f11785else == null) {
            this.f11785else = Cnew.m13331this(context, this.f11784do.getTimeInMillis());
        }
        return this.f11785else;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f11787if), Integer.valueOf(this.f11786for)});
    }

    /* renamed from: this, reason: not valid java name */
    public long m13228this() {
        return this.f11784do.getTimeInMillis();
    }

    /* renamed from: try, reason: not valid java name */
    public int m13229try() {
        int firstDayOfWeek = this.f11784do.get(7) - this.f11784do.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f11788new : firstDayOfWeek;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.f11786for);
        parcel.writeInt(this.f11787if);
    }
}

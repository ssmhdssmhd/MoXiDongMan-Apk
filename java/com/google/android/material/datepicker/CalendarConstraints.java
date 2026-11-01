package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new Cdo();

    /* renamed from: case, reason: not valid java name */
    private final int f11675case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Month f11676do;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final DateValidator f11677for;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Month f11678if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Month f11679new;

    /* renamed from: try, reason: not valid java name */
    private final int f11680try;

    public interface DateValidator extends Parcelable {
        boolean isValid(long j);
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<CalendarConstraints> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    public /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, Cdo cdo) {
        this(month, month2, dateValidator, month3);
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public Month m13116break() {
        return this.f11676do;
    }

    /* renamed from: case, reason: not valid java name */
    public DateValidator m13117case() {
        return this.f11677for;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m13118catch() {
        return this.f11680try;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m13119class(long j) {
        if (this.f11676do.m13223case(1) <= j) {
            Month month = this.f11678if;
            if (j <= month.m13223case(month.f11789try)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public void m13120const(@Nullable Month month) {
        this.f11679new = month;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public Month m13121else() {
        return this.f11678if;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.f11676do.equals(calendarConstraints.f11676do) && this.f11678if.equals(calendarConstraints.f11678if) && ObjectsCompat.equals(this.f11679new, calendarConstraints.f11679new) && this.f11677for.equals(calendarConstraints.f11677for);
    }

    /* renamed from: goto, reason: not valid java name */
    public int m13122goto() {
        return this.f11675case;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11676do, this.f11678if, this.f11679new, this.f11677for});
    }

    @Nullable
    /* renamed from: this, reason: not valid java name */
    public Month m13123this() {
        return this.f11679new;
    }

    /* renamed from: try, reason: not valid java name */
    public Month m13124try(Month month) {
        return month.compareTo(this.f11676do) < 0 ? this.f11676do : month.compareTo(this.f11678if) > 0 ? this.f11678if : month;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f11676do, 0);
        parcel.writeParcelable(this.f11678if, 0);
        parcel.writeParcelable(this.f11679new, 0);
        parcel.writeParcelable(this.f11677for, 0);
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3) {
        this.f11676do = month;
        this.f11678if = month2;
        this.f11679new = month3;
        this.f11677for = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f11675case = month.m13224catch(month2) + 1;
        this.f11680try = (month2.f11786for - month.f11786for) + 1;
    }

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: else, reason: not valid java name */
        private static final String f11682else = "DEEP_COPY_VALIDATOR_KEY";

        /* renamed from: do, reason: not valid java name */
        private long f11684do;

        /* renamed from: for, reason: not valid java name */
        private Long f11685for;

        /* renamed from: if, reason: not valid java name */
        private long f11686if;

        /* renamed from: new, reason: not valid java name */
        private DateValidator f11687new;

        /* renamed from: try, reason: not valid java name */
        public static final long f11683try = Cbreak.m13272do(Month.m13220if(1900, 0).f11783case);

        /* renamed from: case, reason: not valid java name */
        public static final long f11681case = Cbreak.m13272do(Month.m13220if(2100, 11).f11783case);

        public Cif() {
            this.f11684do = f11683try;
            this.f11686if = f11681case;
            this.f11687new = DateValidatorPointForward.m13142do(Long.MIN_VALUE);
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        public CalendarConstraints m13127do() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(f11682else, this.f11687new);
            Month monthM13219for = Month.m13219for(this.f11684do);
            Month monthM13219for2 = Month.m13219for(this.f11686if);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable(f11682else);
            Long l = this.f11685for;
            return new CalendarConstraints(monthM13219for, monthM13219for2, dateValidator, l == null ? null : Month.m13219for(l.longValue()), null);
        }

        @NonNull
        /* renamed from: for, reason: not valid java name */
        public Cif m13128for(long j) {
            this.f11685for = Long.valueOf(j);
            return this;
        }

        @NonNull
        /* renamed from: if, reason: not valid java name */
        public Cif m13129if(long j) {
            this.f11686if = j;
            return this;
        }

        @NonNull
        /* renamed from: new, reason: not valid java name */
        public Cif m13130new(long j) {
            this.f11684do = j;
            return this;
        }

        @NonNull
        /* renamed from: try, reason: not valid java name */
        public Cif m13131try(@NonNull DateValidator dateValidator) {
            this.f11687new = dateValidator;
            return this;
        }

        public Cif(@NonNull CalendarConstraints calendarConstraints) {
            this.f11684do = f11683try;
            this.f11686if = f11681case;
            this.f11687new = DateValidatorPointForward.m13142do(Long.MIN_VALUE);
            this.f11684do = calendarConstraints.f11676do.f11783case;
            this.f11686if = calendarConstraints.f11678if.f11783case;
            this.f11685for = Long.valueOf(calendarConstraints.f11679new.f11783case);
            this.f11687new = calendarConstraints.f11677for;
        }
    }
}

package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* renamed from: for, reason: not valid java name */
    private static final int f11689for = 1;

    /* renamed from: new, reason: not valid java name */
    private static final int f11690new = 2;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Operator f11692do;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final List<CalendarConstraints.DateValidator> f11693if;

    /* renamed from: try, reason: not valid java name */
    private static final Operator f11691try = new Cdo();

    /* renamed from: case, reason: not valid java name */
    private static final Operator f11688case = new Cif();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Cfor();

    public interface Operator {
        int getId();

        boolean isValid(@NonNull List<CalendarConstraints.DateValidator> list, long j);
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$do, reason: invalid class name */
    public static class Cdo implements Operator {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public int getId() {
            return 1;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public boolean isValid(@NonNull List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && dateValidator.isValid(j)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$for, reason: invalid class name */
    public static class Cfor implements Parcelable.Creator<CompositeDateValidator> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public CompositeDateValidator createFromParcel(@NonNull Parcel parcel) {
            ArrayList arrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int i = parcel.readInt();
            Operator operator = (i != 2 && i == 1) ? CompositeDateValidator.f11691try : CompositeDateValidator.f11688case;
            return new CompositeDateValidator((List) Preconditions.checkNotNull(arrayList), operator, null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$if, reason: invalid class name */
    public static class Cif implements Operator {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public int getId() {
            return 2;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public boolean isValid(@NonNull List<CalendarConstraints.DateValidator> list, long j) {
            for (CalendarConstraints.DateValidator dateValidator : list) {
                if (dateValidator != null && !dateValidator.isValid(j)) {
                    return false;
                }
            }
            return true;
        }
    }

    public /* synthetic */ CompositeDateValidator(List list, Operator operator, Cdo cdo) {
        this(list, operator);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static CalendarConstraints.DateValidator m13133for(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, f11688case);
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static CalendarConstraints.DateValidator m13135new(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, f11691try);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.f11693if.equals(compositeDateValidator.f11693if) && this.f11692do.getId() == compositeDateValidator.f11692do.getId();
    }

    public int hashCode() {
        return this.f11693if.hashCode();
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public boolean isValid(long j) {
        return this.f11692do.isValid(this.f11693if, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeList(this.f11693if);
        parcel.writeInt(this.f11692do.getId());
    }

    private CompositeDateValidator(@NonNull List<CalendarConstraints.DateValidator> list, Operator operator) {
        this.f11693if = list;
        this.f11692do = operator;
    }
}

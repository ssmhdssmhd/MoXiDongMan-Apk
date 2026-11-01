package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.IntRange;
import java.util.Arrays;

/* loaded from: classes.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new Cdo();

    /* renamed from: goto, reason: not valid java name */
    public static final String f13129goto = "%02d";

    /* renamed from: this, reason: not valid java name */
    public static final String f13130this = "%d";

    /* renamed from: case, reason: not valid java name */
    public int f13131case;

    /* renamed from: do, reason: not valid java name */
    private final Cif f13132do;

    /* renamed from: else, reason: not valid java name */
    public int f13133else;

    /* renamed from: for, reason: not valid java name */
    public final int f13134for;

    /* renamed from: if, reason: not valid java name */
    private final Cif f13135if;

    /* renamed from: new, reason: not valid java name */
    public int f13136new;

    /* renamed from: try, reason: not valid java name */
    public int f13137try;

    /* renamed from: com.google.android.material.timepicker.TimeModel$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<TimeModel> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public TimeModel[] newArray(int i) {
            return new TimeModel[i];
        }
    }

    public TimeModel() {
        this(0);
    }

    /* renamed from: case, reason: not valid java name */
    private static int m14575case(int i) {
        return i >= 12 ? 1 : 0;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m14576do(Resources resources, CharSequence charSequence) {
        return m14577if(resources, charSequence, f13129goto);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m14577if(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    /* renamed from: break, reason: not valid java name */
    public void m14578break(int i) {
        if (i != this.f13133else) {
            this.f13133else = i;
            int i2 = this.f13136new;
            if (i2 < 12 && i == 1) {
                this.f13136new = i2 + 12;
            } else {
                if (i2 < 12 || i != 0) {
                    return;
                }
                this.f13136new = i2 - 12;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: else, reason: not valid java name */
    public void m14579else(int i) {
        if (this.f13134for == 1) {
            this.f13136new = i;
        } else {
            this.f13136new = (i % 12) + (this.f13133else != 1 ? 0 : 12);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f13136new == timeModel.f13136new && this.f13137try == timeModel.f13137try && this.f13134for == timeModel.f13134for && this.f13131case == timeModel.f13131case;
    }

    /* renamed from: for, reason: not valid java name */
    public int m14580for() {
        if (this.f13134for == 1) {
            return this.f13136new % 24;
        }
        int i = this.f13136new;
        if (i % 12 == 0) {
            return 12;
        }
        return this.f13133else == 1 ? i - 12 : i;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m14581goto(int i) {
        this.f13133else = m14575case(i);
        this.f13136new = i;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f13134for), Integer.valueOf(this.f13136new), Integer.valueOf(this.f13137try), Integer.valueOf(this.f13131case)});
    }

    /* renamed from: new, reason: not valid java name */
    public Cif m14582new() {
        return this.f13135if;
    }

    /* renamed from: this, reason: not valid java name */
    public void m14583this(@IntRange(from = 0, to = 60) int i) {
        this.f13137try = i % 60;
    }

    /* renamed from: try, reason: not valid java name */
    public Cif m14584try() {
        return this.f13132do;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f13136new);
        parcel.writeInt(this.f13137try);
        parcel.writeInt(this.f13131case);
        parcel.writeInt(this.f13134for);
    }

    public TimeModel(int i) {
        this(0, 0, 10, i);
    }

    public TimeModel(int i, int i2, int i3, int i4) {
        this.f13136new = i;
        this.f13137try = i2;
        this.f13131case = i3;
        this.f13134for = i4;
        this.f13133else = m14575case(i);
        this.f13132do = new Cif(59);
        this.f13135if = new Cif(i4 == 1 ? 24 : 12);
    }

    public TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}

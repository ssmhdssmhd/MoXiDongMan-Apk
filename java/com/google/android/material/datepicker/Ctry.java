package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Locale;

/* renamed from: com.google.android.material.datepicker.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry extends BaseAdapter {

    /* renamed from: new, reason: not valid java name */
    private static final int f11859new = 4;

    /* renamed from: try, reason: not valid java name */
    private static final int f11860try;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Calendar f11861do;

    /* renamed from: for, reason: not valid java name */
    private final int f11862for;

    /* renamed from: if, reason: not valid java name */
    private final int f11863if;

    static {
        f11860try = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public Ctry() {
        Calendar calendarM13285static = Cbreak.m13285static();
        this.f11861do = calendarM13285static;
        this.f11863if = calendarM13285static.getMaximum(7);
        this.f11862for = calendarM13285static.getFirstDayOfWeek();
    }

    /* renamed from: if, reason: not valid java name */
    private int m13338if(int i) {
        int i2 = i + this.f11862for;
        int i3 = this.f11863if;
        return i2 > i3 ? i2 - i3 : i2;
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Integer getItem(int i) {
        if (i >= this.f11863if) {
            return null;
        }
        return Integer.valueOf(m13338if(i));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f11863if;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @Nullable
    @SuppressLint({"WrongConstant"})
    public View getView(int i, @Nullable View view, @NonNull ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f11861do.set(7, m13338if(i));
        textView.setText(this.f11861do.getDisplayName(7, f11860try, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), this.f11861do.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}

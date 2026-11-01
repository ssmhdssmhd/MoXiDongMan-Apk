package com.google.android.material.datepicker;

import android.content.Context;
import android.support.v4.j62;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

/* renamed from: com.google.android.material.datepicker.for, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cfor extends j62 {

    /* renamed from: else, reason: not valid java name */
    private static final int f11835else = 1000;

    /* renamed from: case, reason: not valid java name */
    private Runnable f11836case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final TextInputLayout f11837do;

    /* renamed from: for, reason: not valid java name */
    private final CalendarConstraints f11838for;

    /* renamed from: if, reason: not valid java name */
    private final DateFormat f11839if;

    /* renamed from: new, reason: not valid java name */
    private final String f11840new;

    /* renamed from: try, reason: not valid java name */
    private final Runnable f11841try;

    /* renamed from: com.google.android.material.datepicker.for$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f11842do;

        public Cdo(String str) {
            this.f11842do = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout textInputLayout = Cfor.this.f11837do;
            DateFormat dateFormat = Cfor.this.f11839if;
            Context context = textInputLayout.getContext();
            textInputLayout.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), this.f11842do) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), dateFormat.format(new Date(Cbreak.m13283public().getTimeInMillis()))));
            Cfor.this.mo13250try();
        }
    }

    /* renamed from: com.google.android.material.datepicker.for$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f11844do;

        public Cif(long j) {
            this.f11844do = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cfor.this.f11837do.setError(String.format(Cfor.this.f11840new, Cnew.m13327for(this.f11844do)));
            Cfor.this.mo13250try();
        }
    }

    public Cfor(String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f11839if = dateFormat;
        this.f11837do = textInputLayout;
        this.f11838for = calendarConstraints;
        this.f11840new = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.f11841try = new Cdo(str);
    }

    /* renamed from: new, reason: not valid java name */
    private Runnable m13318new(long j) {
        return new Cif(j);
    }

    /* renamed from: case */
    public abstract void mo13249case(@Nullable Long l);

    /* renamed from: else, reason: not valid java name */
    public void m13319else(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    @Override // android.support.v4.j62, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) throws ParseException {
        this.f11837do.removeCallbacks(this.f11841try);
        this.f11837do.removeCallbacks(this.f11836case);
        this.f11837do.setError(null);
        mo13249case(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date date = this.f11839if.parse(charSequence.toString());
            this.f11837do.setError(null);
            long time = date.getTime();
            if (this.f11838for.m13117case().isValid(time) && this.f11838for.m13119class(time)) {
                mo13249case(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableM13318new = m13318new(time);
            this.f11836case = runnableM13318new;
            m13319else(this.f11837do, runnableM13318new);
        } catch (ParseException unused) {
            m13319else(this.f11837do, this.f11841try);
        }
    }

    /* renamed from: try */
    public void mo13250try() {
    }
}

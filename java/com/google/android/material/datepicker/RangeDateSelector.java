package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.a71;
import android.support.v4.hx0;
import android.support.v4.px0;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.lang3.Cclass;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Cfor();

    /* renamed from: do, reason: not valid java name */
    private String f11800do;

    /* renamed from: if, reason: not valid java name */
    private final String f11802if = Cclass.f28652do;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private Long f11801for = null;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Long f11803new = null;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private Long f11804try = null;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private Long f11799case = null;

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$do, reason: invalid class name */
    public class Cdo extends com.google.android.material.datepicker.Cfor {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ a71 f11805break;

        /* renamed from: goto, reason: not valid java name */
        public final /* synthetic */ TextInputLayout f11807goto;

        /* renamed from: this, reason: not valid java name */
        public final /* synthetic */ TextInputLayout f11808this;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, a71 a71Var) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f11807goto = textInputLayout2;
            this.f11808this = textInputLayout3;
            this.f11805break = a71Var;
        }

        @Override // com.google.android.material.datepicker.Cfor
        /* renamed from: case, reason: not valid java name */
        public void mo13249case(@Nullable Long l) {
            RangeDateSelector.this.f11804try = l;
            RangeDateSelector.this.m13239catch(this.f11807goto, this.f11808this, this.f11805break);
        }

        @Override // com.google.android.material.datepicker.Cfor
        /* renamed from: try, reason: not valid java name */
        public void mo13250try() {
            RangeDateSelector.this.f11804try = null;
            RangeDateSelector.this.m13239catch(this.f11807goto, this.f11808this, this.f11805break);
        }
    }

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$for, reason: invalid class name */
    public static class Cfor implements Parcelable.Creator<RangeDateSelector> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f11801for = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f11803new = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$if, reason: invalid class name */
    public class Cif extends com.google.android.material.datepicker.Cfor {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ a71 f11809break;

        /* renamed from: goto, reason: not valid java name */
        public final /* synthetic */ TextInputLayout f11811goto;

        /* renamed from: this, reason: not valid java name */
        public final /* synthetic */ TextInputLayout f11812this;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, a71 a71Var) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f11811goto = textInputLayout2;
            this.f11812this = textInputLayout3;
            this.f11809break = a71Var;
        }

        @Override // com.google.android.material.datepicker.Cfor
        /* renamed from: case */
        public void mo13249case(@Nullable Long l) {
            RangeDateSelector.this.f11799case = l;
            RangeDateSelector.this.m13239catch(this.f11811goto, this.f11812this, this.f11809break);
        }

        @Override // com.google.android.material.datepicker.Cfor
        /* renamed from: try */
        public void mo13250try() {
            RangeDateSelector.this.f11799case = null;
            RangeDateSelector.this.m13239catch(this.f11811goto, this.f11812this, this.f11809break);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m13238case(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f11800do.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !Cclass.f28652do.contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m13239catch(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull a71<Pair<Long, Long>> a71Var) {
        Long l = this.f11804try;
        if (l == null || this.f11799case == null) {
            m13238case(textInputLayout, textInputLayout2);
            a71Var.mo52do();
        } else if (!m13242goto(l.longValue(), this.f11799case.longValue())) {
            m13245this(textInputLayout, textInputLayout2);
            a71Var.mo52do();
        } else {
            this.f11801for = this.f11804try;
            this.f11803new = this.f11799case;
            a71Var.mo53if(getSelection());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m13242goto(long j, long j2) {
        return j <= j2;
    }

    /* renamed from: this, reason: not valid java name */
    private void m13245this(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f11800do);
        textInputLayout2.setError(Cclass.f28652do);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public void setSelection(@NonNull Pair<Long, Long> pair) {
        Long l = pair.first;
        if (l != null && pair.second != null) {
            Preconditions.checkArgument(m13242goto(l.longValue(), pair.second.longValue()));
        }
        Long l2 = pair.first;
        this.f11801for = l2 == null ? null : Long.valueOf(Cbreak.m13272do(l2.longValue()));
        Long l3 = pair.second;
        this.f11803new = l3 != null ? Long.valueOf(Cbreak.m13272do(l3.longValue())) : null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Pair<Long, Long> getSelection() {
        return new Pair<>(this.f11801for, this.f11803new);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return px0.m6244else(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R.attr.materialCalendarTheme : R.attr.materialCalendarFullscreenTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R.string.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f11801for;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.f11803new;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> getSelectedRanges() {
        if (this.f11801for == null || this.f11803new == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f11801for, this.f11803new));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l = this.f11801for;
        if (l == null && this.f11803new == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.f11803new;
        if (l2 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, Cnew.m13327for(l.longValue()));
        }
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, Cnew.m13327for(l2.longValue()));
        }
        Pair<String, String> pairM13325do = Cnew.m13325do(l, l2);
        return resources.getString(R.string.mtrl_picker_range_header_selected, pairM13325do.first, pairM13325do.second);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        Long l = this.f11801for;
        return (l == null || this.f11803new == null || !m13242goto(l.longValue(), this.f11803new.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull a71<Pair<Long, Long>> a71Var) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (hx0.m3149do()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f11800do = viewInflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatM13289throw = Cbreak.m13289throw();
        Long l = this.f11801for;
        if (l != null) {
            editText.setText(simpleDateFormatM13289throw.format(l));
            this.f11804try = this.f11801for;
        }
        Long l2 = this.f11803new;
        if (l2 != null) {
            editText2.setText(simpleDateFormatM13289throw.format(l2));
            this.f11799case = this.f11803new;
        }
        String strM13292while = Cbreak.m13292while(viewInflate.getResources(), simpleDateFormatM13289throw);
        textInputLayout.setPlaceholderText(strM13292while);
        textInputLayout2.setPlaceholderText(strM13292while);
        editText.addTextChangedListener(new Cdo(strM13292while, simpleDateFormatM13289throw, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, a71Var));
        editText2.addTextChangedListener(new Cif(strM13292while, simpleDateFormatM13289throw, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, a71Var));
        ViewUtils.m13622super(editText);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        Long l = this.f11801for;
        if (l == null) {
            this.f11801for = Long.valueOf(j);
        } else if (this.f11803new == null && m13242goto(l.longValue(), j)) {
            this.f11803new = Long.valueOf(j);
        } else {
            this.f11803new = null;
            this.f11801for = Long.valueOf(j);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.f11801for);
        parcel.writeValue(this.f11803new);
    }
}

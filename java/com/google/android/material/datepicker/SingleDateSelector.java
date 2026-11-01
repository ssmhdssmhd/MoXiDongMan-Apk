package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.a71;
import android.support.v4.hx0;
import android.support.v4.px0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Cif();

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private Long f11813do;

    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$do, reason: invalid class name */
    public class Cdo extends Cfor {

        /* renamed from: goto, reason: not valid java name */
        public final /* synthetic */ a71 f11814goto;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, a71 a71Var) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f11814goto = a71Var;
        }

        @Override // com.google.android.material.datepicker.Cfor
        /* renamed from: case */
        public void mo13249case(@Nullable Long l) {
            if (l == null) {
                SingleDateSelector.this.m13254for();
            } else {
                SingleDateSelector.this.select(l.longValue());
            }
            this.f11814goto.mo53if(SingleDateSelector.this.getSelection());
        }

        @Override // com.google.android.material.datepicker.Cfor
        /* renamed from: try */
        public void mo13250try() {
            this.f11814goto.mo52do();
        }
    }

    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$if, reason: invalid class name */
    public static class Cif implements Parcelable.Creator<SingleDateSelector> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public SingleDateSelector createFromParcel(@NonNull Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f11813do = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m13254for() {
        this.f11813do = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(Context context) {
        return px0.m6244else(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R.string.mtrl_picker_date_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f11813do;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> getSelectedRanges() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l = this.f11813do;
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R.string.mtrl_picker_date_header_selected, Cnew.m13320break(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        return this.f11813do != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long getSelection() {
        return this.f11813do;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull a71<Long> a71Var) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (hx0.m3149do()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatM13289throw = Cbreak.m13289throw();
        String strM13292while = Cbreak.m13292while(viewInflate.getResources(), simpleDateFormatM13289throw);
        textInputLayout.setPlaceholderText(strM13292while);
        Long l = this.f11813do;
        if (l != null) {
            editText.setText(simpleDateFormatM13289throw.format(l));
        }
        editText.addTextChangedListener(new Cdo(strM13292while, simpleDateFormatM13289throw, textInputLayout, calendarConstraints, a71Var));
        ViewUtils.m13622super(editText);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        this.f11813do = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void setSelection(@Nullable Long l) {
        this.f11813do = l == null ? null : Long.valueOf(Cbreak.m13272do(l.longValue()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.f11813do);
    }
}

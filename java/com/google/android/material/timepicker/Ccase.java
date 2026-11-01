package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.j62;
import android.support.v4.qx0;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.timepicker.TimePickerView;
import java.lang.reflect.Field;
import java.util.Locale;

/* renamed from: com.google.android.material.timepicker.case, reason: invalid class name */
/* loaded from: classes.dex */
class Ccase implements TimePickerView.OnSelectionChange, TimePickerPresenter {

    /* renamed from: break, reason: not valid java name */
    private MaterialButtonToggleGroup f13152break;

    /* renamed from: case, reason: not valid java name */
    private final ChipTextInputComboView f13153case;

    /* renamed from: do, reason: not valid java name */
    private final LinearLayout f13154do;

    /* renamed from: else, reason: not valid java name */
    private final Ctry f13155else;

    /* renamed from: goto, reason: not valid java name */
    private final EditText f13157goto;

    /* renamed from: if, reason: not valid java name */
    private final TimeModel f13158if;

    /* renamed from: this, reason: not valid java name */
    private final EditText f13160this;

    /* renamed from: try, reason: not valid java name */
    private final ChipTextInputComboView f13161try;

    /* renamed from: for, reason: not valid java name */
    private final TextWatcher f13156for = new Cdo();

    /* renamed from: new, reason: not valid java name */
    private final TextWatcher f13159new = new Cif();

    /* renamed from: com.google.android.material.timepicker.case$do, reason: invalid class name */
    public class Cdo extends j62 {
        public Cdo() {
        }

        @Override // android.support.v4.j62, android.text.TextWatcher
        public void afterTextChanged(Editable editable) throws NumberFormatException {
            try {
                if (TextUtils.isEmpty(editable)) {
                    Ccase.this.f13158if.m14583this(0);
                } else {
                    Ccase.this.f13158if.m14583this(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.case$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Ccase.this.onSelectionChanged(((Integer) view.getTag(R.id.selection_type)).intValue());
        }
    }

    /* renamed from: com.google.android.material.timepicker.case$if, reason: invalid class name */
    public class Cif extends j62 {
        public Cif() {
        }

        @Override // android.support.v4.j62, android.text.TextWatcher
        public void afterTextChanged(Editable editable) throws NumberFormatException {
            try {
                if (TextUtils.isEmpty(editable)) {
                    Ccase.this.f13158if.m14579else(0);
                } else {
                    Ccase.this.f13158if.m14579else(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.case$new, reason: invalid class name */
    public class Cnew implements MaterialButtonToggleGroup.OnButtonCheckedListener {
        public Cnew() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
        public void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            Ccase.this.f13158if.m14578break(i == R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    public Ccase(LinearLayout linearLayout, TimeModel timeModel) {
        this.f13154do = linearLayout;
        this.f13158if = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.f13161try = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.f13153case = chipTextInputComboView2;
        int i = R.id.material_label;
        TextView textView = (TextView) chipTextInputComboView.findViewById(i);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(i);
        textView.setText(resources.getString(R.string.material_timepicker_minute));
        textView2.setText(resources.getString(R.string.material_timepicker_hour));
        int i2 = R.id.selection_type;
        chipTextInputComboView.setTag(i2, 12);
        chipTextInputComboView2.setTag(i2, 10);
        if (timeModel.f13134for == 0) {
            m14602goto();
        }
        Cfor cfor = new Cfor();
        chipTextInputComboView2.setOnClickListener(cfor);
        chipTextInputComboView.setOnClickListener(cfor);
        chipTextInputComboView2.m14507for(timeModel.m14582new());
        chipTextInputComboView.m14507for(timeModel.m14584try());
        EditText editText = chipTextInputComboView2.m14510try().getEditText();
        this.f13157goto = editText;
        EditText editText2 = chipTextInputComboView.m14510try().getEditText();
        this.f13160this = editText2;
        if (Build.VERSION.SDK_INT < 21) {
            int iM6679new = qx0.m6679new(linearLayout, R.attr.colorPrimary);
            m14599case(editText, iM6679new);
            m14599case(editText2, iM6679new);
        }
        this.f13155else = new Ctry(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.m14505case(new com.google.android.material.timepicker.Cdo(linearLayout.getContext(), R.string.material_hour_selection));
        chipTextInputComboView.m14505case(new com.google.android.material.timepicker.Cdo(linearLayout.getContext(), R.string.material_minute_selection));
        initialize();
    }

    /* renamed from: case, reason: not valid java name */
    private static void m14599case(EditText editText, @ColorInt int i) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable drawable = AppCompatResources.getDrawable(context, i2);
            drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{drawable, drawable});
        } catch (Throwable unused) {
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m14601else(TimeModel timeModel) {
        m14604new();
        Locale locale = this.f13154do.getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.f13129goto, Integer.valueOf(timeModel.f13137try));
        String str2 = String.format(locale, TimeModel.f13129goto, Integer.valueOf(timeModel.m14580for()));
        this.f13161try.m14509this(str);
        this.f13153case.m14509this(str2);
        m14603if();
        m14605this();
    }

    /* renamed from: goto, reason: not valid java name */
    private void m14602goto() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f13154do.findViewById(R.id.material_clock_period_toggle);
        this.f13152break = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new Cnew());
        this.f13152break.setVisibility(0);
        m14605this();
    }

    /* renamed from: if, reason: not valid java name */
    private void m14603if() {
        this.f13157goto.addTextChangedListener(this.f13159new);
        this.f13160this.addTextChangedListener(this.f13156for);
    }

    /* renamed from: new, reason: not valid java name */
    private void m14604new() {
        this.f13157goto.removeTextChangedListener(this.f13159new);
        this.f13160this.removeTextChangedListener(this.f13156for);
    }

    /* renamed from: this, reason: not valid java name */
    private void m14605this() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f13152break;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.m12944this(this.f13158if.f13133else == 0 ? R.id.material_clock_period_am_button : R.id.material_clock_period_pm_button);
    }

    /* renamed from: for, reason: not valid java name */
    public void m14606for() {
        this.f13161try.setChecked(false);
        this.f13153case.setChecked(false);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        View focusedChild = this.f13154do.getFocusedChild();
        if (focusedChild == null) {
            this.f13154do.setVisibility(8);
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(this.f13154do.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        this.f13154do.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        m14603if();
        m14601else(this.f13158if);
        this.f13155else.m14625do();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        m14601else(this.f13158if);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i) {
        this.f13158if.f13131case = i;
        this.f13161try.setChecked(i == 12);
        this.f13153case.setChecked(i == 10);
        m14605this();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.f13154do.setVisibility(0);
    }

    /* renamed from: try, reason: not valid java name */
    public void m14607try() {
        this.f13161try.setChecked(this.f13158if.f13131case == 12);
        this.f13153case.setChecked(this.f13158if.f13131case == 10);
    }
}

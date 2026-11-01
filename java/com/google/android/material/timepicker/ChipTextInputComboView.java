package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.support.v4.j62;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;

/* loaded from: classes.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: do, reason: not valid java name */
    private final Chip f13050do;

    /* renamed from: for, reason: not valid java name */
    private final EditText f13051for;

    /* renamed from: if, reason: not valid java name */
    private final TextInputLayout f13052if;

    /* renamed from: new, reason: not valid java name */
    private TextWatcher f13053new;

    /* renamed from: try, reason: not valid java name */
    private TextView f13054try;

    /* renamed from: com.google.android.material.timepicker.ChipTextInputComboView$if, reason: invalid class name */
    public class Cif extends j62 {

        /* renamed from: if, reason: not valid java name */
        private static final String f13055if = "00";

        private Cif() {
        }

        @Override // android.support.v4.j62, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f13050do.setText(ChipTextInputComboView.this.m14504new(f13055if));
            } else {
                ChipTextInputComboView.this.f13050do.setText(ChipTextInputComboView.this.m14504new(editable));
            }
        }
    }

    public ChipTextInputComboView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m14501break() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f13051for.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public String m14504new(CharSequence charSequence) {
        return TimeModel.m14576do(getResources(), charSequence);
    }

    /* renamed from: case, reason: not valid java name */
    public void m14505case(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f13050do, accessibilityDelegateCompat);
    }

    /* renamed from: else, reason: not valid java name */
    public void m14506else(boolean z) {
        this.f13051for.setCursorVisible(z);
    }

    /* renamed from: for, reason: not valid java name */
    public void m14507for(InputFilter inputFilter) {
        InputFilter[] filters = this.f13051for.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f13051for.setFilters(inputFilterArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m14508goto(CharSequence charSequence) {
        this.f13054try.setText(charSequence);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f13050do.isChecked();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m14501break();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f13050do.setChecked(z);
        this.f13051for.setVisibility(z ? 0 : 4);
        this.f13050do.setVisibility(z ? 8 : 0);
        if (isChecked()) {
            this.f13051for.requestFocus();
            if (TextUtils.isEmpty(this.f13051for.getText())) {
                return;
            }
            EditText editText = this.f13051for;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f13050do.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f13050do.setTag(i, obj);
    }

    /* renamed from: this, reason: not valid java name */
    public void m14509this(CharSequence charSequence) {
        this.f13050do.setText(m14504new(charSequence));
        if (TextUtils.isEmpty(this.f13051for.getText())) {
            return;
        }
        this.f13051for.removeTextChangedListener(this.f13053new);
        this.f13051for.setText((CharSequence) null);
        this.f13051for.addTextChangedListener(this.f13053new);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f13050do.toggle();
    }

    /* renamed from: try, reason: not valid java name */
    public TextInputLayout m14510try() {
        return this.f13052if;
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f13050do = chip;
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        this.f13052if = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f13051for = editText;
        editText.setVisibility(4);
        Cif cif = new Cif();
        this.f13053new = cif;
        editText.addTextChangedListener(cif);
        m14501break();
        addView(chip);
        addView(textInputLayout);
        this.f13054try = (TextView) findViewById(R.id.material_label);
        editText.setSaveEnabled(false);
    }
}

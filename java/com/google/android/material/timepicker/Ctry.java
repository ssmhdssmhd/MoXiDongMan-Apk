package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: com.google.android.material.timepicker.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* renamed from: do, reason: not valid java name */
    private final ChipTextInputComboView f13183do;

    /* renamed from: for, reason: not valid java name */
    private final TimeModel f13184for;

    /* renamed from: if, reason: not valid java name */
    private final ChipTextInputComboView f13185if;

    /* renamed from: new, reason: not valid java name */
    private boolean f13186new = false;

    public Ctry(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f13183do = chipTextInputComboView;
        this.f13185if = chipTextInputComboView2;
        this.f13184for = timeModel;
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m14622for(int i, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null) {
            return false;
        }
        if (!(i >= 7 && i <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2)) {
            return false;
        }
        m14623if(12);
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private void m14623if(int i) {
        this.f13185if.setChecked(i == 12);
        this.f13183do.setChecked(i == 10);
        this.f13184for.f13131case = i;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m14624new(int i, KeyEvent keyEvent, EditText editText) {
        if (!(i == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText()))) {
            return false;
        }
        m14623if(10);
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public void m14625do() {
        TextInputLayout textInputLayoutM14510try = this.f13183do.m14510try();
        TextInputLayout textInputLayoutM14510try2 = this.f13185if.m14510try();
        EditText editText = textInputLayoutM14510try.getEditText();
        EditText editText2 = textInputLayoutM14510try2.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = i == 5;
        if (z) {
            m14623if(12);
        }
        return z;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.f13186new) {
            return false;
        }
        this.f13186new = true;
        EditText editText = (EditText) view;
        boolean zM14624new = this.f13184for.f13131case == 12 ? m14624new(i, keyEvent, editText) : m14622for(i, keyEvent, editText);
        this.f13186new = false;
        return zM14624new;
    }
}

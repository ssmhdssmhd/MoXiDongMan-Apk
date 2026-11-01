package com.google.android.material.textfield;

import android.support.v4.j62;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;

/* renamed from: com.google.android.material.textfield.goto, reason: invalid class name */
/* loaded from: classes.dex */
class Cgoto extends Ctry {

    /* renamed from: case, reason: not valid java name */
    private final TextInputLayout.OnEndIconChangedListener f13007case;

    /* renamed from: new, reason: not valid java name */
    private final TextWatcher f13008new;

    /* renamed from: try, reason: not valid java name */
    private final TextInputLayout.OnEditTextAttachedListener f13009try;

    /* renamed from: com.google.android.material.textfield.goto$do, reason: invalid class name */
    public class Cdo extends j62 {
        public Cdo() {
        }

        @Override // android.support.v4.j62, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Cgoto.this.f13048for.setChecked(!r1.m14461else());
        }
    }

    /* renamed from: com.google.android.material.textfield.goto$for, reason: invalid class name */
    public class Cfor implements TextInputLayout.OnEndIconChangedListener {

        /* renamed from: com.google.android.material.textfield.goto$for$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ EditText f13012do;

            public Cdo(EditText editText) {
                this.f13012do = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f13012do.removeTextChangedListener(Cgoto.this.f13008new);
            }
        }

        public Cfor() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
        public void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new Cdo(editText));
        }
    }

    /* renamed from: com.google.android.material.textfield.goto$if, reason: invalid class name */
    public class Cif implements TextInputLayout.OnEditTextAttachedListener {
        public Cif() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            Cgoto.this.f13048for.setChecked(!r4.m14461else());
            editText.removeTextChangedListener(Cgoto.this.f13008new);
            editText.addTextChangedListener(Cgoto.this.f13008new);
        }
    }

    /* renamed from: com.google.android.material.textfield.goto$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = Cgoto.this.f13047do.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (Cgoto.this.m14461else()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            Cgoto.this.f13047do.t();
        }
    }

    public Cgoto(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f13008new = new Cdo();
        this.f13009try = new Cif();
        this.f13007case = new Cfor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public boolean m14461else() {
        EditText editText = this.f13047do.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m14462goto(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    @Override // com.google.android.material.textfield.Ctry
    /* renamed from: do */
    public void mo14458do() {
        this.f13047do.setEndIconDrawable(AppCompatResources.getDrawable(this.f13049if, R.drawable.design_password_eye));
        TextInputLayout textInputLayout = this.f13047do;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.password_toggle_content_description));
        this.f13047do.setEndIconOnClickListener(new Cnew());
        this.f13047do.addOnEditTextAttachedListener(this.f13009try);
        this.f13047do.addOnEndIconChangedListener(this.f13007case);
        EditText editText = this.f13047do.getEditText();
        if (m14462goto(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}

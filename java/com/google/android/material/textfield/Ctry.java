package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;

/* renamed from: com.google.android.material.textfield.try, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Ctry {

    /* renamed from: do, reason: not valid java name */
    public TextInputLayout f13047do;

    /* renamed from: for, reason: not valid java name */
    public CheckableImageButton f13048for;

    /* renamed from: if, reason: not valid java name */
    public Context f13049if;

    public Ctry(@NonNull TextInputLayout textInputLayout) {
        this.f13047do = textInputLayout;
        this.f13049if = textInputLayout.getContext();
        this.f13048for = textInputLayout.getEndIconView();
    }

    /* renamed from: do */
    public abstract void mo14458do();

    /* renamed from: for */
    public void mo14459for(boolean z) {
    }

    /* renamed from: if */
    public boolean mo14494if(int i) {
        return true;
    }

    /* renamed from: new */
    public boolean mo14495new() {
        return false;
    }
}

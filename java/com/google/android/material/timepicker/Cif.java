package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

/* renamed from: com.google.android.material.timepicker.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif implements InputFilter {

    /* renamed from: do, reason: not valid java name */
    private int f13172do;

    public Cif(int i) {
        this.f13172do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m14613do() {
        return this.f13172do;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) <= this.f13172do) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m14614if(int i) {
        this.f13172do = i;
    }
}

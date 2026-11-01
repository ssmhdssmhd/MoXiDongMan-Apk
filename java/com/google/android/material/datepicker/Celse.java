package com.google.android.material.datepicker;

import android.support.v4.a71;
import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* renamed from: com.google.android.material.datepicker.else, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Celse<S> extends Fragment {

    /* renamed from: do, reason: not valid java name */
    public final LinkedHashSet<a71<S>> f11834do = new LinkedHashSet<>();

    /* renamed from: do */
    public boolean mo13158do(a71<S> a71Var) {
        return this.f11834do.add(a71Var);
    }

    /* renamed from: for */
    public abstract DateSelector<S> mo13160for();

    /* renamed from: if, reason: not valid java name */
    public void m13313if() {
        this.f11834do.clear();
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m13314new(a71<S> a71Var) {
        return this.f11834do.remove(a71Var);
    }
}

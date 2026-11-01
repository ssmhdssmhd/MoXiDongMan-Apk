package com.google.android.material.datepicker;

import android.os.Bundle;
import android.support.v4.a71;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class MaterialTextInputPicker<S> extends Celse<S> {

    /* renamed from: case, reason: not valid java name */
    private static final String f11776case = "DATE_SELECTOR_KEY";

    /* renamed from: else, reason: not valid java name */
    private static final String f11777else = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: try, reason: not valid java name */
    private static final String f11778try = "THEME_RES_ID_KEY";

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private DateSelector<S> f11779for;

    /* renamed from: if, reason: not valid java name */
    @StyleRes
    private int f11780if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private CalendarConstraints f11781new;

    /* renamed from: com.google.android.material.datepicker.MaterialTextInputPicker$do, reason: invalid class name */
    public class Cdo extends a71<S> {
        public Cdo() {
        }

        @Override // android.support.v4.a71
        /* renamed from: do */
        public void mo52do() {
            Iterator<a71<S>> it = MaterialTextInputPicker.this.f11834do.iterator();
            while (it.hasNext()) {
                it.next().mo52do();
            }
        }

        @Override // android.support.v4.a71
        /* renamed from: if */
        public void mo53if(S s) {
            Iterator<a71<S>> it = MaterialTextInputPicker.this.f11834do.iterator();
            while (it.hasNext()) {
                it.next().mo53if(s);
            }
        }
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public static <T> MaterialTextInputPicker<T> m13218try(DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker<T> materialTextInputPicker = new MaterialTextInputPicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f11778try, i);
        bundle.putParcelable(f11776case, dateSelector);
        bundle.putParcelable(f11777else, calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override // com.google.android.material.datepicker.Celse
    @NonNull
    /* renamed from: for */
    public DateSelector<S> mo13160for() {
        DateSelector<S> dateSelector = this.f11779for;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f11780if = bundle.getInt(f11778try);
        this.f11779for = (DateSelector) bundle.getParcelable(f11776case);
        this.f11781new = (CalendarConstraints) bundle.getParcelable(f11777else);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f11779for.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f11780if)), viewGroup, bundle, this.f11781new, new Cdo());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f11778try, this.f11780if);
        bundle.putParcelable(f11776case, this.f11779for);
        bundle.putParcelable(f11777else, this.f11781new);
    }
}

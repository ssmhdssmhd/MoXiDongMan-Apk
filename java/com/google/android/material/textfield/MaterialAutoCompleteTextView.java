package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.hx0;
import android.support.v4.k62;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.R;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: new, reason: not valid java name */
    private static final int f12896new = 15;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final ListPopupWindow f12897do;

    /* renamed from: for, reason: not valid java name */
    @NonNull
    private final Rect f12898for;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private final AccessibilityManager f12899if;

    /* renamed from: com.google.android.material.textfield.MaterialAutoCompleteTextView$do, reason: invalid class name */
    public class Cdo implements AdapterView.OnItemClickListener {
        public Cdo() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MaterialAutoCompleteTextView.this.m14367try(i < 0 ? MaterialAutoCompleteTextView.this.f12897do.getSelectedItem() : MaterialAutoCompleteTextView.this.getAdapter().getItem(i));
            AdapterView.OnItemClickListener onItemClickListener = MaterialAutoCompleteTextView.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i < 0) {
                    view = MaterialAutoCompleteTextView.this.f12897do.getSelectedView();
                    i = MaterialAutoCompleteTextView.this.f12897do.getSelectedItemPosition();
                    j = MaterialAutoCompleteTextView.this.f12897do.getSelectedItemId();
                }
                onItemClickListener.onItemClick(MaterialAutoCompleteTextView.this.f12897do.getListView(), view, i, j);
            }
            MaterialAutoCompleteTextView.this.f12897do.dismiss();
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    private TextInputLayout m14364for() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private int m14366new() {
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutM14364for = m14364for();
        int i = 0;
        if (adapter == null || textInputLayoutM14364for == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.f12897do.getSelectedItemPosition()) + 15);
        View view = null;
        int iMax = 0;
        for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
            int itemViewType = adapter.getItemViewType(iMax2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = adapter.getView(iMax2, view, textInputLayoutM14364for);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax = Math.max(iMax, view.getMeasuredWidth());
        }
        Drawable background = this.f12897do.getBackground();
        if (background != null) {
            background.getPadding(this.f12898for);
            Rect rect = this.f12898for;
            iMax += rect.left + rect.right;
        }
        return iMax + textInputLayoutM14364for.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public <T extends ListAdapter & Filterable> void m14367try(Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            setText(convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = getAdapter();
        setAdapter(null);
        setText(convertSelectionToString(obj));
        setAdapter(adapter);
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayoutM14364for = m14364for();
        return (textInputLayoutM14364for == null || !textInputLayoutM14364for.k()) ? super.getHint() : textInputLayoutM14364for.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutM14364for = m14364for();
        if (textInputLayoutM14364for != null && textInputLayoutM14364for.k() && super.getHint() == null && hx0.m3150for()) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m14366new()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t) {
        super.setAdapter(t);
        this.f12897do.setAdapter(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        AccessibilityManager accessibilityManager = this.f12899if;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f12897do.show();
        }
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(vx0.m8993for(context, attributeSet, i, 0), attributeSet, i);
        this.f12898for = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.MaterialAutoCompleteTextView, i, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        int i2 = R.styleable.MaterialAutoCompleteTextView_android_inputType;
        if (typedArrayM4267break.hasValue(i2) && typedArrayM4267break.getInt(i2, 0) == 0) {
            setKeyListener(null);
        }
        this.f12899if = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f12897do = listPopupWindow;
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(this);
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setAdapter(getAdapter());
        listPopupWindow.setOnItemClickListener(new Cdo());
        typedArrayM4267break.recycle();
    }
}

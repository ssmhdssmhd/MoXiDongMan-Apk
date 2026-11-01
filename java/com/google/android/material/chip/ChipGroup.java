package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.k62;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.FlowLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ChipGroup extends FlowLayout {

    /* renamed from: final, reason: not valid java name */
    private static final int f11632final = R.style.Widget_MaterialComponents_ChipGroup;

    /* renamed from: break, reason: not valid java name */
    private final Cif f11633break;

    /* renamed from: case, reason: not valid java name */
    @Dimension
    private int f11634case;

    /* renamed from: catch, reason: not valid java name */
    @NonNull
    private Cnew f11635catch;

    /* renamed from: class, reason: not valid java name */
    @IdRes
    private int f11636class;

    /* renamed from: const, reason: not valid java name */
    private boolean f11637const;

    /* renamed from: else, reason: not valid java name */
    private boolean f11638else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f11639goto;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private OnCheckedChangeListener f11640this;

    /* renamed from: try, reason: not valid java name */
    @Dimension
    private int f11641try;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(ChipGroup chipGroup, @IdRes int i);
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$for, reason: invalid class name */
    public static class Cfor extends ViewGroup.MarginLayoutParams {
        public Cfor(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public Cfor(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public Cfor(int i, int i2) {
            super(i, i2);
        }

        public Cfor(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$if, reason: invalid class name */
    public class Cif implements CompoundButton.OnCheckedChangeListener {
        private Cif() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@NonNull CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.f11637const) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.f11639goto) {
                ChipGroup.this.m13073native(compoundButton.getId(), true);
                ChipGroup.this.m13072import(compoundButton.getId(), false);
                return;
            }
            int id = compoundButton.getId();
            if (!z) {
                if (ChipGroup.this.f11636class == id) {
                    ChipGroup.this.setCheckedId(-1);
                }
            } else {
                if (ChipGroup.this.f11636class != -1 && ChipGroup.this.f11636class != id && ChipGroup.this.f11638else) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.m13073native(chipGroup.f11636class, false);
                }
                ChipGroup.this.setCheckedId(id);
            }
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$new, reason: invalid class name */
    public class Cnew implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: do, reason: not valid java name */
        private ViewGroup.OnHierarchyChangeListener f11643do;

        private Cnew() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).m13076const(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.f11633break);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f11643do;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f11643do;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    private int getChipCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public void m13072import(int i, boolean z) {
        this.f11636class = i;
        OnCheckedChangeListener onCheckedChangeListener = this.f11640this;
        if (onCheckedChangeListener != null && this.f11638else && z) {
            onCheckedChangeListener.onCheckedChanged(this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public void m13073native(@IdRes int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof Chip) {
            this.f11637const = true;
            ((Chip) viewFindViewById).setChecked(z);
            this.f11637const = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i) {
        m13072import(i, true);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.f11636class;
                if (i2 != -1 && this.f11638else) {
                    m13073native(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof Cfor);
    }

    /* renamed from: const, reason: not valid java name */
    public void m13076const(@IdRes int i) {
        int i2 = this.f11636class;
        if (i == i2) {
            return;
        }
        if (i2 != -1 && this.f11638else) {
            m13073native(i2, false);
        }
        if (i != -1) {
            m13073native(i, true);
        }
        setCheckedId(i);
    }

    /* renamed from: final, reason: not valid java name */
    public void m13077final() {
        this.f11637const = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.f11637const = false;
        setCheckedId(-1);
    }

    @Override // com.google.android.material.internal.FlowLayout
    /* renamed from: for, reason: not valid java name */
    public boolean mo13078for() {
        return super.mo13078for();
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Cfor(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cfor(getContext(), attributeSet);
    }

    @IdRes
    public int getCheckedChipId() {
        if (this.f11638else) {
            return this.f11636class;
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.f11638else) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.f11641try;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.f11634case;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f11636class;
        if (i != -1) {
            m13073native(i, true);
            setCheckedId(this.f11636class);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), mo13078for() ? getChipCount() : -1, false, m13081while() ? 1 : 2));
    }

    public void setChipSpacing(@Dimension int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingHorizontal(@Dimension int i) {
        if (this.f11641try != i) {
            this.f11641try = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingResource(@DimenRes int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public void setChipSpacingVertical(@Dimension int i) {
        if (this.f11634case != i) {
            this.f11634case = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f11640this = onCheckedChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f11635catch.f11643do = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f11639goto = z;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(boolean z) {
        if (this.f11638else != z) {
            this.f11638else = z;
            m13077final();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public int m13079super(@Nullable View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                if (((Chip) getChildAt(i2)) == view) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m13080throw() {
        return this.f11639goto;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m13081while() {
        return this.f11638else;
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cfor(layoutParams);
    }

    public void setSingleLine(@BoolRes int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        int i2 = f11632final;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11633break = new Cif();
        this.f11635catch = new Cnew();
        this.f11636class = -1;
        this.f11637const = false;
        TypedArray typedArrayM4267break = k62.m4267break(getContext(), attributeSet, R.styleable.ChipGroup, i, i2, new int[0]);
        int dimensionPixelOffset = typedArrayM4267break.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayM4267break.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayM4267break.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayM4267break.getBoolean(R.styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayM4267break.getBoolean(R.styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayM4267break.getBoolean(R.styleable.ChipGroup_selectionRequired, false));
        int resourceId = typedArrayM4267break.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.f11636class = resourceId;
        }
        typedArrayM4267break.recycle();
        super.setOnHierarchyChangeListener(this.f11635catch);
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}

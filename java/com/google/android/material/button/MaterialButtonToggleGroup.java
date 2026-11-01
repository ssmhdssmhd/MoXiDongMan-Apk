package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v4.Cprivate;
import android.support.v4.k62;
import android.support.v4.vx0;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: catch, reason: not valid java name */
    private static final String f11510catch = MaterialButtonToggleGroup.class.getSimpleName();

    /* renamed from: class, reason: not valid java name */
    private static final int f11511class = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: break, reason: not valid java name */
    @IdRes
    private int f11512break;

    /* renamed from: case, reason: not valid java name */
    private Integer[] f11513case;

    /* renamed from: do, reason: not valid java name */
    private final List<Cnew> f11514do;

    /* renamed from: else, reason: not valid java name */
    private boolean f11515else;

    /* renamed from: for, reason: not valid java name */
    private final Ctry f11516for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f11517goto;

    /* renamed from: if, reason: not valid java name */
    private final Cfor f11518if;

    /* renamed from: new, reason: not valid java name */
    private final LinkedHashSet<OnButtonCheckedListener> f11519new;

    /* renamed from: this, reason: not valid java name */
    private boolean f11520this;

    /* renamed from: try, reason: not valid java name */
    private final Comparator<MaterialButton> f11521try;

    public interface OnButtonCheckedListener {
        void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$do, reason: invalid class name */
    public class Cdo implements Comparator<MaterialButton> {
        public Cdo() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$for, reason: invalid class name */
    public class Cfor implements MaterialButton.OnCheckedChangeListener {
        private Cfor() {
        }

        @Override // com.google.android.material.button.MaterialButton.OnCheckedChangeListener
        public void onCheckedChanged(@NonNull MaterialButton materialButton, boolean z) {
            if (MaterialButtonToggleGroup.this.f11515else) {
                return;
            }
            if (MaterialButtonToggleGroup.this.f11517goto) {
                MaterialButtonToggleGroup.this.f11512break = z ? materialButton.getId() : -1;
            }
            if (MaterialButtonToggleGroup.this.m12935throws(materialButton.getId(), z)) {
                MaterialButtonToggleGroup.this.m12921const(materialButton.getId(), materialButton.isChecked());
            }
            MaterialButtonToggleGroup.this.invalidate();
        }

        public /* synthetic */ Cfor(MaterialButtonToggleGroup materialButtonToggleGroup, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$if, reason: invalid class name */
    public class Cif extends AccessibilityDelegateCompat {
        public Cif() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.m12932super(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: try, reason: not valid java name */
        private static final CornerSize f11525try = new Cprivate(0.0f);

        /* renamed from: do, reason: not valid java name */
        public CornerSize f11526do;

        /* renamed from: for, reason: not valid java name */
        public CornerSize f11527for;

        /* renamed from: if, reason: not valid java name */
        public CornerSize f11528if;

        /* renamed from: new, reason: not valid java name */
        public CornerSize f11529new;

        public Cnew(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
            this.f11526do = cornerSize;
            this.f11528if = cornerSize3;
            this.f11527for = cornerSize4;
            this.f11529new = cornerSize2;
        }

        /* renamed from: case, reason: not valid java name */
        public static Cnew m12946case(Cnew cnew) {
            CornerSize cornerSize = cnew.f11526do;
            CornerSize cornerSize2 = f11525try;
            return new Cnew(cornerSize, cornerSize2, cnew.f11528if, cornerSize2);
        }

        /* renamed from: do, reason: not valid java name */
        public static Cnew m12947do(Cnew cnew) {
            CornerSize cornerSize = f11525try;
            return new Cnew(cornerSize, cnew.f11529new, cornerSize, cnew.f11527for);
        }

        /* renamed from: for, reason: not valid java name */
        public static Cnew m12948for(Cnew cnew) {
            CornerSize cornerSize = cnew.f11526do;
            CornerSize cornerSize2 = cnew.f11529new;
            CornerSize cornerSize3 = f11525try;
            return new Cnew(cornerSize, cornerSize2, cornerSize3, cornerSize3);
        }

        /* renamed from: if, reason: not valid java name */
        public static Cnew m12949if(Cnew cnew, View view) {
            return ViewUtils.m13610break(view) ? m12948for(cnew) : m12950new(cnew);
        }

        /* renamed from: new, reason: not valid java name */
        public static Cnew m12950new(Cnew cnew) {
            CornerSize cornerSize = f11525try;
            return new Cnew(cornerSize, cornerSize, cnew.f11528if, cnew.f11527for);
        }

        /* renamed from: try, reason: not valid java name */
        public static Cnew m12951try(Cnew cnew, View view) {
            return ViewUtils.m13610break(view) ? m12950new(cnew) : m12948for(cnew);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$try, reason: invalid class name */
    public class Ctry implements MaterialButton.OnPressedChangeListener {
        private Ctry() {
        }

        @Override // com.google.android.material.button.MaterialButton.OnPressedChangeListener
        public void onPressedChanged(@NonNull MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        public /* synthetic */ Ctry(MaterialButtonToggleGroup materialButtonToggleGroup, Cdo cdo) {
            this();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m12919break(int i, boolean z) {
        MaterialButton materialButton = (MaterialButton) findViewById(i);
        if (materialButton != null) {
            materialButton.setChecked(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public void m12921const(@IdRes int i, boolean z) {
        Iterator<OnButtonCheckedListener> it = this.f11519new.iterator();
        while (it.hasNext()) {
            it.next().onButtonChecked(this, i, z);
        }
    }

    /* renamed from: default, reason: not valid java name */
    private void m12922default() {
        TreeMap treeMap = new TreeMap(this.f11521try);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m12925final(i), Integer.valueOf(i));
        }
        this.f11513case = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    /* renamed from: else, reason: not valid java name */
    private void m12924else() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton materialButtonM12925final = m12925final(i);
            int iMin = Math.min(materialButtonM12925final.getStrokeWidth(), m12925final(i - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsM12927goto = m12927goto(materialButtonM12925final);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(layoutParamsM12927goto, 0);
                MarginLayoutParamsCompat.setMarginStart(layoutParamsM12927goto, -iMin);
                layoutParamsM12927goto.topMargin = 0;
            } else {
                layoutParamsM12927goto.bottomMargin = 0;
                layoutParamsM12927goto.topMargin = -iMin;
                MarginLayoutParamsCompat.setMarginStart(layoutParamsM12927goto, 0);
            }
            materialButtonM12925final.setLayoutParams(layoutParamsM12927goto);
        }
        m12930public(firstVisibleChildIndex);
    }

    /* renamed from: final, reason: not valid java name */
    private MaterialButton m12925final(int i) {
        return (MaterialButton) getChildAt(i);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m12937while(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m12937while(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && m12937while(i2)) {
                i++;
            }
        }
        return i;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private LinearLayout.LayoutParams m12927goto(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    /* renamed from: public, reason: not valid java name */
    private void m12930public(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m12925final(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m12931return(@IdRes int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById instanceof MaterialButton) {
            this.f11515else = true;
            ((MaterialButton) viewFindViewById).setChecked(z);
            this.f11515else = false;
        }
    }

    private void setCheckedId(int i) {
        this.f11512break = i;
        m12921const(i, true);
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.addOnCheckedChangeListener(this.f11518if);
        materialButton.setOnPressedChangeListenerInternal(this.f11516for);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public int m12932super(@Nullable View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) == view) {
                return i;
            }
            if ((getChildAt(i2) instanceof MaterialButton) && m12937while(i2)) {
                i++;
            }
        }
        return -1;
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m12933switch(ShapeAppearanceModel.Cif cif, @Nullable Cnew cnew) {
        if (cnew == null) {
            cif.m14020super(0.0f);
        } else {
            cif.m14010instanceof(cnew.f11526do).m14005default(cnew.f11529new).d(cnew.f11528if).m14002abstract(cnew.f11527for);
        }
    }

    @Nullable
    /* renamed from: throw, reason: not valid java name */
    private Cnew m12934throw(int i, int i2, int i3) {
        Cnew cnew = this.f11514do.get(i);
        if (i2 == i3) {
            return cnew;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? Cnew.m12951try(cnew, this) : Cnew.m12946case(cnew);
        }
        if (i == i3) {
            return z ? Cnew.m12949if(cnew, this) : Cnew.m12947do(cnew);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public boolean m12935throws(int i, boolean z) {
        List<Integer> checkedButtonIds = getCheckedButtonIds();
        if (this.f11520this && checkedButtonIds.isEmpty()) {
            m12931return(i, true);
            this.f11512break = i;
            return false;
        }
        if (z && this.f11517goto) {
            checkedButtonIds.remove(Integer.valueOf(i));
            Iterator<Integer> it = checkedButtonIds.iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                m12931return(iIntValue, false);
                m12921const(iIntValue, false);
            }
        }
        return true;
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m12937while(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    public void addOnButtonCheckedListener(@NonNull OnButtonCheckedListener onButtonCheckedListener) {
        this.f11519new.add(onButtonCheckedListener);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            if (materialButton.isChecked()) {
                m12935throws(materialButton.getId(), true);
                setCheckedId(materialButton.getId());
            }
            ShapeAppearanceModel shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.f11514do.add(new Cnew(shapeAppearanceModel.m13978import(), shapeAppearanceModel.m13972break(), shapeAppearanceModel.m13980public(), shapeAppearanceModel.m13974class()));
            ViewCompat.setAccessibilityDelegate(materialButton, new Cif());
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m12938catch() {
        this.f11515else = true;
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonM12925final = m12925final(i);
            materialButtonM12925final.setChecked(false);
            m12921const(materialButtonM12925final.getId(), false);
        }
        this.f11515else = false;
        setCheckedId(-1);
    }

    /* renamed from: class, reason: not valid java name */
    public void m12939class() {
        this.f11519new.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(@NonNull Canvas canvas) {
        m12922default();
        super.dispatchDraw(canvas);
    }

    @VisibleForTesting
    /* renamed from: extends, reason: not valid java name */
    public void m12940extends() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton materialButtonM12925final = m12925final(i);
            if (materialButtonM12925final.getVisibility() != 8) {
                ShapeAppearanceModel.Cif cifM13982static = materialButtonM12925final.getShapeAppearanceModel().m13982static();
                m12933switch(cifM13982static, m12934throw(i, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonM12925final.setShapeAppearanceModel(cifM13982static.m14003const());
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    @IdRes
    public int getCheckedButtonId() {
        if (this.f11517goto) {
            return this.f11512break;
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButtonM12925final = m12925final(i);
            if (materialButtonM12925final.isChecked()) {
                arrayList.add(Integer.valueOf(materialButtonM12925final.getId()));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f11513case;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m12941import() {
        return this.f11520this;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m12942native() {
        return this.f11517goto;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f11512break;
        if (i != -1) {
            m12919break(i, true);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, m12942native() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m12940extends();
        m12924else();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.removeOnCheckedChangeListener(this.f11518if);
            materialButton.setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f11514do.remove(iIndexOfChild);
        }
        m12940extends();
        m12924else();
    }

    public void removeOnButtonCheckedListener(@NonNull OnButtonCheckedListener onButtonCheckedListener) {
        this.f11519new.remove(onButtonCheckedListener);
    }

    public void setSelectionRequired(boolean z) {
        this.f11520this = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.f11517goto != z) {
            this.f11517goto = z;
            m12938catch();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m12943static(@IdRes int i) {
        m12919break(i, false);
    }

    /* renamed from: this, reason: not valid java name */
    public void m12944this(@IdRes int i) {
        if (i == this.f11512break) {
            return;
        }
        m12919break(i, true);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f11511class;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11514do = new ArrayList();
        Cdo cdo = null;
        this.f11518if = new Cfor(this, cdo);
        this.f11516for = new Ctry(this, cdo);
        this.f11519new = new LinkedHashSet<>();
        this.f11521try = new Cdo();
        this.f11515else = false;
        TypedArray typedArrayM4267break = k62.m4267break(getContext(), attributeSet, R.styleable.MaterialButtonToggleGroup, i, i2, new int[0]);
        setSingleSelection(typedArrayM4267break.getBoolean(R.styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f11512break = typedArrayM4267break.getResourceId(R.styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f11520this = typedArrayM4267break.getBoolean(R.styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        typedArrayM4267break.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}

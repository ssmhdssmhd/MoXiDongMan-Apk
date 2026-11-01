package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;

/* loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {

    /* renamed from: do, reason: not valid java name */
    private final Calendar f11734do;

    /* renamed from: if, reason: not valid java name */
    private final boolean f11735if;

    /* renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$do, reason: invalid class name */
    public class Cdo extends AccessibilityDelegateCompat {
        public Cdo() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m13167do(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter().m13306this());
        } else if (i == 130) {
            setSelection(getAdapter().m13304if());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static int m13168for(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m13169new(@Nullable Long l, @Nullable Long l2, @Nullable Long l3, @Nullable Long l4) {
        return l == null || l2 == null || l3 == null || l4 == null || l3.longValue() > l2.longValue() || l4.longValue() < l.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Ccase getAdapter() {
        return (Ccase) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(@NonNull Canvas canvas) {
        int iM13300do;
        int iM13168for;
        int iM13300do2;
        int iM13168for2;
        int width;
        int i;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        Ccase adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.f11825if;
        Cif cif = adapter.f11826new;
        Long item = adapter.getItem(adapter.m13304if());
        Long item2 = adapter.getItem(adapter.m13306this());
        for (Pair<Long, Long> pair : dateSelector.getSelectedRanges()) {
            Long l = pair.first;
            if (l != null) {
                if (pair.second != null) {
                    long jLongValue = l.longValue();
                    long jLongValue2 = pair.second.longValue();
                    if (!m13169new(item, item2, Long.valueOf(jLongValue), Long.valueOf(jLongValue2))) {
                        boolean zM13610break = ViewUtils.m13610break(this);
                        if (jLongValue < item.longValue()) {
                            iM13300do = adapter.m13304if();
                            iM13168for = adapter.m13298case(iM13300do) ? 0 : !zM13610break ? materialCalendarGridView.getChildAt(iM13300do - 1).getRight() : materialCalendarGridView.getChildAt(iM13300do - 1).getLeft();
                        } else {
                            materialCalendarGridView.f11734do.setTimeInMillis(jLongValue);
                            iM13300do = adapter.m13300do(materialCalendarGridView.f11734do.get(5));
                            iM13168for = m13168for(materialCalendarGridView.getChildAt(iM13300do));
                        }
                        if (jLongValue2 > item2.longValue()) {
                            iM13300do2 = Math.min(adapter.m13306this(), getChildCount() - 1);
                            iM13168for2 = adapter.m13301else(iM13300do2) ? getWidth() : !zM13610break ? materialCalendarGridView.getChildAt(iM13300do2).getRight() : materialCalendarGridView.getChildAt(iM13300do2).getLeft();
                        } else {
                            materialCalendarGridView.f11734do.setTimeInMillis(jLongValue2);
                            iM13300do2 = adapter.m13300do(materialCalendarGridView.f11734do.get(5));
                            iM13168for2 = m13168for(materialCalendarGridView.getChildAt(iM13300do2));
                        }
                        int itemId = (int) adapter.getItemId(iM13300do);
                        int itemId2 = (int) adapter.getItemId(iM13300do2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt.getTop() + cif.f11849do.m13312try();
                            int bottom = childAt.getBottom() - cif.f11849do.m13310if();
                            if (zM13610break) {
                                int i2 = iM13300do2 > numColumns2 ? 0 : iM13168for2;
                                width = numColumns > iM13300do ? getWidth() : iM13168for;
                                i = i2;
                            } else {
                                i = numColumns > iM13300do ? 0 : iM13168for;
                                width = iM13300do2 > numColumns2 ? getWidth() : iM13168for2;
                            }
                            canvas.drawRect(i, top, width, bottom, cif.f11852goto);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter = adapter;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            m13167do(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().m13304if()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().m13304if());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f11735if) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().m13304if()) {
            super.setSelection(getAdapter().m13304if());
        } else {
            super.setSelection(i);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof Ccase)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), Ccase.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11734do = Cbreak.m13285static();
        if (MaterialDatePicker.m13188throws(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.f11735if = MaterialDatePicker.m13172default(getContext());
        ViewCompat.setAccessibilityDelegate(this, new Cdo());
    }
}

package com.qmuiteam.qmui.layout;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.qmuiteam.qmui.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class QMUIPriorityLinearLayout extends QMUILinearLayout {

    /* renamed from: for, reason: not valid java name */
    private ArrayList<View> f19022for;

    /* renamed from: new, reason: not valid java name */
    private ArrayList<View> f19023new;

    public QMUIPriorityLinearLayout(Context context) {
        super(context);
        this.f19022for = new ArrayList<>();
        this.f19023new = new ArrayList<>();
    }

    /* renamed from: case, reason: not valid java name */
    private void m23444case(int i, int i2) {
        int size = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i2);
        int visibleChildCount = getVisibleChildCount();
        if (mode == 0 || visibleChildCount == 0 || size <= 0) {
            return;
        }
        int iM23446try = m23446try(i, i2);
        if (iM23446try >= size) {
            Iterator<View> it = this.f19022for.iterator();
            while (it.hasNext()) {
                View next = it.next();
                Cdo cdo = (Cdo) next.getLayoutParams();
                next.measure(i, View.MeasureSpec.makeMeasureSpec(cdo.f19029if, Integer.MIN_VALUE));
                ((LinearLayout.LayoutParams) cdo).height = next.getMeasuredHeight();
            }
            Iterator<View> it2 = this.f19023new.iterator();
            while (it2.hasNext()) {
                ((LinearLayout.LayoutParams) ((Cdo) it2.next().getLayoutParams())).height = 0;
            }
            return;
        }
        int i3 = size - iM23446try;
        Iterator<View> it3 = this.f19022for.iterator();
        int iMin = 0;
        int measuredHeight = 0;
        while (it3.hasNext()) {
            View next2 = it3.next();
            Cdo cdo2 = (Cdo) next2.getLayoutParams();
            next2.measure(i, View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE));
            int i4 = ((LinearLayout.LayoutParams) cdo2).topMargin + ((LinearLayout.LayoutParams) cdo2).bottomMargin;
            measuredHeight += next2.getMeasuredHeight() + i4;
            iMin += Math.min(next2.getMeasuredHeight(), cdo2.f19029if) + i4;
        }
        if (iMin >= i3) {
            Iterator<View> it4 = this.f19022for.iterator();
            while (it4.hasNext()) {
                View next3 = it4.next();
                Cdo cdo3 = (Cdo) next3.getLayoutParams();
                ((LinearLayout.LayoutParams) cdo3).height = Math.min(next3.getMeasuredHeight(), cdo3.f19029if);
            }
            Iterator<View> it5 = this.f19023new.iterator();
            while (it5.hasNext()) {
                ((LinearLayout.LayoutParams) ((Cdo) it5.next().getLayoutParams())).height = 0;
            }
            return;
        }
        if (measuredHeight < i3) {
            if (this.f19023new.isEmpty()) {
                return;
            }
            m23448if(this.f19023new, i3 - measuredHeight);
            return;
        }
        Iterator<View> it6 = this.f19023new.iterator();
        while (it6.hasNext()) {
            ((LinearLayout.LayoutParams) ((Cdo) it6.next().getLayoutParams())).width = 0;
        }
        if (i3 >= measuredHeight || this.f19022for.isEmpty()) {
            return;
        }
        m23447for(this.f19022for, i3, measuredHeight);
    }

    private int getVisibleChildCount() {
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2).getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    private void m23445new(int i, int i2) {
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int mode = View.MeasureSpec.getMode(i);
        int visibleChildCount = getVisibleChildCount();
        if (mode == 0 || visibleChildCount == 0 || size <= 0) {
            return;
        }
        int iM23446try = m23446try(i, i2);
        if (iM23446try >= size) {
            Iterator<View> it = this.f19022for.iterator();
            while (it.hasNext()) {
                View next = it.next();
                Cdo cdo = (Cdo) next.getLayoutParams();
                next.measure(View.MeasureSpec.makeMeasureSpec(cdo.f19029if, Integer.MIN_VALUE), i2);
                ((LinearLayout.LayoutParams) cdo).width = next.getMeasuredWidth();
            }
            Iterator<View> it2 = this.f19023new.iterator();
            while (it2.hasNext()) {
                ((LinearLayout.LayoutParams) ((Cdo) it2.next().getLayoutParams())).width = 0;
            }
            return;
        }
        int i3 = size - iM23446try;
        Iterator<View> it3 = this.f19022for.iterator();
        int iMin = 0;
        int measuredWidth = 0;
        while (it3.hasNext()) {
            View next2 = it3.next();
            Cdo cdo2 = (Cdo) next2.getLayoutParams();
            next2.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), i2);
            int i4 = ((LinearLayout.LayoutParams) cdo2).leftMargin + ((LinearLayout.LayoutParams) cdo2).rightMargin;
            measuredWidth += next2.getMeasuredWidth() + i4;
            iMin += Math.min(next2.getMeasuredWidth(), cdo2.f19029if) + i4;
        }
        if (iMin >= i3) {
            Iterator<View> it4 = this.f19022for.iterator();
            while (it4.hasNext()) {
                View next3 = it4.next();
                Cdo cdo3 = (Cdo) next3.getLayoutParams();
                ((LinearLayout.LayoutParams) cdo3).width = Math.min(next3.getMeasuredWidth(), cdo3.f19029if);
            }
            Iterator<View> it5 = this.f19023new.iterator();
            while (it5.hasNext()) {
                ((LinearLayout.LayoutParams) ((Cdo) it5.next().getLayoutParams())).width = 0;
            }
            return;
        }
        if (measuredWidth < i3) {
            if (this.f19023new.isEmpty()) {
                return;
            }
            m23448if(this.f19023new, i3 - measuredWidth);
            return;
        }
        Iterator<View> it6 = this.f19023new.iterator();
        while (it6.hasNext()) {
            ((LinearLayout.LayoutParams) ((Cdo) it6.next().getLayoutParams())).width = 0;
        }
        if (i3 >= measuredWidth || this.f19022for.isEmpty()) {
            return;
        }
        m23447for(this.f19022for, i3, measuredWidth);
    }

    /* renamed from: try, reason: not valid java name */
    private int m23446try(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int measuredHeight;
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        this.f19022for.clear();
        this.f19023new.clear();
        int orientation = getOrientation();
        int i6 = 0;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                Cdo cdo = (Cdo) childAt.getLayoutParams();
                cdo.m23449do();
                int iM23451if = cdo.m23451if(orientation);
                if (orientation == 0) {
                    i3 = ((LinearLayout.LayoutParams) cdo).leftMargin;
                    i4 = ((LinearLayout.LayoutParams) cdo).rightMargin;
                } else {
                    i3 = ((LinearLayout.LayoutParams) cdo).topMargin;
                    i4 = ((LinearLayout.LayoutParams) cdo).bottomMargin;
                }
                int i8 = i3 + i4;
                if (iM23451if == 3) {
                    if (orientation == 0) {
                        i5 = ((LinearLayout.LayoutParams) cdo).width;
                        if (i5 < 0) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), i2);
                            measuredHeight = childAt.getMeasuredWidth();
                            i6 += measuredHeight + i8;
                        }
                        i6 += i5 + i8;
                    } else {
                        i5 = ((LinearLayout.LayoutParams) cdo).height;
                        if (i5 < 0) {
                            childAt.measure(i, View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE));
                            measuredHeight = childAt.getMeasuredHeight();
                            i6 += measuredHeight + i8;
                        }
                        i6 += i5 + i8;
                    }
                } else if (iM23451if == 2) {
                    this.f19022for.add(childAt);
                } else if (((LinearLayout.LayoutParams) cdo).weight == 0.0f) {
                    this.f19023new.add(childAt);
                }
            }
        }
        return i6;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof Cdo) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: for, reason: not valid java name */
    public void m23447for(ArrayList<View> arrayList, int i, int i2) {
        int i3 = i2 - i;
        if (i3 > 0) {
            Iterator<View> it = arrayList.iterator();
            while (it.hasNext()) {
                Cdo cdo = (Cdo) it.next().getLayoutParams();
                if (getOrientation() == 0) {
                    ((LinearLayout.LayoutParams) cdo).width = Math.max(0, (int) (r0.getMeasuredWidth() - (i3 * ((((r0.getMeasuredWidth() + ((LinearLayout.LayoutParams) cdo).leftMargin) + ((LinearLayout.LayoutParams) cdo).rightMargin) * 1.0f) / i2))));
                } else {
                    ((LinearLayout.LayoutParams) cdo).height = Math.max(0, (int) (r0.getMeasuredHeight() - (i3 * ((((r0.getMeasuredHeight() + ((LinearLayout.LayoutParams) cdo).topMargin) + ((LinearLayout.LayoutParams) cdo).bottomMargin) * 1.0f) / i2))));
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m23448if(ArrayList<View> arrayList, int i) {
        int i2;
        int i3;
        Iterator<View> it = arrayList.iterator();
        while (it.hasNext()) {
            Cdo cdo = (Cdo) it.next().getLayoutParams();
            if (getOrientation() == 0) {
                i2 = ((LinearLayout.LayoutParams) cdo).leftMargin;
                i3 = ((LinearLayout.LayoutParams) cdo).rightMargin;
            } else {
                i2 = ((LinearLayout.LayoutParams) cdo).topMargin;
                i3 = ((LinearLayout.LayoutParams) cdo).bottomMargin;
            }
            i -= i2 - i3;
        }
        int iMax = Math.max(0, i / arrayList.size());
        Iterator<View> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Cdo cdo2 = (Cdo) it2.next().getLayoutParams();
            if (getOrientation() == 0) {
                ((LinearLayout.LayoutParams) cdo2).width = iMax;
            } else {
                ((LinearLayout.LayoutParams) cdo2).height = iMax;
            }
        }
    }

    @Override // com.qmuiteam.qmui.layout.QMUILinearLayout, android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (getOrientation() == 0) {
            m23445new(i, i2);
        } else {
            m23444case(i, i2);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new Cdo(-2, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cdo(layoutParams);
    }

    public QMUIPriorityLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19022for = new ArrayList<>();
        this.f19023new = new ArrayList<>();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cdo(getContext(), attributeSet);
    }

    /* renamed from: com.qmuiteam.qmui.layout.QMUIPriorityLinearLayout$do, reason: invalid class name */
    public static class Cdo extends LinearLayout.LayoutParams {

        /* renamed from: case, reason: not valid java name */
        public static final int f19024case = 2;

        /* renamed from: else, reason: not valid java name */
        public static final int f19025else = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f19026try = 1;

        /* renamed from: do, reason: not valid java name */
        private int f19027do;

        /* renamed from: for, reason: not valid java name */
        private int f19028for;

        /* renamed from: if, reason: not valid java name */
        public int f19029if;

        /* renamed from: new, reason: not valid java name */
        private int f19030new;

        public Cdo(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19027do = 2;
            this.f19029if = 0;
            this.f19028for = Integer.MIN_VALUE;
            this.f19030new = Integer.MIN_VALUE;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIPriorityLinearLayout_Layout);
            this.f19027do = typedArrayObtainStyledAttributes.getInteger(R.styleable.QMUIPriorityLinearLayout_Layout_qmui_layout_priority, 2);
            this.f19029if = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIPriorityLinearLayout_Layout_qmui_layout_miniContentProtectionSize, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        /* renamed from: do, reason: not valid java name */
        public void m23449do() {
            int i = this.f19028for;
            if (i == Integer.MIN_VALUE) {
                this.f19028for = ((LinearLayout.LayoutParams) this).width;
            } else {
                ((LinearLayout.LayoutParams) this).width = i;
            }
            int i2 = this.f19030new;
            if (i2 == Integer.MIN_VALUE) {
                this.f19030new = ((LinearLayout.LayoutParams) this).height;
            } else {
                ((LinearLayout.LayoutParams) this).height = i2;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m23450for(int i) {
            this.f19027do = i;
        }

        /* renamed from: if, reason: not valid java name */
        public int m23451if(int i) {
            if (((LinearLayout.LayoutParams) this).weight > 0.0f) {
                return 1;
            }
            if (i == 0) {
                if (((LinearLayout.LayoutParams) this).width >= 0) {
                    return 3;
                }
            } else if (((LinearLayout.LayoutParams) this).height >= 0) {
                return 3;
            }
            return this.f19027do;
        }

        public Cdo(int i, int i2) {
            super(i, i2);
            this.f19027do = 2;
            this.f19029if = 0;
            this.f19028for = Integer.MIN_VALUE;
            this.f19030new = Integer.MIN_VALUE;
        }

        public Cdo(int i, int i2, float f) {
            super(i, i2, f);
            this.f19027do = 2;
            this.f19029if = 0;
            this.f19028for = Integer.MIN_VALUE;
            this.f19030new = Integer.MIN_VALUE;
        }

        public Cdo(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19027do = 2;
            this.f19029if = 0;
            this.f19028for = Integer.MIN_VALUE;
            this.f19030new = Integer.MIN_VALUE;
        }

        public Cdo(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19027do = 2;
            this.f19029if = 0;
            this.f19028for = Integer.MIN_VALUE;
            this.f19030new = Integer.MIN_VALUE;
        }

        @TargetApi(19)
        public Cdo(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19027do = 2;
            this.f19029if = 0;
            this.f19028for = Integer.MIN_VALUE;
            this.f19030new = Integer.MIN_VALUE;
        }
    }
}

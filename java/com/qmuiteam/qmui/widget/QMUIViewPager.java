package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.qmuiteam.qmui.util.Cnew;

/* loaded from: classes2.dex */
public class QMUIViewPager extends ViewPager implements IWindowInsetLayout {

    /* renamed from: case, reason: not valid java name */
    private static final int f19638case = 100;

    /* renamed from: do, reason: not valid java name */
    private boolean f19639do;

    /* renamed from: for, reason: not valid java name */
    private Cnew f19640for;

    /* renamed from: if, reason: not valid java name */
    private boolean f19641if;

    /* renamed from: new, reason: not valid java name */
    private boolean f19642new;

    /* renamed from: try, reason: not valid java name */
    private int f19643try;

    /* renamed from: com.qmuiteam.qmui.widget.QMUIViewPager$do, reason: invalid class name */
    public class Cdo extends PagerAdapter {

        /* renamed from: do, reason: not valid java name */
        private QMUIPagerAdapter f19644do;

        public Cdo(QMUIPagerAdapter qMUIPagerAdapter) {
            this.f19644do = qMUIPagerAdapter;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            if (QMUIViewPager.this.f19642new && this.f19644do.getCount() != 0) {
                i %= this.f19644do.getCount();
            }
            this.f19644do.destroyItem(viewGroup, i, obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void finishUpdate(ViewGroup viewGroup) {
            this.f19644do.finishUpdate(viewGroup);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            int count = this.f19644do.getCount();
            return (!QMUIViewPager.this.f19642new || count <= 3) ? count : count * QMUIViewPager.this.f19643try;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return this.f19644do.getItemPosition(obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return this.f19644do.getPageTitle(i % this.f19644do.getCount());
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public float getPageWidth(int i) {
            return this.f19644do.getPageWidth(i);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            if (QMUIViewPager.this.f19642new && this.f19644do.getCount() != 0) {
                i %= this.f19644do.getCount();
            }
            return this.f19644do.instantiateItem(viewGroup, i);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return this.f19644do.isViewFromObject(view, obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            this.f19644do.notifyDataSetChanged();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void registerDataSetObserver(@NonNull DataSetObserver dataSetObserver) {
            this.f19644do.registerDataSetObserver(dataSetObserver);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
            this.f19644do.restoreState(parcelable, classLoader);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Parcelable saveState() {
            return this.f19644do.saveState();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
            this.f19644do.setPrimaryItem(viewGroup, i, obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void startUpdate(ViewGroup viewGroup) {
            this.f19644do.startUpdate(viewGroup);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void unregisterDataSetObserver(@NonNull DataSetObserver dataSetObserver) {
            this.f19644do.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public QMUIViewPager(Context context) {
        this(context, null);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        ViewCompat.requestApplyInsets(this);
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets19(Rect rect) {
        return this.f19640for.m23693else(this, rect);
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets21(Object obj) {
        return this.f19640for.m23695goto(this, obj);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        int i = Build.VERSION.SDK_INT;
        return (i < 19 || i >= 21) ? super.fitSystemWindows(rect) : applySystemWindowInsets19(rect);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m23926for() {
        return this.f19642new;
    }

    public int getInfiniteRatio() {
        return this.f19643try;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m23927new() {
        return this.f19641if;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f19639do && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i, int i2) throws Resources.NotFoundException {
        this.f19641if = true;
        super.onMeasure(i, i2);
        this.f19641if = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f19639do && super.onTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) throws Resources.NotFoundException {
        if (pagerAdapter instanceof QMUIPagerAdapter) {
            super.setAdapter(new Cdo((QMUIPagerAdapter) pagerAdapter));
        } else {
            super.setAdapter(pagerAdapter);
        }
    }

    public void setEnableLoop(boolean z) {
        if (this.f19642new != z) {
            this.f19642new = z;
            if (getAdapter() != null) {
                getAdapter().notifyDataSetChanged();
            }
        }
    }

    public void setInfiniteRatio(int i) {
        this.f19643try = i;
    }

    public void setSwipeable(boolean z) {
        this.f19639do = z;
    }

    public QMUIViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19639do = true;
        this.f19641if = false;
        this.f19642new = false;
        this.f19643try = 100;
        this.f19640for = new Cnew(this, this);
    }
}

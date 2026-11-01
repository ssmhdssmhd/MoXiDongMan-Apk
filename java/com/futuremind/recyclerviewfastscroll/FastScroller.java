package com.futuremind.recyclerviewfastscroll;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.ms1;
import android.support.v4.pd2;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.RecyclerViewScrollListener;

/* loaded from: classes.dex */
public class FastScroller extends LinearLayout {

    /* renamed from: super, reason: not valid java name */
    private static final int f10900super = -1;

    /* renamed from: break, reason: not valid java name */
    private int f10901break;

    /* renamed from: case, reason: not valid java name */
    private int f10902case;

    /* renamed from: catch, reason: not valid java name */
    private int f10903catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f10904class;

    /* renamed from: const, reason: not valid java name */
    private ms1 f10905const;

    /* renamed from: do, reason: not valid java name */
    private final RecyclerViewScrollListener f10906do;

    /* renamed from: else, reason: not valid java name */
    private int f10907else;

    /* renamed from: final, reason: not valid java name */
    private SectionTitleProvider f10908final;

    /* renamed from: for, reason: not valid java name */
    private View f10909for;

    /* renamed from: goto, reason: not valid java name */
    private int f10910goto;

    /* renamed from: if, reason: not valid java name */
    private RecyclerView f10911if;

    /* renamed from: new, reason: not valid java name */
    private View f10912new;

    /* renamed from: this, reason: not valid java name */
    private int f10913this;

    /* renamed from: try, reason: not valid java name */
    private TextView f10914try;

    /* renamed from: com.futuremind.recyclerviewfastscroll.FastScroller$do, reason: invalid class name */
    public class Cdo implements ViewGroup.OnHierarchyChangeListener {
        public Cdo() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            FastScroller.this.m12330catch();
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            FastScroller.this.m12330catch();
        }
    }

    /* renamed from: com.futuremind.recyclerviewfastscroll.FastScroller$if, reason: invalid class name */
    public class Cif implements View.OnTouchListener {
        public Cif() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            FastScroller.this.requestDisallowInterceptTouchEvent(true);
            if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                FastScroller.this.f10904class = false;
                if (FastScroller.this.f10908final != null) {
                    FastScroller.this.f10905const.onHandleReleased();
                }
                return true;
            }
            if (FastScroller.this.f10908final != null && motionEvent.getAction() == 0) {
                FastScroller.this.f10905const.onHandleGrabbed();
            }
            FastScroller.this.f10904class = true;
            float fM12338this = FastScroller.this.m12338this(motionEvent);
            FastScroller.this.setScrollerPosition(fM12338this);
            FastScroller.this.setRecyclerViewPosition(fM12338this);
            return true;
        }
    }

    public FastScroller(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m12328break() {
        this.f10912new.setOnTouchListener(new Cif());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m12330catch() {
        if (this.f10911if.getAdapter() == null || this.f10911if.getAdapter().getItemCount() == 0 || this.f10911if.getChildAt(0) == null || m12331class() || this.f10903catch != 0) {
            super.setVisibility(4);
        } else {
            super.setVisibility(0);
        }
    }

    /* renamed from: class, reason: not valid java name */
    private boolean m12331class() {
        return m12340const() ? this.f10911if.getChildAt(0).getHeight() * this.f10911if.getAdapter().getItemCount() <= this.f10911if.getHeight() : this.f10911if.getChildAt(0).getWidth() * this.f10911if.getAdapter().getItemCount() <= this.f10911if.getWidth();
    }

    /* renamed from: final, reason: not valid java name */
    private void m12333final(View view, int i) {
        Drawable drawableWrap = DrawableCompat.wrap(view.getBackground());
        if (drawableWrap == null) {
            return;
        }
        DrawableCompat.setTint(drawableWrap.mutate(), i);
        pd2.m5953new(view, drawableWrap);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m12335goto() {
        int i = this.f10910goto;
        if (i != -1) {
            m12333final(this.f10914try, i);
        }
        int i2 = this.f10907else;
        if (i2 != -1) {
            m12333final(this.f10912new, i2);
        }
        int i3 = this.f10913this;
        if (i3 != -1) {
            TextViewCompat.setTextAppearance(this.f10914try, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecyclerViewPosition(float f) {
        TextView textView;
        RecyclerView recyclerView = this.f10911if;
        if (recyclerView == null) {
            return;
        }
        int itemCount = recyclerView.getAdapter().getItemCount();
        int iM5950do = (int) pd2.m5950do(0.0f, itemCount - 1, (int) (f * itemCount));
        this.f10911if.scrollToPosition(iM5950do);
        SectionTitleProvider sectionTitleProvider = this.f10908final;
        if (sectionTitleProvider == null || (textView = this.f10914try) == null) {
            return;
        }
        textView.setText(sectionTitleProvider.getSectionTitle(iM5950do));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public float m12338this(MotionEvent motionEvent) {
        float rawX;
        int width;
        int width2;
        if (m12340const()) {
            rawX = motionEvent.getRawY() - pd2.m5951for(this.f10912new);
            width = getHeight();
            width2 = this.f10912new.getHeight();
        } else {
            rawX = motionEvent.getRawX() - pd2.m5952if(this.f10912new);
            width = getWidth();
            width2 = this.f10912new.getWidth();
        }
        return rawX / (width - width2);
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m12340const() {
        return this.f10901break == 1;
    }

    /* renamed from: else, reason: not valid java name */
    public void m12341else(RecyclerViewScrollListener.ScrollerListener scrollerListener) {
        this.f10906do.m12343do(scrollerListener);
    }

    public ms1 getViewProvider() {
        return this.f10905const;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m12328break();
        this.f10902case = this.f10905const.getBubbleOffset();
        m12335goto();
        this.f10906do.m12344for(this.f10911if);
    }

    public void setBubbleColor(int i) {
        this.f10910goto = i;
        invalidate();
    }

    public void setBubbleTextAppearance(int i) {
        this.f10913this = i;
        invalidate();
    }

    public void setHandleColor(int i) {
        this.f10907else = i;
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        this.f10901break = i;
        super.setOrientation(i == 0 ? 1 : 0);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.f10911if = recyclerView;
        if (recyclerView.getAdapter() instanceof SectionTitleProvider) {
            this.f10908final = (SectionTitleProvider) recyclerView.getAdapter();
        }
        recyclerView.addOnScrollListener(this.f10906do);
        m12330catch();
        recyclerView.setOnHierarchyChangeListener(new Cdo());
    }

    public void setScrollerPosition(float f) {
        if (m12340const()) {
            this.f10909for.setY(pd2.m5950do(0.0f, getHeight() - this.f10909for.getHeight(), ((getHeight() - this.f10912new.getHeight()) * f) + this.f10902case));
            this.f10912new.setY(pd2.m5950do(0.0f, getHeight() - this.f10912new.getHeight(), f * (getHeight() - this.f10912new.getHeight())));
        } else {
            this.f10909for.setX(pd2.m5950do(0.0f, getWidth() - this.f10909for.getWidth(), ((getWidth() - this.f10912new.getWidth()) * f) + this.f10902case));
            this.f10912new.setX(pd2.m5950do(0.0f, getWidth() - this.f10912new.getWidth(), f * (getWidth() - this.f10912new.getWidth())));
        }
    }

    public void setViewProvider(ms1 ms1Var) {
        removeAllViews();
        this.f10905const = ms1Var;
        ms1Var.setFastScroller(this);
        this.f10909for = ms1Var.provideBubbleView(this);
        this.f10912new = ms1Var.provideHandleView(this);
        this.f10914try = ms1Var.provideBubbleTextView();
        addView(this.f10909for);
        addView(this.f10912new);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        this.f10903catch = i;
        m12330catch();
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m12342super() {
        return (this.f10912new == null || this.f10904class || this.f10911if.getChildCount() <= 0) ? false : true;
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10906do = new RecyclerViewScrollListener(this);
        setClipChildren(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.fastscroll__fastScroller, R.attr.fastscroll__style, 0);
        try {
            this.f10910goto = typedArrayObtainStyledAttributes.getColor(R.styleable.fastscroll__fastScroller_fastscroll__bubbleColor, -1);
            this.f10907else = typedArrayObtainStyledAttributes.getColor(R.styleable.fastscroll__fastScroller_fastscroll__handleColor, -1);
            this.f10913this = typedArrayObtainStyledAttributes.getResourceId(R.styleable.fastscroll__fastScroller_fastscroll__bubbleTextAppearance, -1);
            typedArrayObtainStyledAttributes.recycle();
            this.f10903catch = getVisibility();
            setViewProvider(new com.futuremind.recyclerviewfastscroll.viewprovider.Cdo());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}

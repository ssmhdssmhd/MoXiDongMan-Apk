package com.qmuiteam.qmui.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.fh1;
import android.support.v4.ih1;
import android.support.v4.jh1;
import android.support.v4.kh1;
import android.support.v4.sh1;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.qmuiteam.qmui.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUITabSegment extends HorizontalScrollView {

    /* renamed from: abstract, reason: not valid java name */
    private static final String f19514abstract = "QMUITabSegment";

    /* renamed from: continue, reason: not valid java name */
    public static final int f19515continue = 0;

    /* renamed from: implements, reason: not valid java name */
    private static final int f19516implements = -1;

    /* renamed from: interface, reason: not valid java name */
    public static final int f19517interface = 1;

    /* renamed from: protected, reason: not valid java name */
    public static final int f19518protected = 2;

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f19519strictfp = 1;

    /* renamed from: transient, reason: not valid java name */
    public static final int f19520transient = 3;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f19521volatile = 0;

    /* renamed from: break, reason: not valid java name */
    private boolean f19522break;

    /* renamed from: case, reason: not valid java name */
    private boolean f19523case;

    /* renamed from: catch, reason: not valid java name */
    private Rect f19524catch;

    /* renamed from: class, reason: not valid java name */
    private Paint f19525class;

    /* renamed from: const, reason: not valid java name */
    private int f19526const;

    /* renamed from: default, reason: not valid java name */
    private DataSetObserver f19527default;

    /* renamed from: do, reason: not valid java name */
    private final ArrayList<OnTabSelectedListener> f19528do;

    /* renamed from: else, reason: not valid java name */
    private int f19529else;

    /* renamed from: extends, reason: not valid java name */
    private ViewPager.OnPageChangeListener f19530extends;

    /* renamed from: final, reason: not valid java name */
    private int f19531final;

    /* renamed from: finally, reason: not valid java name */
    private OnTabSelectedListener f19532finally;

    /* renamed from: for, reason: not valid java name */
    private int f19533for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f19534goto;

    /* renamed from: if, reason: not valid java name */
    private Ctry f19535if;

    /* renamed from: import, reason: not valid java name */
    private TypefaceProvider f19536import;

    /* renamed from: native, reason: not valid java name */
    private int f19537native;

    /* renamed from: new, reason: not valid java name */
    private int f19538new;

    /* renamed from: package, reason: not valid java name */
    private Cnew f19539package;

    /* renamed from: private, reason: not valid java name */
    private boolean f19540private;

    /* renamed from: public, reason: not valid java name */
    private Animator f19541public;

    /* renamed from: return, reason: not valid java name */
    private OnTabClickListener f19542return;

    /* renamed from: static, reason: not valid java name */
    public View.OnClickListener f19543static;

    /* renamed from: super, reason: not valid java name */
    private int f19544super;

    /* renamed from: switch, reason: not valid java name */
    private ViewPager f19545switch;

    /* renamed from: this, reason: not valid java name */
    private Drawable f19546this;

    /* renamed from: throw, reason: not valid java name */
    private int f19547throw;

    /* renamed from: throws, reason: not valid java name */
    private PagerAdapter f19548throws;

    /* renamed from: try, reason: not valid java name */
    private int f19549try;

    /* renamed from: while, reason: not valid java name */
    private int f19550while;

    public interface OnTabClickListener {
        void onTabClick(int i);
    }

    public interface OnTabSelectedListener {
        void onDoubleTap(int i);

        void onTabReselected(int i);

        void onTabSelected(int i);

        void onTabUnselected(int i);
    }

    public class TabItemView extends RelativeLayout {

        /* renamed from: do, reason: not valid java name */
        private AppCompatTextView f19551do;

        /* renamed from: if, reason: not valid java name */
        private GestureDetector f19553if;

        /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$TabItemView$do, reason: invalid class name */
        public class Cdo extends GestureDetector.SimpleOnGestureListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ QMUITabSegment f19554do;

            public Cdo(QMUITabSegment qMUITabSegment) {
                this.f19554do = qMUITabSegment;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (QMUITabSegment.this.f19528do.isEmpty()) {
                    return false;
                }
                int iIntValue = ((Integer) TabItemView.this.getTag()).intValue();
                if (QMUITabSegment.this.getAdapter().m24063case(iIntValue) == null) {
                    return false;
                }
                QMUITabSegment.this.m23806instanceof(iIntValue);
                return true;
            }
        }

        public TabItemView(Context context) {
            super(context);
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f19551do = appCompatTextView;
            appCompatTextView.setSingleLine(true);
            this.f19551do.setGravity(17);
            this.f19551do.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            this.f19551do.setId(R.id.qmui_tab_segment_item_id);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15, -1);
            addView(this.f19551do, layoutParams);
            this.f19553if = new GestureDetector(getContext(), new Cdo(QMUITabSegment.this));
        }

        /* renamed from: do, reason: not valid java name */
        public void m23827do(Cthis cthis, int i) {
            Drawable drawable;
            this.f19551do.setTextColor(i);
            if (!cthis.m23851extends() || (drawable = this.f19551do.getCompoundDrawables()[QMUITabSegment.this.f(cthis)]) == null) {
                return;
            }
            jh1.m3890break(drawable, i);
            QMUITabSegment qMUITabSegment = QMUITabSegment.this;
            qMUITabSegment.t(this.f19551do, drawable, qMUITabSegment.f(cthis));
        }

        public TextView getTextView() {
            return this.f19551do;
        }

        /* renamed from: if, reason: not valid java name */
        public void m23828if(Cthis cthis, boolean z) {
            QMUITabSegment qMUITabSegment = QMUITabSegment.this;
            int iH = z ? qMUITabSegment.h(cthis) : qMUITabSegment.g(cthis);
            this.f19551do.setTextColor(iH);
            Drawable drawableM23854import = cthis.m23854import();
            if (z) {
                if (cthis.m23851extends()) {
                    if (drawableM23854import != null) {
                        drawableM23854import = drawableM23854import.mutate();
                        jh1.m3890break(drawableM23854import, iH);
                    }
                } else if (cthis.m23860return() != null) {
                    drawableM23854import = cthis.m23860return();
                }
            }
            if (drawableM23854import == null) {
                this.f19551do.setCompoundDrawablePadding(0);
                this.f19551do.setCompoundDrawables(null, null, null, null);
            } else {
                this.f19551do.setCompoundDrawablePadding(ih1.m3450new(getContext(), 4));
                QMUITabSegment qMUITabSegment2 = QMUITabSegment.this;
                qMUITabSegment2.t(this.f19551do, drawableM23854import, qMUITabSegment2.f(cthis));
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.f19553if.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
        }
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<QMUITabSegment> f19556do;

        public TabLayoutOnPageChangeListener(QMUITabSegment qMUITabSegment) {
            this.f19556do = new WeakReference<>(qMUITabSegment);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            QMUITabSegment qMUITabSegment = this.f19556do.get();
            if (qMUITabSegment != null) {
                qMUITabSegment.setViewPagerScrollState(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            QMUITabSegment qMUITabSegment = this.f19556do.get();
            if (qMUITabSegment != null) {
                qMUITabSegment.z(i, f);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            QMUITabSegment qMUITabSegment = this.f19556do.get();
            if (qMUITabSegment != null && qMUITabSegment.f19538new != -1) {
                qMUITabSegment.f19538new = i;
            } else {
                if (qMUITabSegment == null || qMUITabSegment.getSelectedIndex() == i || i >= qMUITabSegment.getTabCount()) {
                    return;
                }
                qMUITabSegment.s(i, true, false);
            }
        }
    }

    public interface TypefaceProvider {
        @Nullable
        Typeface getTypeface();

        boolean isNormalTabBold();

        boolean isSelectedTabBold();
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$break, reason: invalid class name */
    public class Cbreak extends com.qmuiteam.qmui.widget.Cdo<Cthis, TabItemView> {
        public Cbreak(ViewGroup viewGroup) {
            super(viewGroup);
        }

        @Override // com.qmuiteam.qmui.widget.Cdo
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public void mo23831if(Cthis cthis, TabItemView tabItemView, int i) {
            TextView textView = tabItemView.getTextView();
            QMUITabSegment qMUITabSegment = QMUITabSegment.this;
            qMUITabSegment.v(textView, qMUITabSegment.f19533for == i);
            List<View> listM23848const = cthis.m23848const();
            if (listM23848const != null && listM23848const.size() > 0) {
                tabItemView.setTag(R.id.qmui_view_can_not_cache_tag, Boolean.TRUE);
                for (View view : listM23848const) {
                    if (view.getParent() == null) {
                        tabItemView.addView(view);
                    }
                }
            }
            if (QMUITabSegment.this.f19547throw == 1) {
                int iM23863super = cthis.m23863super();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
                layoutParams.addRule(9, (iM23863super & 3) == 3 ? -1 : 0);
                layoutParams.addRule(14, (iM23863super & 17) == 17 ? -1 : 0);
                layoutParams.addRule(11, (iM23863super & 5) != 5 ? 0 : -1);
                textView.setLayoutParams(layoutParams);
            }
            textView.setText(cthis.m23864switch());
            textView.setTextSize(0, QMUITabSegment.this.i(cthis));
            tabItemView.m23828if(cthis, QMUITabSegment.this.f19533for == i);
            tabItemView.setTag(Integer.valueOf(i));
            tabItemView.setOnClickListener(QMUITabSegment.this.f19543static);
        }

        @Override // com.qmuiteam.qmui.widget.Cdo
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public TabItemView mo23832new(ViewGroup viewGroup) {
            QMUITabSegment qMUITabSegment = QMUITabSegment.this;
            return qMUITabSegment.new TabItemView(qMUITabSegment.getContext());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$case, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Ccase {
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$catch, reason: invalid class name */
    public static class Ccatch implements OnTabSelectedListener {

        /* renamed from: do, reason: not valid java name */
        private final ViewPager f19558do;

        public Ccatch(ViewPager viewPager) {
            this.f19558do = viewPager;
        }

        @Override // com.qmuiteam.qmui.widget.QMUITabSegment.OnTabSelectedListener
        public void onDoubleTap(int i) {
        }

        @Override // com.qmuiteam.qmui.widget.QMUITabSegment.OnTabSelectedListener
        public void onTabReselected(int i) {
        }

        @Override // com.qmuiteam.qmui.widget.QMUITabSegment.OnTabSelectedListener
        public void onTabSelected(int i) throws Resources.NotFoundException {
            this.f19558do.setCurrentItem(i, false);
        }

        @Override // com.qmuiteam.qmui.widget.QMUITabSegment.OnTabSelectedListener
        public void onTabUnselected(int i) {
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (QMUITabSegment.this.f19541public == null && QMUITabSegment.this.f19537native == 0) {
                int iIntValue = ((Integer) view.getTag()).intValue();
                Cthis cthisM24063case = QMUITabSegment.this.getAdapter().m24063case(iIntValue);
                if (cthisM24063case != null) {
                    QMUITabSegment qMUITabSegment = QMUITabSegment.this;
                    qMUITabSegment.s(iIntValue, (qMUITabSegment.f19523case || cthisM24063case.m23851extends()) ? false : true, true);
                }
                if (QMUITabSegment.this.f19542return != null) {
                    QMUITabSegment.this.f19542return.onTabClick(iIntValue);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$else, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Celse {
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$for, reason: invalid class name */
    public class Cfor implements Animator.AnimatorListener {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ int f19560case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ TabItemView f19561do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ TabItemView f19563for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cthis f19564if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Cthis f19565new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ int f19566try;

        public Cfor(TabItemView tabItemView, Cthis cthis, TabItemView tabItemView2, Cthis cthis2, int i, int i2) {
            this.f19561do = tabItemView;
            this.f19564if = cthis;
            this.f19563for = tabItemView2;
            this.f19565new = cthis2;
            this.f19566try = i;
            this.f19560case = i2;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            QMUITabSegment.this.f19541public = null;
            this.f19561do.m23828if(this.f19564if, true);
            this.f19563for.m23828if(this.f19565new, false);
            QMUITabSegment.this.l(this.f19564if, true);
            QMUITabSegment.this.f19540private = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QMUITabSegment.this.f19541public = null;
            this.f19561do.m23828if(this.f19564if, false);
            this.f19563for.m23828if(this.f19565new, true);
            QMUITabSegment.this.a(this.f19566try);
            QMUITabSegment.this.b(this.f19560case);
            QMUITabSegment.this.v(this.f19561do.getTextView(), false);
            QMUITabSegment.this.v(this.f19563for.getTextView(), true);
            QMUITabSegment.this.f19533for = this.f19566try;
            QMUITabSegment.this.f19540private = false;
            if (QMUITabSegment.this.f19538new == -1 || QMUITabSegment.this.f19537native != 0) {
                return;
            }
            QMUITabSegment qMUITabSegment = QMUITabSegment.this;
            qMUITabSegment.s(qMUITabSegment.f19538new, true, false);
            QMUITabSegment.this.f19538new = -1;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            QMUITabSegment.this.f19541public = animator;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$goto, reason: invalid class name */
    public class Cgoto extends DataSetObserver {

        /* renamed from: do, reason: not valid java name */
        private final boolean f19567do;

        public Cgoto(boolean z) {
            this.f19567do = z;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            QMUITabSegment.this.o(this.f19567do);
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            QMUITabSegment.this.o(this.f19567do);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cthis f19569do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ TabItemView f19570for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cthis f19571if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ TabItemView f19572new;

        public Cif(Cthis cthis, Cthis cthis2, TabItemView tabItemView, TabItemView tabItemView2) {
            this.f19569do = cthis;
            this.f19571if = cthis2;
            this.f19570for = tabItemView;
            this.f19572new = tabItemView2;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int iM2284if = fh1.m2284if(QMUITabSegment.this.h(this.f19569do), QMUITabSegment.this.g(this.f19569do), fFloatValue);
            int iM2284if2 = fh1.m2284if(QMUITabSegment.this.g(this.f19571if), QMUITabSegment.this.h(this.f19571if), fFloatValue);
            this.f19570for.m23827do(this.f19569do, iM2284if);
            this.f19572new.m23827do(this.f19571if, iM2284if2);
            QMUITabSegment.this.m(this.f19569do, this.f19571if, fFloatValue);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$new, reason: invalid class name */
    public class Cnew implements ViewPager.OnAdapterChangeListener {

        /* renamed from: do, reason: not valid java name */
        private boolean f19574do;

        /* renamed from: if, reason: not valid java name */
        private final boolean f19576if;

        public Cnew(boolean z) {
            this.f19576if = z;
        }

        /* renamed from: do, reason: not valid java name */
        public void m23833do(boolean z) {
            this.f19574do = z;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            if (QMUITabSegment.this.f19545switch == viewPager) {
                QMUITabSegment.this.u(pagerAdapter2, this.f19576if, this.f19574do);
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$try, reason: invalid class name */
    public final class Ctry extends ViewGroup {

        /* renamed from: do, reason: not valid java name */
        private Cbreak f19598do;

        public Ctry(Context context) {
            super(context);
            this.f19598do = QMUITabSegment.this.new Cbreak(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (!QMUITabSegment.this.f19523case || QMUITabSegment.this.f19524catch == null) {
                return;
            }
            if (QMUITabSegment.this.f19534goto) {
                QMUITabSegment.this.f19524catch.top = getPaddingTop();
                QMUITabSegment.this.f19524catch.bottom = QMUITabSegment.this.f19524catch.top + QMUITabSegment.this.f19529else;
            } else {
                QMUITabSegment.this.f19524catch.bottom = getHeight() - getPaddingBottom();
                QMUITabSegment.this.f19524catch.top = QMUITabSegment.this.f19524catch.bottom - QMUITabSegment.this.f19529else;
            }
            if (QMUITabSegment.this.f19546this == null) {
                canvas.drawRect(QMUITabSegment.this.f19524catch, QMUITabSegment.this.f19525class);
            } else {
                QMUITabSegment.this.f19546this.setBounds(QMUITabSegment.this.f19524catch);
                QMUITabSegment.this.f19546this.draw(canvas);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cbreak m23871do() {
            return this.f19598do;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int left;
            int width;
            List<TabItemView> listM24068this = this.f19598do.m24068this();
            int size = listM24068this.size();
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                if (listM24068this.get(i6).getVisibility() == 0) {
                    i5++;
                }
            }
            if (size == 0 || i5 == 0) {
                return;
            }
            int paddingLeft = getPaddingLeft();
            for (int i7 = 0; i7 < size; i7++) {
                TabItemView tabItemView = listM24068this.get(i7);
                if (tabItemView.getVisibility() == 0) {
                    Cthis cthisM24063case = this.f19598do.m24063case(i7);
                    int measuredWidth = tabItemView.getMeasuredWidth();
                    tabItemView.layout(cthisM24063case.f19590native + paddingLeft, getPaddingTop(), cthisM24063case.f19590native + paddingLeft + measuredWidth + cthisM24063case.f19592public, (i4 - i2) - getPaddingBottom());
                    int iM23846catch = cthisM24063case.m23846catch();
                    int iM23847class = cthisM24063case.m23847class();
                    if (QMUITabSegment.this.f19547throw == 1 && QMUITabSegment.this.f19522break) {
                        TextView textView = tabItemView.getTextView();
                        left = textView.getLeft() + paddingLeft;
                        width = textView.getWidth();
                    } else {
                        left = paddingLeft + cthisM24063case.f19590native;
                        width = measuredWidth;
                    }
                    if (iM23846catch != left || iM23847class != width) {
                        cthisM24063case.m23852finally(left);
                        cthisM24063case.m23856package(width);
                    }
                    paddingLeft = paddingLeft + measuredWidth + cthisM24063case.f19590native + cthisM24063case.f19592public + (QMUITabSegment.this.f19547throw == 0 ? QMUITabSegment.this.f19550while : 0);
                }
            }
            if (QMUITabSegment.this.f19533for != -1 && QMUITabSegment.this.f19541public == null && QMUITabSegment.this.f19537native == 0) {
                QMUITabSegment qMUITabSegment = QMUITabSegment.this;
                qMUITabSegment.l(this.f19598do.m24063case(qMUITabSegment.f19533for), false);
            }
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            List<TabItemView> listM24068this = this.f19598do.m24068this();
            int size3 = listM24068this.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size3; i4++) {
                if (listM24068this.get(i4).getVisibility() == 0) {
                    i3++;
                }
            }
            if (size3 == 0 || i3 == 0) {
                setMeasuredDimension(size, size2);
                return;
            }
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            if (QMUITabSegment.this.f19547throw == 1) {
                int i5 = size / i3;
                for (int i6 = 0; i6 < size3; i6++) {
                    TabItemView tabItemView = listM24068this.get(i6);
                    if (tabItemView.getVisibility() == 0) {
                        tabItemView.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824));
                        Cthis cthisM24063case = this.f19598do.m24063case(i6);
                        cthisM24063case.f19590native = 0;
                        cthisM24063case.f19592public = 0;
                    }
                }
            } else {
                int measuredWidth = 0;
                float f = 0.0f;
                for (int i7 = 0; i7 < size3; i7++) {
                    TabItemView tabItemView2 = listM24068this.get(i7);
                    if (tabItemView2.getVisibility() == 0) {
                        tabItemView2.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(paddingTop, 1073741824));
                        measuredWidth += tabItemView2.getMeasuredWidth() + QMUITabSegment.this.f19550while;
                        Cthis cthisM24063case2 = this.f19598do.m24063case(i7);
                        f += cthisM24063case2.f19589import + cthisM24063case2.f19597while;
                        cthisM24063case2.f19590native = 0;
                        cthisM24063case2.f19592public = 0;
                    }
                }
                int i8 = measuredWidth - QMUITabSegment.this.f19550while;
                if (f <= 0.0f || i8 >= size) {
                    size = i8;
                } else {
                    int i9 = size - i8;
                    for (int i10 = 0; i10 < size3; i10++) {
                        if (listM24068this.get(i10).getVisibility() == 0) {
                            Cthis cthisM24063case3 = this.f19598do.m24063case(i10);
                            float f2 = i9;
                            cthisM24063case3.f19590native = (int) ((cthisM24063case3.f19589import * f2) / f);
                            cthisM24063case3.f19592public = (int) ((f2 * cthisM24063case3.f19597while) / f);
                        }
                    }
                }
            }
            setMeasuredDimension(size, size2);
        }
    }

    public QMUITabSegment(Context context) {
        this(context, (AttributeSet) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        for (int size = this.f19528do.size() - 1; size >= 0; size--) {
            this.f19528do.get(size).onTabSelected(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        for (int size = this.f19528do.size() - 1; size >= 0; size--) {
            this.f19528do.get(size).onTabUnselected(i);
        }
    }

    private String c(Context context, String str) {
        if (str.charAt(0) != '.') {
            return str;
        }
        return context.getPackageName() + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f(Cthis cthis) {
        int iM23866throw = cthis.m23866throw();
        return iM23866throw == Integer.MIN_VALUE ? this.f19544super : iM23866throw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g(Cthis cthis) {
        int iM23870while = cthis.m23870while();
        return iM23870while == Integer.MIN_VALUE ? this.f19526const : iM23870while;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Cbreak getAdapter() {
        return this.f19535if.m23871do();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTabCount() {
        return getAdapter().m24066else();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h(Cthis cthis) {
        int iM23859public = cthis.m23859public();
        return iM23859public == Integer.MIN_VALUE ? this.f19531final : iM23859public;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int i(Cthis cthis) {
        int iM23867throws = cthis.m23867throws();
        return iM23867throws == Integer.MIN_VALUE ? this.f19549try : iM23867throws;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m23804implements(Context context, String str) throws NoSuchMethodException, SecurityException {
        if (kh1.m4402case(str)) {
            return;
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return;
        }
        String strC = c(context, strTrim);
        try {
            try {
                Constructor constructor = (isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).loadClass(strC).asSubclass(TypefaceProvider.class).getConstructor(new Class[0]);
                constructor.setAccessible(true);
                this.f19536import = (TypefaceProvider) constructor.newInstance(new Object[0]);
            } catch (NoSuchMethodException e) {
                throw new IllegalStateException("Error creating TypefaceProvider " + strC, e);
            }
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Class is not a TypefaceProvider " + strC, e2);
        } catch (ClassNotFoundException e3) {
            throw new IllegalStateException("Unable to find TypefaceProvider " + strC, e3);
        } catch (IllegalAccessException e4) {
            throw new IllegalStateException("Cannot access non-public constructor " + strC, e4);
        } catch (InstantiationException e5) {
            throw new IllegalStateException("Could not instantiate the TypefaceProvider: " + strC, e5);
        } catch (InvocationTargetException e6) {
            throw new IllegalStateException("Could not instantiate the TypefaceProvider: " + strC, e6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public void m23806instanceof(int i) {
        for (int size = this.f19528do.size() - 1; size >= 0; size--) {
            this.f19528do.get(size).onDoubleTap(i);
        }
    }

    private void k(Context context, AttributeSet attributeSet, int i) throws NoSuchMethodException, SecurityException {
        this.f19531final = sh1.m7404if(context, R.attr.qmui_config_color_blue);
        this.f19526const = ContextCompat.getColor(context, R.color.qmui_config_color_gray_5);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUITabSegment, i, 0);
        this.f19523case = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUITabSegment_qmui_tab_has_indicator, true);
        this.f19529else = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUITabSegment_qmui_tab_indicator_height, getResources().getDimensionPixelSize(R.dimen.qmui_tab_segment_indicator_height));
        this.f19549try = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUITabSegment_android_textSize, getResources().getDimensionPixelSize(R.dimen.qmui_tab_segment_text_size));
        this.f19534goto = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUITabSegment_qmui_tab_indicator_top, false);
        this.f19544super = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUITabSegment_qmui_tab_icon_position, 0);
        this.f19547throw = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUITabSegment_qmui_tab_mode, 1);
        this.f19550while = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUITabSegment_qmui_tab_space, ih1.m3450new(context, 10));
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.QMUITabSegment_qmui_tab_typeface_provider);
        typedArrayObtainStyledAttributes.recycle();
        Ctry ctry = new Ctry(context);
        this.f19535if = ctry;
        addView(ctry, new FrameLayout.LayoutParams(-2, -1));
        m23804implements(context, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(Cthis cthis, boolean z) {
        if (cthis == null) {
            return;
        }
        Rect rect = this.f19524catch;
        if (rect == null) {
            this.f19524catch = new Rect(cthis.f19584else, 0, cthis.f19584else + cthis.f19579case, 0);
        } else {
            rect.left = cthis.f19584else;
            this.f19524catch.right = cthis.f19584else + cthis.f19579case;
        }
        if (this.f19525class == null) {
            Paint paint = new Paint();
            this.f19525class = paint;
            paint.setStyle(Paint.Style.FILL);
        }
        this.f19525class.setColor(h(cthis));
        if (z) {
            this.f19535if.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Cthis cthis, Cthis cthis2, float f) {
        int iM23846catch = cthis2.m23846catch() - cthis.m23846catch();
        int iM23846catch2 = (int) (cthis.m23846catch() + (iM23846catch * f));
        int iM23847class = (int) (cthis.m23847class() + ((cthis2.m23847class() - cthis.m23847class()) * f));
        Rect rect = this.f19524catch;
        if (rect == null) {
            this.f19524catch = new Rect(iM23846catch2, 0, iM23847class + iM23846catch2, 0);
        } else {
            rect.left = iM23846catch2;
            rect.right = iM23846catch2 + iM23847class;
        }
        if (this.f19525class == null) {
            Paint paint = new Paint();
            this.f19525class = paint;
            paint.setStyle(Paint.Style.FILL);
        }
        this.f19525class.setColor(fh1.m2284if(h(cthis), h(cthis2), f));
        this.f19535if.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewPagerScrollState(int i) {
        int i2;
        this.f19537native = i;
        if (i == 0 && (i2 = this.f19538new) != -1 && this.f19541public == null) {
            s(i2, true, false);
            this.f19538new = -1;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m23818synchronized(int i) {
        for (int size = this.f19528do.size() - 1; size >= 0; size--) {
            this.f19528do.get(size).onTabReselected(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(TextView textView, Drawable drawable, int i) {
        Drawable drawable2 = i == 0 ? drawable : null;
        Drawable drawable3 = i == 1 ? drawable : null;
        Drawable drawable4 = i == 2 ? drawable : null;
        if (i != 3) {
            drawable = null;
        }
        textView.setCompoundDrawables(drawable2, drawable3, drawable4, drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void v(TextView textView, boolean z) {
        TypefaceProvider typefaceProvider = this.f19536import;
        if (typefaceProvider == null || textView == null) {
            return;
        }
        textView.setTypeface(this.f19536import.getTypeface(), z ? typefaceProvider.isSelectedTabBold() : typefaceProvider.isNormalTabBold());
    }

    public void A(int i, String str) {
        Cthis cthisM24063case = getAdapter().m24063case(i);
        if (cthisM24063case == null) {
            return;
        }
        cthisM24063case.m23869volatile(str);
        n();
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        if (this.f19528do.contains(onTabSelectedListener)) {
            return;
        }
        this.f19528do.add(onTabSelectedListener);
    }

    public int d(int i) {
        return getAdapter().m24063case(i).m23861static();
    }

    public Cthis e(int i) {
        return getAdapter().m24063case(i);
    }

    public int getMode() {
        return this.f19547throw;
    }

    public int getSelectedIndex() {
        return this.f19533for;
    }

    public void j(int i) {
        getAdapter().m24063case(i).m23850default();
    }

    public void n() {
        getAdapter().m24064catch();
        o(false);
    }

    public void o(boolean z) {
        PagerAdapter pagerAdapter = this.f19548throws;
        if (pagerAdapter == null) {
            if (z) {
                q();
                return;
            }
            return;
        }
        int count = pagerAdapter.getCount();
        if (z) {
            q();
            for (int i = 0; i < count; i++) {
                m23825protected(new Cthis(this.f19548throws.getPageTitle(i)));
            }
            n();
        }
        ViewPager viewPager = this.f19545switch;
        if (viewPager == null || count <= 0) {
            return;
        }
        s(viewPager.getCurrentItem(), true, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f19533for == -1 || this.f19547throw != 0) {
            return;
        }
        TabItemView tabItemView = getAdapter().m24068this().get(this.f19533for);
        if (getScrollX() > tabItemView.getLeft()) {
            scrollTo(tabItemView.getLeft(), 0);
            return;
        }
        int width = (getWidth() - getPaddingRight()) - getPaddingLeft();
        if (getScrollX() + width < tabItemView.getRight()) {
            scrollBy((tabItemView.getRight() - width) - getScrollX(), 0);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            childAt.measure(View.MeasureSpec.makeMeasureSpec(size - paddingLeft, 1073741824), i2);
            if (mode == Integer.MIN_VALUE) {
                setMeasuredDimension(Math.min(size, childAt.getMeasuredWidth() + paddingLeft), i2);
                return;
            }
        }
        setMeasuredDimension(i, i2);
    }

    public void p(int i, Cthis cthis) {
        try {
            getAdapter().m24062break(i, cthis);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public QMUITabSegment m23825protected(Cthis cthis) {
        this.f19535if.m23871do().m24065do(cthis);
        return this;
    }

    public void q() {
        this.f19535if.m23871do().m24067for();
        this.f19533for = -1;
        Animator animator = this.f19541public;
        if (animator != null) {
            animator.cancel();
            this.f19541public = null;
        }
    }

    public void r(int i) {
        s(i, false, false);
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        this.f19528do.remove(onTabSelectedListener);
    }

    public void s(int i, boolean z, boolean z2) {
        if (this.f19540private) {
            return;
        }
        this.f19540private = true;
        Cbreak adapter = getAdapter();
        List<TabItemView> listM24068this = adapter.m24068this();
        if (listM24068this.size() != adapter.m24066else()) {
            adapter.m24064catch();
            listM24068this = adapter.m24068this();
        }
        if (listM24068this.size() == 0 || listM24068this.size() <= i) {
            this.f19540private = false;
            return;
        }
        if (this.f19541public != null || this.f19537native != 0) {
            this.f19538new = i;
            this.f19540private = false;
            return;
        }
        int i2 = this.f19533for;
        if (i2 == i) {
            if (z2) {
                m23818synchronized(i);
            }
            this.f19540private = false;
            this.f19535if.invalidate();
            return;
        }
        if (i2 > listM24068this.size()) {
            this.f19533for = -1;
        }
        int i3 = this.f19533for;
        if (i3 == -1) {
            Cthis cthisM24063case = adapter.m24063case(i);
            l(cthisM24063case, true);
            v(listM24068this.get(i).getTextView(), true);
            listM24068this.get(i).m23828if(cthisM24063case, true);
            a(i);
            this.f19533for = i;
            this.f19540private = false;
            return;
        }
        Cthis cthisM24063case2 = adapter.m24063case(i3);
        TabItemView tabItemView = listM24068this.get(i3);
        Cthis cthisM24063case3 = adapter.m24063case(i);
        TabItemView tabItemView2 = listM24068this.get(i);
        if (!z) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setInterpolator(com.qmuiteam.qmui.Cdo.f19014do);
            valueAnimatorOfFloat.addUpdateListener(new Cif(cthisM24063case2, cthisM24063case3, tabItemView, tabItemView2));
            valueAnimatorOfFloat.addListener(new Cfor(tabItemView, cthisM24063case2, tabItemView2, cthisM24063case3, i, i3));
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.start();
            return;
        }
        b(i3);
        a(i);
        v(tabItemView.getTextView(), false);
        v(tabItemView2.getTextView(), true);
        tabItemView.m23828if(cthisM24063case2, false);
        tabItemView2.m23828if(cthisM24063case3, true);
        if (getScrollX() > tabItemView2.getLeft()) {
            smoothScrollTo(tabItemView2.getLeft(), 0);
        } else {
            int width = (getWidth() - getPaddingRight()) - getPaddingLeft();
            if (getScrollX() + width < tabItemView2.getRight()) {
                smoothScrollBy((tabItemView2.getRight() - width) - getScrollX(), 0);
            }
        }
        this.f19533for = i;
        this.f19540private = false;
        l(cthisM24063case3, true);
    }

    public void setDefaultNormalColor(@ColorInt int i) {
        this.f19526const = i;
    }

    public void setDefaultSelectedColor(@ColorInt int i) {
        this.f19531final = i;
    }

    public void setDefaultTabIconPosition(int i) {
        this.f19544super = i;
    }

    public void setHasIndicator(boolean z) {
        if (this.f19523case != z) {
            this.f19523case = z;
            invalidate();
        }
    }

    public void setIndicatorDrawable(Drawable drawable) {
        this.f19546this = drawable;
        if (drawable != null) {
            this.f19529else = drawable.getIntrinsicHeight();
        }
        this.f19535if.invalidate();
    }

    public void setIndicatorPosition(boolean z) {
        if (this.f19534goto != z) {
            this.f19534goto = z;
            this.f19535if.invalidate();
        }
    }

    public void setIndicatorWidthAdjustContent(boolean z) {
        if (this.f19522break != z) {
            this.f19522break = z;
            this.f19535if.requestLayout();
        }
    }

    public void setItemSpaceInScrollMode(int i) {
        this.f19550while = i;
    }

    public void setMode(int i) {
        if (this.f19547throw != i) {
            this.f19547throw = i;
            this.f19535if.invalidate();
        }
    }

    public void setOnTabClickListener(OnTabClickListener onTabClickListener) {
        this.f19542return = onTabClickListener;
    }

    public void setTabTextSize(int i) {
        this.f19549try = i;
    }

    public void setTypefaceProvider(TypefaceProvider typefaceProvider) {
        this.f19536import = typefaceProvider;
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        w(viewPager, true);
    }

    /* renamed from: transient, reason: not valid java name */
    public void m23826transient() {
        this.f19528do.clear();
    }

    public void u(@Nullable PagerAdapter pagerAdapter, boolean z, boolean z2) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f19548throws;
        if (pagerAdapter2 != null && (dataSetObserver = this.f19527default) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f19548throws = pagerAdapter;
        if (z2 && pagerAdapter != null) {
            if (this.f19527default == null) {
                this.f19527default = new Cgoto(z);
            }
            pagerAdapter.registerDataSetObserver(this.f19527default);
        }
        o(z);
    }

    public void w(@Nullable ViewPager viewPager, boolean z) {
        x(viewPager, z, true);
    }

    public void x(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.f19545switch;
        if (viewPager2 != null) {
            ViewPager.OnPageChangeListener onPageChangeListener = this.f19530extends;
            if (onPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(onPageChangeListener);
            }
            Cnew cnew = this.f19539package;
            if (cnew != null) {
                this.f19545switch.removeOnAdapterChangeListener(cnew);
            }
        }
        OnTabSelectedListener onTabSelectedListener = this.f19532finally;
        if (onTabSelectedListener != null) {
            removeOnTabSelectedListener(onTabSelectedListener);
            this.f19532finally = null;
        }
        if (viewPager == null) {
            this.f19545switch = null;
            u(null, false, false);
            return;
        }
        this.f19545switch = viewPager;
        if (this.f19530extends == null) {
            this.f19530extends = new TabLayoutOnPageChangeListener(this);
        }
        viewPager.addOnPageChangeListener(this.f19530extends);
        Ccatch ccatch = new Ccatch(viewPager);
        this.f19532finally = ccatch;
        addOnTabSelectedListener(ccatch);
        PagerAdapter adapter = viewPager.getAdapter();
        if (adapter != null) {
            u(adapter, z, z2);
        }
        if (this.f19539package == null) {
            this.f19539package = new Cnew(z);
        }
        this.f19539package.m23833do(z2);
        viewPager.addOnAdapterChangeListener(this.f19539package);
    }

    public void y(Context context, int i, int i2) {
        getAdapter().m24063case(i).m23853implements(context, i2);
        n();
    }

    public void z(int i, float f) {
        int i2;
        if (this.f19541public != null || this.f19540private || f == 0.0f) {
            return;
        }
        if (f < 0.0f) {
            i2 = i - 1;
            f = -f;
        } else {
            i2 = i + 1;
        }
        Cbreak adapter = getAdapter();
        List<TabItemView> listM24068this = adapter.m24068this();
        if (listM24068this.size() <= i || listM24068this.size() <= i2) {
            return;
        }
        Cthis cthisM24063case = adapter.m24063case(i);
        Cthis cthisM24063case2 = adapter.m24063case(i2);
        TabItemView tabItemView = listM24068this.get(i);
        TabItemView tabItemView2 = listM24068this.get(i2);
        int iM2284if = fh1.m2284if(h(cthisM24063case), g(cthisM24063case), f);
        int iM2284if2 = fh1.m2284if(g(cthisM24063case2), h(cthisM24063case2), f);
        tabItemView.m23827do(cthisM24063case, iM2284if);
        tabItemView2.m23827do(cthisM24063case2, iM2284if2);
        m(cthisM24063case, cthisM24063case2, f);
    }

    public QMUITabSegment(Context context, boolean z) {
        this(context, (AttributeSet) null);
        this.f19523case = z;
    }

    public QMUITabSegment(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUITabSegmentStyle);
    }

    public QMUITabSegment(Context context, AttributeSet attributeSet, int i) throws NoSuchMethodException, SecurityException {
        super(context, attributeSet, i);
        this.f19528do = new ArrayList<>();
        this.f19533for = -1;
        this.f19538new = -1;
        this.f19523case = true;
        this.f19534goto = false;
        this.f19522break = true;
        this.f19524catch = null;
        this.f19525class = null;
        this.f19547throw = 1;
        this.f19537native = 0;
        this.f19543static = new Cdo();
        this.f19540private = false;
        k(context, attributeSet, i);
        setHorizontalScrollBarEnabled(false);
        setClipToPadding(false);
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUITabSegment$this, reason: invalid class name */
    public static class Cthis {

        /* renamed from: return, reason: not valid java name */
        public static final int f19577return = Integer.MIN_VALUE;

        /* renamed from: break, reason: not valid java name */
        private CharSequence f19578break;

        /* renamed from: case, reason: not valid java name */
        private int f19579case;

        /* renamed from: catch, reason: not valid java name */
        private List<View> f19580catch;

        /* renamed from: class, reason: not valid java name */
        private int f19581class;

        /* renamed from: const, reason: not valid java name */
        private TextView f19582const;

        /* renamed from: do, reason: not valid java name */
        private int f19583do;

        /* renamed from: else, reason: not valid java name */
        private int f19584else;

        /* renamed from: final, reason: not valid java name */
        private int f19585final;

        /* renamed from: for, reason: not valid java name */
        private int f19586for;

        /* renamed from: goto, reason: not valid java name */
        private int f19587goto;

        /* renamed from: if, reason: not valid java name */
        private int f19588if;

        /* renamed from: import, reason: not valid java name */
        private float f19589import;

        /* renamed from: native, reason: not valid java name */
        private int f19590native;

        /* renamed from: new, reason: not valid java name */
        private Drawable f19591new;

        /* renamed from: public, reason: not valid java name */
        private int f19592public;

        /* renamed from: super, reason: not valid java name */
        private int f19593super;

        /* renamed from: this, reason: not valid java name */
        private int f19594this;

        /* renamed from: throw, reason: not valid java name */
        private boolean f19595throw;

        /* renamed from: try, reason: not valid java name */
        private Drawable f19596try;

        /* renamed from: while, reason: not valid java name */
        private float f19597while;

        public Cthis(CharSequence charSequence) {
            this.f19583do = Integer.MIN_VALUE;
            this.f19588if = Integer.MIN_VALUE;
            this.f19586for = Integer.MIN_VALUE;
            this.f19591new = null;
            this.f19596try = null;
            this.f19579case = 0;
            this.f19584else = 0;
            this.f19587goto = Integer.MIN_VALUE;
            this.f19594this = 17;
            this.f19581class = 2;
            this.f19585final = 0;
            this.f19593super = 0;
            this.f19595throw = true;
            this.f19597while = 0.0f;
            this.f19589import = 0.0f;
            this.f19590native = 0;
            this.f19592public = 0;
            this.f19578break = charSequence;
        }

        /* renamed from: break, reason: not valid java name */
        private TextView m23834break(Context context) {
            if (this.f19582const == null) {
                this.f19582const = new TextView(context, null, R.attr.qmui_tab_sign_count_view);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, sh1.m7405new(context, R.attr.qmui_tab_sign_count_view_minSize));
                int i = R.id.qmui_tab_segment_item_id;
                layoutParams.addRule(6, i);
                layoutParams.addRule(1, i);
                this.f19582const.setLayoutParams(layoutParams);
                m23865this(this.f19582const);
            }
            m23849continue(this.f19585final, this.f19593super);
            return this.f19582const;
        }

        /* renamed from: final, reason: not valid java name */
        private RelativeLayout.LayoutParams m23838final() {
            return new RelativeLayout.LayoutParams(-2, -2);
        }

        /* renamed from: native, reason: not valid java name */
        private String m23842native(int i) {
            if (kh1.m4408new(i) <= this.f19581class) {
                return String.valueOf(i);
            }
            StringBuilder sb = new StringBuilder();
            for (int i2 = 1; i2 <= this.f19581class; i2++) {
                sb.append("9");
            }
            sb.append("+");
            return sb.toString();
        }

        /* renamed from: abstract, reason: not valid java name */
        public void m23845abstract(int i) {
            this.f19587goto = i;
        }

        /* renamed from: catch, reason: not valid java name */
        public int m23846catch() {
            return this.f19584else;
        }

        /* renamed from: class, reason: not valid java name */
        public int m23847class() {
            return this.f19579case;
        }

        /* renamed from: const, reason: not valid java name */
        public List<View> m23848const() {
            return this.f19580catch;
        }

        /* renamed from: continue, reason: not valid java name */
        public void m23849continue(int i, int i2) {
            this.f19585final = i;
            this.f19593super = i2;
            TextView textView = this.f19582const;
            if (textView == null || textView.getLayoutParams() == null) {
                return;
            }
            ((ViewGroup.MarginLayoutParams) this.f19582const.getLayoutParams()).leftMargin = i;
            ((ViewGroup.MarginLayoutParams) this.f19582const.getLayoutParams()).topMargin = i2;
        }

        /* renamed from: default, reason: not valid java name */
        public void m23850default() {
            TextView textView = this.f19582const;
            if (textView != null) {
                textView.setVisibility(8);
            }
        }

        /* renamed from: extends, reason: not valid java name */
        public boolean m23851extends() {
            return this.f19595throw;
        }

        /* renamed from: finally, reason: not valid java name */
        public void m23852finally(int i) {
            this.f19584else = i;
        }

        /* renamed from: implements, reason: not valid java name */
        public void m23853implements(Context context, int i) {
            m23834break(context);
            this.f19582const.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f19582const.getLayoutParams();
            if (i != 0) {
                Context context2 = this.f19582const.getContext();
                int i2 = R.attr.qmui_tab_sign_count_view_minSize_with_text;
                layoutParams.height = sh1.m7405new(context2, i2);
                this.f19582const.setLayoutParams(layoutParams);
                TextView textView = this.f19582const;
                textView.setMinHeight(sh1.m7405new(textView.getContext(), i2));
                TextView textView2 = this.f19582const;
                textView2.setMinWidth(sh1.m7405new(textView2.getContext(), i2));
                this.f19582const.setText(m23842native(i));
                return;
            }
            Context context3 = this.f19582const.getContext();
            int i3 = R.attr.qmui_tab_sign_count_view_minSize;
            layoutParams.height = sh1.m7405new(context3, i3);
            this.f19582const.setLayoutParams(layoutParams);
            TextView textView3 = this.f19582const;
            textView3.setMinHeight(sh1.m7405new(textView3.getContext(), i3));
            TextView textView4 = this.f19582const;
            textView4.setMinWidth(sh1.m7405new(textView4.getContext(), i3));
            this.f19582const.setText((CharSequence) null);
        }

        /* renamed from: import, reason: not valid java name */
        public Drawable m23854import() {
            return this.f19591new;
        }

        /* renamed from: interface, reason: not valid java name */
        public void m23855interface(@ColorInt int i, @ColorInt int i2) {
            this.f19588if = i;
            this.f19586for = i2;
        }

        /* renamed from: package, reason: not valid java name */
        public void m23856package(int i) {
            this.f19579case = i;
        }

        /* renamed from: private, reason: not valid java name */
        public void m23857private(int i) {
            this.f19594this = i;
        }

        /* renamed from: protected, reason: not valid java name */
        public void m23858protected(int i) {
            this.f19583do = i;
        }

        /* renamed from: public, reason: not valid java name */
        public int m23859public() {
            return this.f19586for;
        }

        /* renamed from: return, reason: not valid java name */
        public Drawable m23860return() {
            return this.f19596try;
        }

        /* renamed from: static, reason: not valid java name */
        public int m23861static() {
            TextView textView = this.f19582const;
            if (textView == null || textView.getVisibility() != 0 || kh1.m4402case(this.f19582const.getText())) {
                return 0;
            }
            return Integer.parseInt(this.f19582const.getText().toString());
        }

        /* renamed from: strictfp, reason: not valid java name */
        public void m23862strictfp(float f, float f2) {
            this.f19589import = f;
            this.f19597while = f2;
        }

        /* renamed from: super, reason: not valid java name */
        public int m23863super() {
            return this.f19594this;
        }

        /* renamed from: switch, reason: not valid java name */
        public CharSequence m23864switch() {
            return this.f19578break;
        }

        /* renamed from: this, reason: not valid java name */
        public void m23865this(@NonNull View view) {
            if (this.f19580catch == null) {
                this.f19580catch = new ArrayList();
            }
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(m23838final());
            }
            this.f19580catch.add(view);
        }

        /* renamed from: throw, reason: not valid java name */
        public int m23866throw() {
            return this.f19587goto;
        }

        /* renamed from: throws, reason: not valid java name */
        public int m23867throws() {
            return this.f19583do;
        }

        /* renamed from: transient, reason: not valid java name */
        public void m23868transient(int i) {
            this.f19581class = i;
        }

        /* renamed from: volatile, reason: not valid java name */
        public void m23869volatile(CharSequence charSequence) {
            this.f19578break = charSequence;
        }

        /* renamed from: while, reason: not valid java name */
        public int m23870while() {
            return this.f19588if;
        }

        public Cthis(Drawable drawable, Drawable drawable2, CharSequence charSequence, boolean z) {
            this(drawable, drawable2, charSequence, z, true);
        }

        public Cthis(Drawable drawable, Drawable drawable2, CharSequence charSequence, boolean z, boolean z2) {
            this.f19583do = Integer.MIN_VALUE;
            this.f19588if = Integer.MIN_VALUE;
            this.f19586for = Integer.MIN_VALUE;
            this.f19591new = null;
            this.f19596try = null;
            this.f19579case = 0;
            this.f19584else = 0;
            this.f19587goto = Integer.MIN_VALUE;
            this.f19594this = 17;
            this.f19581class = 2;
            this.f19585final = 0;
            this.f19593super = 0;
            this.f19595throw = true;
            this.f19597while = 0.0f;
            this.f19589import = 0.0f;
            this.f19590native = 0;
            this.f19592public = 0;
            this.f19591new = drawable;
            if (drawable != null && z2) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            }
            this.f19596try = drawable2;
            if (drawable2 != null && z2) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            }
            this.f19578break = charSequence;
            this.f19595throw = z;
        }
    }
}

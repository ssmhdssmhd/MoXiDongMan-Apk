package android.support.v4;

import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.viewpager.widget.ViewPager;
import com.scwang.smartrefresh.layout.api.RefreshContent;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.ScrollBoundaryDecider;
import com.scwang.smartrefresh.layout.listener.CoordinatorLayoutListener;
import com.scwang.smartrefresh.layout.util.Cdo;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public class km1 implements RefreshContent, CoordinatorLayoutListener, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public View f3423do;

    /* renamed from: for, reason: not valid java name */
    public View f3425for;

    /* renamed from: if, reason: not valid java name */
    public View f3427if;

    /* renamed from: new, reason: not valid java name */
    public View f3428new;

    /* renamed from: try, reason: not valid java name */
    public View f3430try;

    /* renamed from: case, reason: not valid java name */
    public int f3422case = 0;

    /* renamed from: else, reason: not valid java name */
    public boolean f3424else = true;

    /* renamed from: goto, reason: not valid java name */
    public boolean f3426goto = true;

    /* renamed from: this, reason: not valid java name */
    public ls1 f3429this = new ls1();

    public km1(@NonNull View view) {
        this.f3425for = view;
        this.f3427if = view;
        this.f3423do = view;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public boolean canLoadMore() {
        return this.f3426goto && this.f3429this.canLoadMore(this.f3423do);
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public boolean canRefresh() {
        return this.f3424else && this.f3429this.canRefresh(this.f3423do);
    }

    /* renamed from: do, reason: not valid java name */
    public void m4442do(View view, RefreshKernel refreshKernel) {
        boolean zIsInEditMode = this.f3423do.isInEditMode();
        View view2 = null;
        while (true) {
            if (view2 != null && (!(view2 instanceof NestedScrollingParent) || (view2 instanceof NestedScrollingChild))) {
                break;
            }
            view = m4443for(view, view2 == null);
            if (view == view2) {
                break;
            }
            if (!zIsInEditMode) {
                Cdo.m24480do(view, refreshKernel, this);
            }
            view2 = view;
        }
        if (view2 != null) {
            this.f3425for = view2;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public View m4443for(View view, boolean z) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(view);
        View view2 = null;
        while (linkedList.size() > 0 && view2 == null) {
            View view3 = (View) linkedList.poll();
            if (view3 != null) {
                if ((z || view3 != view) && i02.m3186case(view3)) {
                    view2 = view3;
                } else if (view3 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view3;
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        linkedList.add(viewGroup.getChildAt(i));
                    }
                }
            }
        }
        return view2 == null ? view : view2;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    @NonNull
    public View getScrollableView() {
        return this.f3425for;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    @NonNull
    public View getView() {
        return this.f3423do;
    }

    /* renamed from: if, reason: not valid java name */
    public View m4444if(View view, PointF pointF, View view2) {
        if ((view instanceof ViewGroup) && pointF != null) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (i02.m3192goto(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if (!(childAt instanceof ViewPager) && i02.m3186case(childAt)) {
                        return childAt;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    View viewM4444if = m4444if(childAt, pointF, view2);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return viewM4444if;
                }
            }
        }
        return view2;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public void moveSpinner(int i, int i2, int i3) {
        boolean z;
        View viewFindViewById;
        View viewFindViewById2;
        boolean z2 = true;
        if (i2 == -1 || (viewFindViewById2 = this.f3427if.findViewById(i2)) == null) {
            z = false;
        } else if (i > 0) {
            viewFindViewById2.setTranslationY(i);
            z = true;
        } else {
            if (viewFindViewById2.getTranslationY() > 0.0f) {
                viewFindViewById2.setTranslationY(0.0f);
            }
            z = false;
        }
        if (i3 == -1 || (viewFindViewById = this.f3427if.findViewById(i3)) == null) {
            z2 = z;
        } else if (i < 0) {
            viewFindViewById.setTranslationY(i);
        } else {
            if (viewFindViewById.getTranslationY() < 0.0f) {
                viewFindViewById.setTranslationY(0.0f);
            }
            z2 = z;
        }
        if (z2) {
            this.f3427if.setTranslationY(0.0f);
        } else {
            this.f3427if.setTranslationY(i);
        }
        View view = this.f3428new;
        if (view != null) {
            view.setTranslationY(Math.max(0, i));
        }
        View view2 = this.f3430try;
        if (view2 != null) {
            view2.setTranslationY(Math.min(0, i));
        }
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public void onActionDown(MotionEvent motionEvent) {
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        pointF.offset(-this.f3423do.getLeft(), -this.f3423do.getTop());
        View view = this.f3425for;
        View view2 = this.f3423do;
        if (view != view2) {
            this.f3425for = m4444if(view2, pointF, view);
        }
        if (this.f3425for == this.f3423do) {
            this.f3429this.f3762do = null;
        } else {
            this.f3429this.f3762do = pointF;
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        try {
            float scaleY = (iIntValue - this.f3422case) * this.f3425for.getScaleY();
            View view = this.f3425for;
            if (view instanceof AbsListView) {
                i02.m3187catch((AbsListView) view, (int) scaleY);
            } else {
                view.scrollBy(0, (int) scaleY);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f3422case = iIntValue;
    }

    @Override // com.scwang.smartrefresh.layout.listener.CoordinatorLayoutListener
    public void onCoordinatorUpdate(boolean z, boolean z2) {
        this.f3424else = z;
        this.f3426goto = z2;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public ValueAnimator.AnimatorUpdateListener scrollContentWhenFinished(int i) {
        View view = this.f3425for;
        if (view == null || i == 0) {
            return null;
        }
        if ((i >= 0 || !i02.m3191for(view, 1)) && (i <= 0 || !i02.m3191for(this.f3425for, -1))) {
            return null;
        }
        this.f3422case = i;
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public void setEnableLoadMoreWhenContentNotFull(boolean z) {
        this.f3429this.f3763for = z;
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public void setScrollBoundaryDecider(ScrollBoundaryDecider scrollBoundaryDecider) {
        if (scrollBoundaryDecider instanceof ls1) {
            this.f3429this = (ls1) scrollBoundaryDecider;
        } else {
            this.f3429this.f3764if = scrollBoundaryDecider;
        }
    }

    @Override // com.scwang.smartrefresh.layout.api.RefreshContent
    public void setUpComponent(RefreshKernel refreshKernel, View view, View view2) {
        m4442do(this.f3423do, refreshKernel);
        if (view == null && view2 == null) {
            return;
        }
        this.f3428new = view;
        this.f3430try = view2;
        FrameLayout frameLayout = new FrameLayout(this.f3423do.getContext());
        int iIndexOfChild = refreshKernel.getRefreshLayout().getLayout().indexOfChild(this.f3423do);
        refreshKernel.getRefreshLayout().getLayout().removeView(this.f3423do);
        frameLayout.addView(this.f3423do, 0, new ViewGroup.LayoutParams(-1, -1));
        refreshKernel.getRefreshLayout().getLayout().addView(frameLayout, iIndexOfChild, this.f3423do.getLayoutParams());
        this.f3423do = frameLayout;
        if (view != null) {
            view.setTag("fixed-top");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            int iIndexOfChild2 = viewGroup.indexOfChild(view);
            viewGroup.removeView(view);
            layoutParams.height = i02.m3195this(view);
            viewGroup.addView(new Space(this.f3423do.getContext()), iIndexOfChild2, layoutParams);
            frameLayout.addView(view, 1, layoutParams);
        }
        if (view2 != null) {
            view2.setTag("fixed-bottom");
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            ViewGroup viewGroup2 = (ViewGroup) view2.getParent();
            int iIndexOfChild3 = viewGroup2.indexOfChild(view2);
            viewGroup2.removeView(view2);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(layoutParams2);
            layoutParams2.height = i02.m3195this(view2);
            viewGroup2.addView(new Space(this.f3423do.getContext()), iIndexOfChild3, layoutParams2);
            layoutParams3.gravity = 80;
            frameLayout.addView(view2, 1, layoutParams3);
        }
    }
}

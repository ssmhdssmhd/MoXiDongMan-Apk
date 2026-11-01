package android.support.v4;

import android.content.res.Resources;
import android.graphics.PointF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ScrollingView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes2.dex */
public class i02 implements Interpolator {

    /* renamed from: case, reason: not valid java name */
    private static final float f2579case;

    /* renamed from: else, reason: not valid java name */
    private static final float f2580else;

    /* renamed from: for, reason: not valid java name */
    public static int f2581for = 1;

    /* renamed from: if, reason: not valid java name */
    public static int f2582if = 0;

    /* renamed from: new, reason: not valid java name */
    private static float f2583new = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: try, reason: not valid java name */
    private static final float f2584try = 8.0f;

    /* renamed from: do, reason: not valid java name */
    private int f2585do;

    static {
        float fM3188class = 1.0f / m3188class(1.0f);
        f2579case = fM3188class;
        f2580else = 1.0f - (fM3188class * m3188class(1.0f));
    }

    public i02(int i) {
        this.f2585do = i;
    }

    /* renamed from: break, reason: not valid java name */
    public static float m3185break(int i) {
        return i / f2583new;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m3186case(View view) {
        return m3190else(view) || (view instanceof ViewPager) || (view instanceof NestedScrollingParent);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m3187catch(@NonNull AbsListView absListView, int i) {
        View childAt;
        if (Build.VERSION.SDK_INT >= 19) {
            absListView.scrollListBy(i);
            return;
        }
        if (!(absListView instanceof ListView)) {
            absListView.smoothScrollBy(i, 0);
            return;
        }
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        if (firstVisiblePosition == -1 || (childAt = absListView.getChildAt(0)) == null) {
            return;
        }
        ((ListView) absListView).setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
    }

    /* renamed from: class, reason: not valid java name */
    private static float m3188class(float f) {
        float f2 = f * f2584try;
        return f2 < 1.0f ? f2 - (1.0f - ((float) Math.exp(-f2))) : ((1.0f - ((float) Math.exp(1.0f - f2))) * 0.63212055f) + 0.36787945f;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m3189do(@NonNull View view, PointF pointF, boolean z) {
        if (m3191for(view, 1) && view.getVisibility() == 0) {
            return false;
        }
        if ((view instanceof ViewGroup) && pointF != null && !m3190else(view)) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (m3192goto(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ("fixed".equals(childAt.getTag()) || "fixed-top".equals(childAt.getTag())) {
                        return false;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    boolean zM3189do = m3189do(childAt, pointF, z);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return zM3189do;
                }
            }
        }
        return z || m3191for(view, -1);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m3190else(View view) {
        return (view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof ScrollingView) || (view instanceof WebView) || (view instanceof NestedScrollingChild);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m3191for(@NonNull View view, int i) {
        int i2;
        if (Build.VERSION.SDK_INT >= 14) {
            return view.canScrollVertically(i);
        }
        if (!(view instanceof AbsListView)) {
            return i > 0 ? view.getScrollY() < 0 : view.getScrollY() > 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        AbsListView absListView = (AbsListView) view;
        int childCount = viewGroup.getChildCount();
        return i > 0 ? childCount > 0 && (absListView.getLastVisiblePosition() < (i2 = childCount - 1) || viewGroup.getChildAt(i2).getBottom() > view.getPaddingBottom()) : childCount > 0 && (absListView.getFirstVisiblePosition() > 0 || viewGroup.getChildAt(0).getTop() < view.getPaddingTop());
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m3192goto(@NonNull View view, @NonNull View view2, float f, float f2, PointF pointF) {
        if (view2.getVisibility() != 0) {
            return false;
        }
        float[] fArr = {f, f2};
        fArr[0] = fArr[0] + (view.getScrollX() - view2.getLeft());
        fArr[1] = fArr[1] + (view.getScrollY() - view2.getTop());
        boolean z = fArr[0] >= 0.0f && fArr[1] >= 0.0f && fArr[0] < ((float) view2.getWidth()) && fArr[1] < ((float) view2.getHeight());
        if (z && pointF != null) {
            pointF.set(fArr[0] - f, fArr[1] - f2);
        }
        return z;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m3193if(@NonNull View view, PointF pointF) {
        if (m3191for(view, -1) && view.getVisibility() == 0) {
            return false;
        }
        if (!(view instanceof ViewGroup) || pointF == null) {
            return true;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        PointF pointF2 = new PointF();
        for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount - 1);
            if (m3192goto(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                if ("fixed".equals(childAt.getTag()) || "fixed-bottom".equals(childAt.getTag())) {
                    return false;
                }
                pointF.offset(pointF2.x, pointF2.y);
                boolean zM3193if = m3193if(childAt, pointF);
                pointF.offset(-pointF2.x, -pointF2.y);
                return zM3193if;
            }
        }
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3194new(float f) {
        return (int) ((f * f2583new) + 0.5f);
    }

    /* renamed from: this, reason: not valid java name */
    public static int m3195this(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i = layoutParams.height;
        view.measure(childMeasureSpec, i > 0 ? View.MeasureSpec.makeMeasureSpec(i, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3196try(View view, int i) {
        if (view instanceof ScrollView) {
            ((ScrollView) view).fling(i);
            return;
        }
        if (view instanceof AbsListView) {
            if (Build.VERSION.SDK_INT >= 21) {
                ((AbsListView) view).fling(i);
            }
        } else if (view instanceof WebView) {
            ((WebView) view).flingScroll(0, i);
        } else if (view instanceof NestedScrollView) {
            ((NestedScrollView) view).fling(i);
        } else if (view instanceof RecyclerView) {
            ((RecyclerView) view).fling(0, i);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (this.f2585do == f2581for) {
            float f2 = 1.0f - f;
            return 1.0f - (f2 * f2);
        }
        float fM3188class = f2579case * m3188class(f);
        return fM3188class > 0.0f ? fM3188class + f2580else : fM3188class;
    }
}

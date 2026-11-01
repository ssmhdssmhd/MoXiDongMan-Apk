package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.Cif;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements FlexContainer, RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* renamed from: abstract, reason: not valid java name */
    public static final /* synthetic */ boolean f11062abstract = false;

    /* renamed from: finally, reason: not valid java name */
    private static final String f11063finally = "FlexboxLayoutManager";

    /* renamed from: package, reason: not valid java name */
    private static final Rect f11064package = new Rect();

    /* renamed from: private, reason: not valid java name */
    private static final boolean f11065private = false;

    /* renamed from: break, reason: not valid java name */
    private RecyclerView.Recycler f11066break;

    /* renamed from: case, reason: not valid java name */
    private boolean f11067case;

    /* renamed from: catch, reason: not valid java name */
    private RecyclerView.State f11068catch;

    /* renamed from: class, reason: not valid java name */
    private Cfor f11069class;

    /* renamed from: const, reason: not valid java name */
    private Cif f11070const;

    /* renamed from: default, reason: not valid java name */
    private int f11071default;

    /* renamed from: do, reason: not valid java name */
    private int f11072do;

    /* renamed from: else, reason: not valid java name */
    private boolean f11073else;

    /* renamed from: extends, reason: not valid java name */
    private Cif.C0055if f11074extends;

    /* renamed from: final, reason: not valid java name */
    private OrientationHelper f11075final;

    /* renamed from: for, reason: not valid java name */
    private int f11076for;

    /* renamed from: goto, reason: not valid java name */
    private List<com.google.android.flexbox.Cdo> f11077goto;

    /* renamed from: if, reason: not valid java name */
    private int f11078if;

    /* renamed from: import, reason: not valid java name */
    private int f11079import;

    /* renamed from: native, reason: not valid java name */
    private int f11080native;

    /* renamed from: new, reason: not valid java name */
    private int f11081new;

    /* renamed from: public, reason: not valid java name */
    private int f11082public;

    /* renamed from: return, reason: not valid java name */
    private boolean f11083return;

    /* renamed from: static, reason: not valid java name */
    private SparseArray<View> f11084static;

    /* renamed from: super, reason: not valid java name */
    private OrientationHelper f11085super;

    /* renamed from: switch, reason: not valid java name */
    private final Context f11086switch;

    /* renamed from: this, reason: not valid java name */
    private final com.google.android.flexbox.Cif f11087this;

    /* renamed from: throw, reason: not valid java name */
    private SavedState f11088throw;

    /* renamed from: throws, reason: not valid java name */
    private View f11089throws;

    /* renamed from: try, reason: not valid java name */
    private int f11090try;

    /* renamed from: while, reason: not valid java name */
    private int f11091while;

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: catch, reason: not valid java name */
        private static final int f11103catch = Integer.MIN_VALUE;

        /* renamed from: class, reason: not valid java name */
        private static final int f11104class = -1;

        /* renamed from: const, reason: not valid java name */
        private static final int f11105const = 1;

        /* renamed from: final, reason: not valid java name */
        private static final int f11106final = 1;

        /* renamed from: break, reason: not valid java name */
        private boolean f11107break;

        /* renamed from: case, reason: not valid java name */
        private int f11108case;

        /* renamed from: do, reason: not valid java name */
        private int f11109do;

        /* renamed from: else, reason: not valid java name */
        private int f11110else;

        /* renamed from: for, reason: not valid java name */
        private int f11111for;

        /* renamed from: goto, reason: not valid java name */
        private int f11112goto;

        /* renamed from: if, reason: not valid java name */
        private boolean f11113if;

        /* renamed from: new, reason: not valid java name */
        private int f11114new;

        /* renamed from: this, reason: not valid java name */
        private int f11115this;

        /* renamed from: try, reason: not valid java name */
        private int f11116try;

        private Cfor() {
            this.f11112goto = 1;
            this.f11115this = 1;
        }

        /* renamed from: break, reason: not valid java name */
        public static /* synthetic */ int m12504break(Cfor cfor) {
            int i = cfor.f11111for;
            cfor.f11111for = i - 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: switch, reason: not valid java name */
        public boolean m12522switch(RecyclerView.State state, List<com.google.android.flexbox.Cdo> list) {
            int i;
            int i2 = this.f11114new;
            return i2 >= 0 && i2 < state.getItemCount() && (i = this.f11111for) >= 0 && i < list.size();
        }

        /* renamed from: this, reason: not valid java name */
        public static /* synthetic */ int m12523this(Cfor cfor) {
            int i = cfor.f11111for;
            cfor.f11111for = i + 1;
            return i;
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.f11109do + ", mFlexLinePosition=" + this.f11111for + ", mPosition=" + this.f11114new + ", mOffset=" + this.f11116try + ", mScrollingOffset=" + this.f11108case + ", mLastScrollDelta=" + this.f11110else + ", mItemDirection=" + this.f11112goto + ", mLayoutDirection=" + this.f11115this + MessageFormatter.DELIM_STOP;
        }
    }

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$if, reason: invalid class name */
    public class Cif {

        /* renamed from: this, reason: not valid java name */
        public static final /* synthetic */ boolean f11117this = false;

        /* renamed from: case, reason: not valid java name */
        private boolean f11118case;

        /* renamed from: do, reason: not valid java name */
        private int f11119do;

        /* renamed from: else, reason: not valid java name */
        private boolean f11120else;

        /* renamed from: for, reason: not valid java name */
        private int f11121for;

        /* renamed from: if, reason: not valid java name */
        private int f11123if;

        /* renamed from: new, reason: not valid java name */
        private int f11124new;

        /* renamed from: try, reason: not valid java name */
        private boolean f11125try;

        private Cif() {
            this.f11124new = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: import, reason: not valid java name */
        public void m12538import(View view) {
            OrientationHelper orientationHelper = FlexboxLayoutManager.this.f11078if == 0 ? FlexboxLayoutManager.this.f11085super : FlexboxLayoutManager.this.f11075final;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f11067case) {
                if (this.f11125try) {
                    this.f11121for = orientationHelper.getDecoratedEnd(view) + orientationHelper.getTotalSpaceChange();
                } else {
                    this.f11121for = orientationHelper.getDecoratedStart(view);
                }
            } else if (this.f11125try) {
                this.f11121for = orientationHelper.getDecoratedStart(view) + orientationHelper.getTotalSpaceChange();
            } else {
                this.f11121for = orientationHelper.getDecoratedEnd(view);
            }
            this.f11119do = FlexboxLayoutManager.this.getPosition(view);
            this.f11120else = false;
            int[] iArr = FlexboxLayoutManager.this.f11087this.f11148for;
            int i = this.f11119do;
            if (i == -1) {
                i = 0;
            }
            int i2 = iArr[i];
            this.f11123if = i2 != -1 ? i2 : 0;
            if (FlexboxLayoutManager.this.f11077goto.size() > this.f11123if) {
                this.f11119do = ((com.google.android.flexbox.Cdo) FlexboxLayoutManager.this.f11077goto.get(this.f11123if)).f11139super;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: native, reason: not valid java name */
        public void m12539native() {
            this.f11119do = -1;
            this.f11123if = -1;
            this.f11121for = Integer.MIN_VALUE;
            this.f11118case = false;
            this.f11120else = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.f11078if == 0) {
                    this.f11125try = FlexboxLayoutManager.this.f11072do == 1;
                    return;
                } else {
                    this.f11125try = FlexboxLayoutManager.this.f11078if == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f11078if == 0) {
                this.f11125try = FlexboxLayoutManager.this.f11072do == 3;
            } else {
                this.f11125try = FlexboxLayoutManager.this.f11078if == 2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: while, reason: not valid java name */
        public void m12545while() {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f11067case) {
                this.f11121for = this.f11125try ? FlexboxLayoutManager.this.f11075final.getEndAfterPadding() : FlexboxLayoutManager.this.f11075final.getStartAfterPadding();
            } else {
                this.f11121for = this.f11125try ? FlexboxLayoutManager.this.f11075final.getEndAfterPadding() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f11075final.getStartAfterPadding();
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f11119do + ", mFlexLinePosition=" + this.f11123if + ", mCoordinate=" + this.f11121for + ", mPerpendicularCoordinate=" + this.f11124new + ", mLayoutFromEnd=" + this.f11125try + ", mValid=" + this.f11118case + ", mAssignedFromSavedState=" + this.f11120else + MessageFormatter.DELIM_STOP;
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    private void a(int i) throws NoSuchFieldException {
        boolean z;
        int i2;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        if (isMainAxisDirectionHorizontal()) {
            int i3 = this.f11080native;
            z = (i3 == Integer.MIN_VALUE || i3 == width) ? false : true;
            i2 = this.f11069class.f11113if ? this.f11086switch.getResources().getDisplayMetrics().heightPixels : this.f11069class.f11109do;
        } else {
            int i4 = this.f11082public;
            z = (i4 == Integer.MIN_VALUE || i4 == height) ? false : true;
            i2 = this.f11069class.f11113if ? this.f11086switch.getResources().getDisplayMetrics().widthPixels : this.f11069class.f11109do;
        }
        int i5 = i2;
        this.f11080native = width;
        this.f11082public = height;
        int i6 = this.f11071default;
        if (i6 == -1 && (this.f11091while != -1 || z)) {
            if (this.f11070const.f11125try) {
                return;
            }
            this.f11077goto.clear();
            this.f11074extends.m12594do();
            if (isMainAxisDirectionHorizontal()) {
                this.f11087this.m12591try(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i5, this.f11070const.f11119do, this.f11077goto);
            } else {
                this.f11087this.m12582goto(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i5, this.f11070const.f11119do, this.f11077goto);
            }
            this.f11077goto = this.f11074extends.f11154do;
            this.f11087this.m12589throw(iMakeMeasureSpec, iMakeMeasureSpec2);
            this.f11087this.k();
            Cif cif = this.f11070const;
            cif.f11123if = this.f11087this.f11148for[cif.f11119do];
            this.f11069class.f11111for = this.f11070const.f11123if;
            return;
        }
        int iMin = i6 != -1 ? Math.min(i6, this.f11070const.f11119do) : this.f11070const.f11119do;
        this.f11074extends.m12594do();
        if (isMainAxisDirectionHorizontal()) {
            if (this.f11077goto.size() > 0) {
                this.f11087this.m12575break(this.f11077goto, iMin);
                this.f11087this.m12583if(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i5, iMin, this.f11070const.f11119do, this.f11077goto);
            } else {
                this.f11087this.m12584native(i);
                this.f11087this.m12585new(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i5, 0, this.f11077goto);
            }
        } else if (this.f11077goto.size() > 0) {
            this.f11087this.m12575break(this.f11077goto, iMin);
            this.f11087this.m12583if(this.f11074extends, iMakeMeasureSpec2, iMakeMeasureSpec, i5, iMin, this.f11070const.f11119do, this.f11077goto);
        } else {
            this.f11087this.m12584native(i);
            this.f11087this.m12579else(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i5, 0, this.f11077goto);
        }
        this.f11077goto = this.f11074extends.f11154do;
        this.f11087this.m12592while(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
        this.f11087this.l(iMin);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d4  */
    /* renamed from: abstract, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m12453abstract(com.google.android.flexbox.Cdo cdo, Cfor cfor) {
        float f;
        float f2;
        float f3;
        int iM12549for;
        int i;
        float f4;
        View view;
        int i2;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i3 = cfor.f11116try;
        int i4 = cfor.f11116try;
        if (cfor.f11115this == -1) {
            int i5 = cdo.f11132else;
            i3 -= i5;
            i4 += i5;
        }
        int i6 = i3;
        int i7 = i4;
        int i8 = cfor.f11114new;
        int i9 = this.f11076for;
        if (i9 != 0) {
            if (i9 == 1) {
                int i10 = cdo.f11142try;
                float f5 = (height - i10) + paddingBottom;
                f3 = 0.0f;
                f2 = i10 - paddingTop;
                f = f5;
            } else if (i9 == 2) {
                int i11 = cdo.f11142try;
                f = paddingTop + ((height - i11) / 2.0f);
                f2 = (height - paddingBottom) - ((height - i11) / 2.0f);
            } else if (i9 == 3) {
                f = paddingTop;
                f3 = (height - cdo.f11142try) / (cdo.f11135goto != 1 ? r4 - 1 : 1.0f);
                f2 = height - paddingBottom;
            } else if (i9 == 4) {
                int i12 = cdo.f11135goto;
                f3 = i12 != 0 ? (height - cdo.f11142try) / i12 : 0.0f;
                float f6 = f3 / 2.0f;
                f = paddingTop + f6;
                f2 = (height - paddingBottom) - f6;
            } else {
                if (i9 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f11076for);
                }
                f3 = cdo.f11135goto != 0 ? (height - cdo.f11142try) / (r4 + 1) : 0.0f;
                f = paddingTop + f3;
                f2 = (height - paddingBottom) - f3;
            }
            float measuredHeight = f - this.f11070const.f11124new;
            float measuredHeight2 = f2 - this.f11070const.f11124new;
            float fMax = Math.max(f3, 0.0f);
            int i13 = 0;
            iM12549for = cdo.m12549for();
            i = i8;
            while (i < i8 + iM12549for) {
                View flexItemAt = getFlexItemAt(i);
                if (flexItemAt == null) {
                    i2 = i;
                    f4 = fMax;
                } else {
                    com.google.android.flexbox.Cif cif = this.f11087this;
                    f4 = fMax;
                    long j = cif.f11150new[i];
                    int iM12578default = cif.m12578default(j);
                    int iM12590throws = this.f11087this.m12590throws(j);
                    if (shouldMeasureChild(flexItemAt, iM12578default, iM12590throws, (LayoutParams) flexItemAt.getLayoutParams())) {
                        flexItemAt.measure(iM12578default, iM12590throws);
                    }
                    float topDecorationHeight = measuredHeight + ((ViewGroup.MarginLayoutParams) r13).topMargin + getTopDecorationHeight(flexItemAt);
                    float bottomDecorationHeight = measuredHeight2 - (((ViewGroup.MarginLayoutParams) r13).rightMargin + getBottomDecorationHeight(flexItemAt));
                    if (cfor.f11115this == 1) {
                        calculateItemDecorationsForChild(flexItemAt, f11064package);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, f11064package);
                        addView(flexItemAt, i13);
                        i13++;
                    }
                    int i14 = i13;
                    int leftDecorationWidth = i6 + getLeftDecorationWidth(flexItemAt);
                    int rightDecorationWidth = i7 - getRightDecorationWidth(flexItemAt);
                    boolean z = this.f11067case;
                    if (!z) {
                        view = flexItemAt;
                        i2 = i;
                        if (this.f11073else) {
                            this.f11087this.e(view, cdo, z, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                        } else {
                            this.f11087this.e(view, cdo, z, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    } else if (this.f11073else) {
                        view = flexItemAt;
                        i2 = i;
                        this.f11087this.e(flexItemAt, cdo, z, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                    } else {
                        view = flexItemAt;
                        i2 = i;
                        this.f11087this.e(view, cdo, z, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                    }
                    View view2 = view;
                    measuredHeight = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r13).topMargin + getBottomDecorationHeight(view2) + f4;
                    i13 = i14;
                    measuredHeight2 = bottomDecorationHeight - (((view2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r13).bottomMargin) + getTopDecorationHeight(view2)) + f4);
                }
                i = i2 + 1;
                fMax = f4;
            }
            cfor.f11111for += this.f11069class.f11115this;
            return cdo.m12547do();
        }
        f = paddingTop;
        f2 = height - paddingBottom;
        f3 = 0.0f;
        float measuredHeight3 = f - this.f11070const.f11124new;
        float measuredHeight22 = f2 - this.f11070const.f11124new;
        float fMax2 = Math.max(f3, 0.0f);
        int i132 = 0;
        iM12549for = cdo.m12549for();
        i = i8;
        while (i < i8 + iM12549for) {
        }
        cfor.f11111for += this.f11069class.f11115this;
        return cdo.m12547do();
    }

    private void b(int i, int i2) throws NoSuchFieldException {
        this.f11069class.f11115this = i;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z = !zIsMainAxisDirectionHorizontal && this.f11067case;
        if (i == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            this.f11069class.f11116try = this.f11075final.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View viewM12484throw = m12484throw(childAt, this.f11077goto.get(this.f11087this.f11148for[position]));
            this.f11069class.f11112goto = 1;
            Cfor cfor = this.f11069class;
            cfor.f11114new = position + cfor.f11112goto;
            if (this.f11087this.f11148for.length <= this.f11069class.f11114new) {
                this.f11069class.f11111for = -1;
            } else {
                Cfor cfor2 = this.f11069class;
                cfor2.f11111for = this.f11087this.f11148for[cfor2.f11114new];
            }
            if (z) {
                this.f11069class.f11116try = this.f11075final.getDecoratedStart(viewM12484throw);
                this.f11069class.f11108case = (-this.f11075final.getDecoratedStart(viewM12484throw)) + this.f11075final.getStartAfterPadding();
                Cfor cfor3 = this.f11069class;
                cfor3.f11108case = cfor3.f11108case >= 0 ? this.f11069class.f11108case : 0;
            } else {
                this.f11069class.f11116try = this.f11075final.getDecoratedEnd(viewM12484throw);
                this.f11069class.f11108case = this.f11075final.getDecoratedEnd(viewM12484throw) - this.f11075final.getEndAfterPadding();
            }
            if ((this.f11069class.f11111for == -1 || this.f11069class.f11111for > this.f11077goto.size() - 1) && this.f11069class.f11114new <= getFlexItemCount()) {
                int i3 = i2 - this.f11069class.f11108case;
                this.f11074extends.m12594do();
                if (i3 > 0) {
                    if (zIsMainAxisDirectionHorizontal) {
                        this.f11087this.m12585new(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i3, this.f11069class.f11114new, this.f11077goto);
                    } else {
                        this.f11087this.m12579else(this.f11074extends, iMakeMeasureSpec, iMakeMeasureSpec2, i3, this.f11069class.f11114new, this.f11077goto);
                    }
                    this.f11087this.m12592while(iMakeMeasureSpec, iMakeMeasureSpec2, this.f11069class.f11114new);
                    this.f11087this.l(this.f11069class.f11114new);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            this.f11069class.f11116try = this.f11075final.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View viewM12463final = m12463final(childAt2, this.f11077goto.get(this.f11087this.f11148for[position2]));
            this.f11069class.f11112goto = 1;
            int i4 = this.f11087this.f11148for[position2];
            if (i4 == -1) {
                i4 = 0;
            }
            if (i4 > 0) {
                this.f11069class.f11114new = position2 - this.f11077goto.get(i4 - 1).m12549for();
            } else {
                this.f11069class.f11114new = -1;
            }
            this.f11069class.f11111for = i4 > 0 ? i4 - 1 : 0;
            if (z) {
                this.f11069class.f11116try = this.f11075final.getDecoratedEnd(viewM12463final);
                this.f11069class.f11108case = this.f11075final.getDecoratedEnd(viewM12463final) - this.f11075final.getEndAfterPadding();
                Cfor cfor4 = this.f11069class;
                cfor4.f11108case = cfor4.f11108case >= 0 ? this.f11069class.f11108case : 0;
            } else {
                this.f11069class.f11116try = this.f11075final.getDecoratedStart(viewM12463final);
                this.f11069class.f11108case = (-this.f11075final.getDecoratedStart(viewM12463final)) + this.f11075final.getStartAfterPadding();
            }
        }
        Cfor cfor5 = this.f11069class;
        cfor5.f11109do = i2 - cfor5.f11108case;
    }

    /* renamed from: break, reason: not valid java name */
    private void m12454break() {
        this.f11077goto.clear();
        this.f11070const.m12539native();
        this.f11070const.f11124new = 0;
    }

    private void c(Cif cif, boolean z, boolean z2) {
        if (z2) {
            m12471interface();
        } else {
            this.f11069class.f11113if = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f11067case) {
            this.f11069class.f11109do = this.f11075final.getEndAfterPadding() - cif.f11121for;
        } else {
            this.f11069class.f11109do = cif.f11121for - getPaddingRight();
        }
        this.f11069class.f11114new = cif.f11119do;
        this.f11069class.f11112goto = 1;
        this.f11069class.f11115this = 1;
        this.f11069class.f11116try = cif.f11121for;
        this.f11069class.f11108case = Integer.MIN_VALUE;
        this.f11069class.f11111for = cif.f11123if;
        if (!z || this.f11077goto.size() <= 1 || cif.f11123if < 0 || cif.f11123if >= this.f11077goto.size() - 1) {
            return;
        }
        com.google.android.flexbox.Cdo cdo = this.f11077goto.get(cif.f11123if);
        Cfor.m12523this(this.f11069class);
        this.f11069class.f11114new += cdo.m12549for();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m12456catch() {
        if (this.f11075final != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.f11078if == 0) {
                this.f11075final = OrientationHelper.createHorizontalHelper(this);
                this.f11085super = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.f11075final = OrientationHelper.createVerticalHelper(this);
                this.f11085super = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (this.f11078if == 0) {
            this.f11075final = OrientationHelper.createVerticalHelper(this);
            this.f11085super = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f11075final = OrientationHelper.createHorizontalHelper(this);
            this.f11085super = OrientationHelper.createVerticalHelper(this);
        }
    }

    /* renamed from: class, reason: not valid java name */
    private int m12457class(RecyclerView.Recycler recycler, RecyclerView.State state, Cfor cfor) {
        if (cfor.f11108case != Integer.MIN_VALUE) {
            if (cfor.f11109do < 0) {
                cfor.f11108case += cfor.f11109do;
            }
            m12459continue(recycler, cfor);
        }
        int i = cfor.f11109do;
        int iM12547do = cfor.f11109do;
        int iM12474package = 0;
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        while (true) {
            if ((iM12547do <= 0 && !this.f11069class.f11113if) || !cfor.m12522switch(state, this.f11077goto)) {
                break;
            }
            com.google.android.flexbox.Cdo cdo = this.f11077goto.get(cfor.f11111for);
            cfor.f11114new = cdo.f11139super;
            iM12474package += m12474package(cdo, cfor);
            if (zIsMainAxisDirectionHorizontal || !this.f11067case) {
                cfor.f11116try += cdo.m12547do() * cfor.f11115this;
            } else {
                cfor.f11116try -= cdo.m12547do() * cfor.f11115this;
            }
            iM12547do -= cdo.m12547do();
        }
        cfor.f11109do -= iM12474package;
        if (cfor.f11108case != Integer.MIN_VALUE) {
            cfor.f11108case += iM12474package;
            if (cfor.f11109do < 0) {
                cfor.f11108case += cfor.f11109do;
            }
            m12459continue(recycler, cfor);
        }
        return i - cfor.f11109do;
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        m12456catch();
        View viewM12458const = m12458const(itemCount);
        View viewM12481super = m12481super(itemCount);
        if (state.getItemCount() == 0 || viewM12458const == null || viewM12481super == null) {
            return 0;
        }
        return Math.min(this.f11075final.getTotalSpace(), this.f11075final.getDecoratedEnd(viewM12481super) - this.f11075final.getDecoratedStart(viewM12458const));
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View viewM12458const = m12458const(itemCount);
        View viewM12481super = m12481super(itemCount);
        if (state.getItemCount() != 0 && viewM12458const != null && viewM12481super != null) {
            int position = getPosition(viewM12458const);
            int position2 = getPosition(viewM12481super);
            int iAbs = Math.abs(this.f11075final.getDecoratedEnd(viewM12481super) - this.f11075final.getDecoratedStart(viewM12458const));
            int i = this.f11087this.f11148for[position];
            if (i != 0 && i != -1) {
                return Math.round((i * (iAbs / ((r4[position2] - i) + 1))) + (this.f11075final.getStartAfterPadding() - this.f11075final.getDecoratedStart(viewM12458const)));
            }
        }
        return 0;
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View viewM12458const = m12458const(itemCount);
        View viewM12481super = m12481super(itemCount);
        if (state.getItemCount() == 0 || viewM12458const == null || viewM12481super == null) {
            return 0;
        }
        int iFindFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f11075final.getDecoratedEnd(viewM12481super) - this.f11075final.getDecoratedStart(viewM12458const)) / ((findLastVisibleItemPosition() - iFindFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    /* renamed from: const, reason: not valid java name */
    private View m12458const(int i) {
        View viewM12469import = m12469import(0, getChildCount(), i);
        if (viewM12469import == null) {
            return null;
        }
        int i2 = this.f11087this.f11148for[getPosition(viewM12469import)];
        if (i2 == -1) {
            return null;
        }
        return m12463final(viewM12469import, this.f11077goto.get(i2));
    }

    /* renamed from: continue, reason: not valid java name */
    private void m12459continue(RecyclerView.Recycler recycler, Cfor cfor) {
        if (cfor.f11107break) {
            if (cfor.f11115this == -1) {
                m12480strictfp(recycler, cfor);
            } else {
                m12488volatile(recycler, cfor);
            }
        }
    }

    private void d(Cif cif, boolean z, boolean z2) {
        if (z2) {
            m12471interface();
        } else {
            this.f11069class.f11113if = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f11067case) {
            this.f11069class.f11109do = cif.f11121for - this.f11075final.getStartAfterPadding();
        } else {
            this.f11069class.f11109do = (this.f11089throws.getWidth() - cif.f11121for) - this.f11075final.getStartAfterPadding();
        }
        this.f11069class.f11114new = cif.f11119do;
        this.f11069class.f11112goto = 1;
        this.f11069class.f11115this = -1;
        this.f11069class.f11116try = cif.f11121for;
        this.f11069class.f11108case = Integer.MIN_VALUE;
        this.f11069class.f11111for = cif.f11123if;
        if (!z || cif.f11123if <= 0 || this.f11077goto.size() <= cif.f11123if) {
            return;
        }
        com.google.android.flexbox.Cdo cdo = this.f11077goto.get(cif.f11123if);
        Cfor.m12504break(this.f11069class);
        this.f11069class.f11114new -= cdo.m12549for();
    }

    /* renamed from: default, reason: not valid java name */
    private int m12460default(int i) {
        int iMin;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m12456catch();
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.f11089throws;
        int width = zIsMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int width2 = zIsMainAxisDirectionHorizontal ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int iAbs = Math.abs(i);
            if (i < 0) {
                iMin = Math.min((width2 + this.f11070const.f11124new) - width, iAbs);
            } else {
                if (this.f11070const.f11124new + i <= 0) {
                    return i;
                }
                iMin = this.f11070const.f11124new;
            }
        } else {
            if (i > 0) {
                return Math.min((width2 - this.f11070const.f11124new) - width, i);
            }
            if (this.f11070const.f11124new + i >= 0) {
                return i;
            }
            iMin = this.f11070const.f11124new;
        }
        return -iMin;
    }

    private void ensureLayoutState() {
        if (this.f11069class == null) {
            this.f11069class = new Cfor();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private View m12463final(View view, com.google.android.flexbox.Cdo cdo) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = cdo.f11135goto;
        for (int i2 = 1; i2 < i; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f11067case || zIsMainAxisDirectionHorizontal) {
                    if (this.f11075final.getDecoratedStart(view) > this.f11075final.getDecoratedStart(childAt)) {
                        view = childAt;
                    }
                } else if (this.f11075final.getDecoratedEnd(view) < this.f11075final.getDecoratedEnd(childAt)) {
                }
            }
        }
        return view;
    }

    /* renamed from: finally, reason: not valid java name */
    private boolean m12464finally(View view, boolean z) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int iM12477public = m12477public(view);
        int iM12479static = m12479static(view);
        int iM12478return = m12478return(view);
        int iM12472native = m12472native(view);
        return z ? (paddingLeft <= iM12477public && width >= iM12478return) && (paddingTop <= iM12479static && height >= iM12472native) : (iM12477public >= width || iM12478return >= paddingLeft) && (iM12479static >= height || iM12472native >= paddingTop);
    }

    private int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) throws NoSuchFieldException {
        int iM12485throws;
        int endAfterPadding;
        if (!isMainAxisDirectionHorizontal() && this.f11067case) {
            int startAfterPadding = i - this.f11075final.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            iM12485throws = m12485throws(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding2 = this.f11075final.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            iM12485throws = -m12485throws(-endAfterPadding2, recycler, state);
        }
        int i2 = i + iM12485throws;
        if (!z || (endAfterPadding = this.f11075final.getEndAfterPadding() - i2) <= 0) {
            return iM12485throws;
        }
        this.f11075final.offsetChildren(endAfterPadding);
        return endAfterPadding + iM12485throws;
    }

    private int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) throws NoSuchFieldException {
        int iM12485throws;
        int startAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.f11067case) {
            int startAfterPadding2 = i - this.f11075final.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            iM12485throws = -m12485throws(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.f11075final.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            iM12485throws = m12485throws(-endAfterPadding, recycler, state);
        }
        int i2 = i + iM12485throws;
        if (!z || (startAfterPadding = i2 - this.f11075final.getStartAfterPadding()) <= 0) {
            return iM12485throws;
        }
        this.f11075final.offsetChildren(-startAfterPadding);
        return iM12485throws - startAfterPadding;
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m12466goto(View view, int i) {
        return (isMainAxisDirectionHorizontal() || !this.f11067case) ? this.f11075final.getDecoratedStart(view) >= this.f11075final.getEnd() - i : this.f11075final.getDecoratedEnd(view) <= i;
    }

    /* renamed from: implements, reason: not valid java name */
    private boolean m12468implements(RecyclerView.State state, Cif cif, SavedState savedState) {
        int i;
        if (!state.isPreLayout() && (i = this.f11091while) != -1) {
            if (i >= 0 && i < state.getItemCount()) {
                cif.f11119do = this.f11091while;
                cif.f11123if = this.f11087this.f11148for[cif.f11119do];
                SavedState savedState2 = this.f11088throw;
                if (savedState2 != null && savedState2.m12496else(state.getItemCount())) {
                    cif.f11121for = this.f11075final.getStartAfterPadding() + savedState.f11102if;
                    cif.f11120else = true;
                    cif.f11123if = -1;
                    return true;
                }
                if (this.f11079import != Integer.MIN_VALUE) {
                    if (isMainAxisDirectionHorizontal() || !this.f11067case) {
                        cif.f11121for = this.f11075final.getStartAfterPadding() + this.f11079import;
                    } else {
                        cif.f11121for = this.f11079import - this.f11075final.getEndPadding();
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.f11091while);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        cif.f11125try = this.f11091while < getPosition(getChildAt(0));
                    }
                    cif.m12545while();
                } else {
                    if (this.f11075final.getDecoratedMeasurement(viewFindViewByPosition) > this.f11075final.getTotalSpace()) {
                        cif.m12545while();
                        return true;
                    }
                    if (this.f11075final.getDecoratedStart(viewFindViewByPosition) - this.f11075final.getStartAfterPadding() < 0) {
                        cif.f11121for = this.f11075final.getStartAfterPadding();
                        cif.f11125try = false;
                        return true;
                    }
                    if (this.f11075final.getEndAfterPadding() - this.f11075final.getDecoratedEnd(viewFindViewByPosition) < 0) {
                        cif.f11121for = this.f11075final.getEndAfterPadding();
                        cif.f11125try = true;
                        return true;
                    }
                    cif.f11121for = cif.f11125try ? this.f11075final.getDecoratedEnd(viewFindViewByPosition) + this.f11075final.getTotalSpaceChange() : this.f11075final.getDecoratedStart(viewFindViewByPosition);
                }
                return true;
            }
            this.f11091while = -1;
            this.f11079import = Integer.MIN_VALUE;
        }
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    private View m12469import(int i, int i2, int i3) {
        m12456catch();
        ensureLayoutState();
        int startAfterPadding = this.f11075final.getStartAfterPadding();
        int endAfterPadding = this.f11075final.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f11075final.getDecoratedStart(childAt) >= startAfterPadding && this.f11075final.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m12470instanceof(RecyclerView.State state, Cif cif) {
        if (m12468implements(state, cif, this.f11088throw) || m12486transient(state, cif)) {
            return;
        }
        cif.m12545while();
        cif.f11119do = 0;
        cif.f11123if = 0;
    }

    /* renamed from: interface, reason: not valid java name */
    private void m12471interface() {
        int heightMode = isMainAxisDirectionHorizontal() ? getHeightMode() : getWidthMode();
        this.f11069class.f11113if = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    /* renamed from: native, reason: not valid java name */
    private int m12472native(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* renamed from: package, reason: not valid java name */
    private int m12474package(com.google.android.flexbox.Cdo cdo, Cfor cfor) {
        return isMainAxisDirectionHorizontal() ? m12475private(cdo, cfor) : m12453abstract(cdo, cfor);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* renamed from: private, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m12475private(com.google.android.flexbox.Cdo cdo, Cfor cfor) {
        float f;
        float f2;
        float f3;
        int iM12549for;
        int i;
        LayoutParams layoutParams;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int width = getWidth();
        int i2 = cfor.f11116try;
        if (cfor.f11115this == -1) {
            i2 -= cdo.f11132else;
        }
        int i3 = i2;
        int i4 = cfor.f11114new;
        int i5 = this.f11076for;
        int i6 = 1;
        if (i5 != 0) {
            if (i5 == 1) {
                int i7 = cdo.f11142try;
                float f4 = (width - i7) + paddingRight;
                f3 = 0.0f;
                f2 = i7 - paddingLeft;
                f = f4;
            } else if (i5 == 2) {
                int i8 = cdo.f11142try;
                f = paddingLeft + ((width - i8) / 2.0f);
                f2 = (width - paddingRight) - ((width - i8) / 2.0f);
            } else if (i5 == 3) {
                f = paddingLeft;
                f3 = (width - cdo.f11142try) / (cdo.f11135goto != 1 ? r4 - 1 : 1.0f);
                f2 = width - paddingRight;
            } else if (i5 == 4) {
                int i9 = cdo.f11135goto;
                f3 = i9 != 0 ? (width - cdo.f11142try) / i9 : 0.0f;
                float f5 = f3 / 2.0f;
                f = paddingLeft + f5;
                f2 = (width - paddingRight) - f5;
            } else {
                if (i5 != 5) {
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.f11076for);
                }
                f3 = cdo.f11135goto != 0 ? (width - cdo.f11142try) / (r4 + 1) : 0.0f;
                f = paddingLeft + f3;
                f2 = (width - paddingRight) - f3;
            }
            float measuredWidth = f - this.f11070const.f11124new;
            float measuredWidth2 = f2 - this.f11070const.f11124new;
            float fMax = Math.max(f3, 0.0f);
            int i10 = 0;
            iM12549for = cdo.m12549for();
            i = i4;
            while (i < i4 + iM12549for) {
                View flexItemAt = getFlexItemAt(i);
                if (flexItemAt != null) {
                    if (cfor.f11115this == i6) {
                        calculateItemDecorationsForChild(flexItemAt, f11064package);
                        addView(flexItemAt);
                    } else {
                        calculateItemDecorationsForChild(flexItemAt, f11064package);
                        addView(flexItemAt, i10);
                        i10++;
                    }
                    int i11 = i10;
                    com.google.android.flexbox.Cif cif = this.f11087this;
                    long j = cif.f11150new[i];
                    int iM12578default = cif.m12578default(j);
                    int iM12590throws = this.f11087this.m12590throws(j);
                    LayoutParams layoutParams2 = (LayoutParams) flexItemAt.getLayoutParams();
                    if (shouldMeasureChild(flexItemAt, iM12578default, iM12590throws, layoutParams2)) {
                        flexItemAt.measure(iM12578default, iM12590throws);
                    }
                    float leftDecorationWidth = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + getLeftDecorationWidth(flexItemAt);
                    float rightDecorationWidth = measuredWidth2 - (((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + getRightDecorationWidth(flexItemAt));
                    int topDecorationHeight = i3 + getTopDecorationHeight(flexItemAt);
                    if (this.f11067case) {
                        layoutParams = layoutParams2;
                        this.f11087this.d(flexItemAt, cdo, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    } else {
                        layoutParams = layoutParams2;
                        this.f11087this.d(flexItemAt, cdo, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + flexItemAt.getMeasuredWidth(), topDecorationHeight + flexItemAt.getMeasuredHeight());
                    }
                    i10 = i11;
                    measuredWidth = leftDecorationWidth + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + getRightDecorationWidth(flexItemAt) + fMax;
                    measuredWidth2 = rightDecorationWidth - (((flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + getLeftDecorationWidth(flexItemAt)) + fMax);
                }
                i++;
                i6 = 1;
            }
            cfor.f11111for += this.f11069class.f11115this;
            return cdo.m12547do();
        }
        f = paddingLeft;
        f2 = width - paddingRight;
        f3 = 0.0f;
        float measuredWidth3 = f - this.f11070const.f11124new;
        float measuredWidth22 = f2 - this.f11070const.f11124new;
        float fMax2 = Math.max(f3, 0.0f);
        int i102 = 0;
        iM12549for = cdo.m12549for();
        i = i4;
        while (i < i4 + iM12549for) {
        }
        cfor.f11111for += this.f11069class.f11115this;
        return cdo.m12547do();
    }

    /* renamed from: protected, reason: not valid java name */
    private void m12476protected() {
        int layoutDirection = getLayoutDirection();
        int i = this.f11072do;
        if (i == 0) {
            this.f11067case = layoutDirection == 1;
            this.f11073else = this.f11078if == 2;
            return;
        }
        if (i == 1) {
            this.f11067case = layoutDirection != 1;
            this.f11073else = this.f11078if == 2;
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            this.f11067case = z;
            if (this.f11078if == 2) {
                this.f11067case = !z;
            }
            this.f11073else = false;
            return;
        }
        if (i != 3) {
            this.f11067case = false;
            this.f11073else = false;
            return;
        }
        boolean z2 = layoutDirection == 1;
        this.f11067case = z2;
        if (this.f11078if == 2) {
            this.f11067case = !z2;
        }
        this.f11073else = true;
    }

    /* renamed from: public, reason: not valid java name */
    private int m12477public(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        while (i2 >= i) {
            removeAndRecycleViewAt(i2, recycler);
            i2--;
        }
    }

    /* renamed from: return, reason: not valid java name */
    private int m12478return(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    private boolean shouldMeasureChild(View view, int i, int i2, RecyclerView.LayoutParams layoutParams) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
    }

    /* renamed from: static, reason: not valid java name */
    private int m12479static(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m12480strictfp(RecyclerView.Recycler recycler, Cfor cfor) {
        if (cfor.f11108case < 0) {
            return;
        }
        this.f11075final.getEnd();
        int unused = cfor.f11108case;
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        int i = childCount - 1;
        int i2 = this.f11087this.f11148for[getPosition(getChildAt(i))];
        if (i2 == -1) {
            return;
        }
        com.google.android.flexbox.Cdo cdo = this.f11077goto.get(i2);
        int i3 = i;
        while (true) {
            if (i3 < 0) {
                break;
            }
            View childAt = getChildAt(i3);
            if (!m12466goto(childAt, cfor.f11108case)) {
                break;
            }
            if (cdo.f11139super == getPosition(childAt)) {
                if (i2 <= 0) {
                    childCount = i3;
                    break;
                } else {
                    i2 += cfor.f11115this;
                    cdo = this.f11077goto.get(i2);
                    childCount = i3;
                }
            }
            i3--;
        }
        recycleChildren(recycler, childCount, i);
    }

    /* renamed from: super, reason: not valid java name */
    private View m12481super(int i) {
        View viewM12469import = m12469import(getChildCount() - 1, -1, i);
        if (viewM12469import == null) {
            return null;
        }
        return m12484throw(viewM12469import, this.f11077goto.get(this.f11087this.f11148for[getPosition(viewM12469import)]));
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m12482synchronized(int i) {
        if (i >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f11087this.m12586public(childCount);
        this.f11087this.m12587return(childCount);
        this.f11087this.m12584native(childCount);
        if (i >= this.f11087this.f11148for.length) {
            return;
        }
        this.f11071default = i;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.f11091while = getPosition(childClosestToStart);
        if (isMainAxisDirectionHorizontal() || !this.f11067case) {
            this.f11079import = this.f11075final.getDecoratedStart(childClosestToStart) - this.f11075final.getStartAfterPadding();
        } else {
            this.f11079import = this.f11075final.getDecoratedEnd(childClosestToStart) + this.f11075final.getEndPadding();
        }
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m12483this(View view, int i) {
        return (isMainAxisDirectionHorizontal() || !this.f11067case) ? this.f11075final.getDecoratedEnd(view) <= i : this.f11075final.getEnd() - this.f11075final.getDecoratedStart(view) <= i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private View m12484throw(View view, com.google.android.flexbox.Cdo cdo) {
        boolean zIsMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - cdo.f11135goto) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f11067case || zIsMainAxisDirectionHorizontal) {
                    if (this.f11075final.getDecoratedEnd(view) < this.f11075final.getDecoratedEnd(childAt)) {
                        view = childAt;
                    }
                } else if (this.f11075final.getDecoratedStart(view) > this.f11075final.getDecoratedStart(childAt)) {
                }
            }
        }
        return view;
    }

    /* renamed from: throws, reason: not valid java name */
    private int m12485throws(int i, RecyclerView.Recycler recycler, RecyclerView.State state) throws NoSuchFieldException {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m12456catch();
        int i2 = 1;
        this.f11069class.f11107break = true;
        boolean z = !isMainAxisDirectionHorizontal() && this.f11067case;
        if (!z ? i <= 0 : i >= 0) {
            i2 = -1;
        }
        int iAbs = Math.abs(i);
        b(i2, iAbs);
        int iM12457class = this.f11069class.f11108case + m12457class(recycler, state, this.f11069class);
        if (iM12457class < 0) {
            return 0;
        }
        if (z) {
            if (iAbs > iM12457class) {
                i = (-i2) * iM12457class;
            }
        } else if (iAbs > iM12457class) {
            i = i2 * iM12457class;
        }
        this.f11075final.offsetChildren(-i);
        this.f11069class.f11110else = i;
        return i;
    }

    /* renamed from: transient, reason: not valid java name */
    private boolean m12486transient(RecyclerView.State state, Cif cif) {
        if (getChildCount() == 0) {
            return false;
        }
        View viewM12481super = cif.f11125try ? m12481super(state.getItemCount()) : m12458const(state.getItemCount());
        if (viewM12481super == null) {
            return false;
        }
        cif.m12538import(viewM12481super);
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.f11075final.getDecoratedStart(viewM12481super) >= this.f11075final.getEndAfterPadding() || this.f11075final.getDecoratedEnd(viewM12481super) < this.f11075final.getStartAfterPadding()) {
                cif.f11121for = cif.f11125try ? this.f11075final.getEndAfterPadding() : this.f11075final.getStartAfterPadding();
            }
        }
        return true;
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m12488volatile(RecyclerView.Recycler recycler, Cfor cfor) {
        int childCount;
        if (cfor.f11108case >= 0 && (childCount = getChildCount()) != 0) {
            int i = this.f11087this.f11148for[getPosition(getChildAt(0))];
            int i2 = -1;
            if (i == -1) {
                return;
            }
            com.google.android.flexbox.Cdo cdo = this.f11077goto.get(i);
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i3);
                if (!m12483this(childAt, cfor.f11108case)) {
                    break;
                }
                if (cdo.f11141throw == getPosition(childAt)) {
                    if (i >= this.f11077goto.size() - 1) {
                        i2 = i3;
                        break;
                    } else {
                        i += cfor.f11115this;
                        cdo = this.f11077goto.get(i);
                        i2 = i3;
                    }
                }
                i3++;
            }
            recycleChildren(recycler, 0, i2);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private View m12489while(int i, int i2, boolean z) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (m12464finally(childAt, z)) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (this.f11078if == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            int width = getWidth();
            View view = this.f11089throws;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (this.f11078if == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            return true;
        }
        int height = getHeight();
        View view = this.f11089throws;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = i < getPosition(getChildAt(0)) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m12490extends() {
        return this.f11067case;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewM12489while = m12489while(0, getChildCount(), true);
        if (viewM12489while == null) {
            return -1;
        }
        return getPosition(viewM12489while);
    }

    public int findFirstVisibleItemPosition() {
        View viewM12489while = m12489while(0, getChildCount(), false);
        if (viewM12489while == null) {
            return -1;
        }
        return getPosition(viewM12489while);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewM12489while = m12489while(getChildCount() - 1, -1, true);
        if (viewM12489while == null) {
            return -1;
        }
        return getPosition(viewM12489while);
    }

    public int findLastVisibleItemPosition() {
        View viewM12489while = m12489while(getChildCount() - 1, -1, false);
        if (viewM12489while == null) {
            return -1;
        }
        return getPosition(viewM12489while);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignItems() {
        return this.f11081new;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthCrossAxis(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (isMainAxisDirectionHorizontal()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (isMainAxisDirectionHorizontal()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexDirection() {
        return this.f11072do;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getFlexItemAt(int i) {
        View view = this.f11084static.get(i);
        return view != null ? view : this.f11066break.getViewForPosition(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexItemCount() {
        return this.f11068catch.getItemCount();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<com.google.android.flexbox.Cdo> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f11077goto.size());
        int size = this.f11077goto.size();
        for (int i = 0; i < size; i++) {
            com.google.android.flexbox.Cdo cdo = this.f11077goto.get(i);
            if (cdo.m12549for() != 0) {
                arrayList.add(cdo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<com.google.android.flexbox.Cdo> getFlexLinesInternal() {
        return this.f11077goto;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexWrap() {
        return this.f11078if;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getJustifyContent() {
        return this.f11076for;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getLargestMainSize() {
        if (this.f11077goto.size() == 0) {
            return 0;
        }
        int iMax = Integer.MIN_VALUE;
        int size = this.f11077goto.size();
        for (int i = 0; i < size; i++) {
            iMax = Math.max(iMax, this.f11077goto.get(i).f11142try);
        }
        return iMax;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getMaxLine() {
        return this.f11090try;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.f11083return;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getReorderedFlexItemAt(int i) {
        return getFlexItemAt(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getSumOfCrossSize() {
        int size = this.f11077goto.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f11077goto.get(i2).f11132else;
        }
        return i;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.f11072do;
        return i == 0 || i == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f11089throws = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.f11083return) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        m12482synchronized(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(@NonNull RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        m12482synchronized(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        m12482synchronized(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        m12482synchronized(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) throws NoSuchFieldException {
        int i;
        int i2;
        this.f11066break = recycler;
        this.f11068catch = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        m12476protected();
        m12456catch();
        ensureLayoutState();
        this.f11087this.m12586public(itemCount);
        this.f11087this.m12587return(itemCount);
        this.f11087this.m12584native(itemCount);
        this.f11069class.f11107break = false;
        SavedState savedState = this.f11088throw;
        if (savedState != null && savedState.m12496else(itemCount)) {
            this.f11091while = this.f11088throw.f11101do;
        }
        if (!this.f11070const.f11118case || this.f11091while != -1 || this.f11088throw != null) {
            this.f11070const.m12539native();
            m12470instanceof(state, this.f11070const);
            this.f11070const.f11118case = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.f11070const.f11125try) {
            d(this.f11070const, false, true);
        } else {
            c(this.f11070const, false, true);
        }
        a(itemCount);
        if (this.f11070const.f11125try) {
            m12457class(recycler, state, this.f11069class);
            i2 = this.f11069class.f11116try;
            c(this.f11070const, true, false);
            m12457class(recycler, state, this.f11069class);
            i = this.f11069class.f11116try;
        } else {
            m12457class(recycler, state, this.f11069class);
            i = this.f11069class.f11116try;
            d(this.f11070const, true, false);
            m12457class(recycler, state, this.f11069class);
            i2 = this.f11069class.f11116try;
        }
        if (getChildCount() > 0) {
            if (this.f11070const.f11125try) {
                fixLayoutStartGap(i2 + fixLayoutEndGap(i, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i + fixLayoutStartGap(i2, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f11088throw = null;
        this.f11091while = -1;
        this.f11079import = Integer.MIN_VALUE;
        this.f11071default = -1;
        this.f11070const.m12539native();
        this.f11084static.clear();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexItemAdded(View view, int i, int i2, com.google.android.flexbox.Cdo cdo) {
        calculateItemDecorationsForChild(view, f11064package);
        if (isMainAxisDirectionHorizontal()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            cdo.f11142try += leftDecorationWidth;
            cdo.f11127case += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            cdo.f11142try += topDecorationHeight;
            cdo.f11127case += topDecorationHeight;
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexLineAdded(com.google.android.flexbox.Cdo cdo) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f11088throw = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.f11088throw != null) {
            return new SavedState(this.f11088throw);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            View childClosestToStart = getChildClosestToStart();
            savedState.f11101do = getPosition(childClosestToStart);
            savedState.f11102if = this.f11075final.getDecoratedStart(childClosestToStart) - this.f11075final.getStartAfterPadding();
        } else {
            savedState.m12498goto();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) throws NoSuchFieldException {
        if (!isMainAxisDirectionHorizontal() || (this.f11078if == 0 && isMainAxisDirectionHorizontal())) {
            int iM12485throws = m12485throws(i, recycler, state);
            this.f11084static.clear();
            return iM12485throws;
        }
        int iM12460default = m12460default(i);
        this.f11070const.f11124new += iM12460default;
        this.f11085super.offsetChildren(-iM12460default);
        return iM12460default;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.f11091while = i;
        this.f11079import = Integer.MIN_VALUE;
        SavedState savedState = this.f11088throw;
        if (savedState != null) {
            savedState.m12498goto();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) throws NoSuchFieldException {
        if (isMainAxisDirectionHorizontal() || (this.f11078if == 0 && !isMainAxisDirectionHorizontal())) {
            int iM12485throws = m12485throws(i, recycler, state);
            this.f11084static.clear();
            return iM12485throws;
        }
        int iM12460default = m12460default(i);
        this.f11070const.f11124new += iM12460default;
        this.f11085super.offsetChildren(-iM12460default);
        return iM12460default;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignContent(int i) {
        throw new UnsupportedOperationException("Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute.");
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignItems(int i) {
        int i2 = this.f11081new;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                m12454break();
            }
            this.f11081new = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexDirection(int i) {
        if (this.f11072do != i) {
            removeAllViews();
            this.f11072do = i;
            this.f11075final = null;
            this.f11085super = null;
            m12454break();
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexLines(List<com.google.android.flexbox.Cdo> list) {
        this.f11077goto = list;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexWrap(int i) {
        if (i == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        }
        int i2 = this.f11078if;
        if (i2 != i) {
            if (i2 == 0 || i == 0) {
                removeAllViews();
                m12454break();
            }
            this.f11078if = i;
            this.f11075final = null;
            this.f11085super = null;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setJustifyContent(int i) {
        if (this.f11076for != i) {
            this.f11076for = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setMaxLine(int i) {
        if (this.f11090try != i) {
            this.f11090try = i;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.f11083return = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    /* renamed from: switch, reason: not valid java name */
    public int m12491switch(int i) {
        return this.f11087this.f11148for[i];
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void updateViewCache(int i, View view) {
        this.f11084static.put(i, view);
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        private int f11101do;

        /* renamed from: if, reason: not valid java name */
        private int f11102if;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public boolean m12496else(int i) {
            int i2 = this.f11101do;
            return i2 >= 0 && i2 < i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public void m12498goto() {
            this.f11101do = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.f11101do + ", mAnchorOffset=" + this.f11102if + MessageFormatter.DELIM_STOP;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f11101do);
            parcel.writeInt(this.f11102if);
        }

        public SavedState() {
        }

        private SavedState(Parcel parcel) {
            this.f11101do = parcel.readInt();
            this.f11102if = parcel.readInt();
        }

        private SavedState(SavedState savedState) {
            this.f11101do = savedState.f11101do;
            this.f11102if = savedState.f11102if;
        }
    }

    public FlexboxLayoutManager(Context context, int i) {
        this(context, i, 1);
    }

    public FlexboxLayoutManager(Context context, int i, int i2) {
        this.f11090try = -1;
        this.f11077goto = new ArrayList();
        this.f11087this = new com.google.android.flexbox.Cif(this);
        this.f11070const = new Cif();
        this.f11091while = -1;
        this.f11079import = Integer.MIN_VALUE;
        this.f11080native = Integer.MIN_VALUE;
        this.f11082public = Integer.MIN_VALUE;
        this.f11084static = new SparseArray<>();
        this.f11071default = -1;
        this.f11074extends = new Cif.C0055if();
        setFlexDirection(i);
        setFlexWrap(i2);
        setAlignItems(4);
        setAutoMeasureEnabled(true);
        this.f11086switch = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        m12482synchronized(i);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Cdo();

        /* renamed from: case, reason: not valid java name */
        private int f11092case;

        /* renamed from: do, reason: not valid java name */
        private float f11093do;

        /* renamed from: else, reason: not valid java name */
        private int f11094else;

        /* renamed from: for, reason: not valid java name */
        private int f11095for;

        /* renamed from: goto, reason: not valid java name */
        private int f11096goto;

        /* renamed from: if, reason: not valid java name */
        private float f11097if;

        /* renamed from: new, reason: not valid java name */
        private float f11098new;

        /* renamed from: this, reason: not valid java name */
        private boolean f11099this;

        /* renamed from: try, reason: not valid java name */
        private int f11100try;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$LayoutParams$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.f11095for;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.f11098new;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.f11093do;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.f11097if;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.f11096goto;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.f11094else;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.f11092case;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.f11100try;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return 1;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.f11099this;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int i) {
            this.f11095for = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float f) {
            this.f11098new = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float f) {
            this.f11093do = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float f) {
            this.f11097if = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int i) {
            ((ViewGroup.MarginLayoutParams) this).height = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int i) {
            this.f11096goto = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int i) {
            this.f11094else = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int i) {
            this.f11092case = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.f11100try = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int i) {
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int i) {
            ((ViewGroup.MarginLayoutParams) this).width = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean z) {
            this.f11099this = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.f11093do);
            parcel.writeFloat(this.f11097if);
            parcel.writeInt(this.f11095for);
            parcel.writeFloat(this.f11098new);
            parcel.writeInt(this.f11100try);
            parcel.writeInt(this.f11092case);
            parcel.writeInt(this.f11094else);
            parcel.writeInt(this.f11096goto);
            parcel.writeByte(this.f11099this ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.LayoutParams) layoutParams);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
            this.f11093do = layoutParams.f11093do;
            this.f11097if = layoutParams.f11097if;
            this.f11095for = layoutParams.f11095for;
            this.f11098new = layoutParams.f11098new;
            this.f11100try = layoutParams.f11100try;
            this.f11092case = layoutParams.f11092case;
            this.f11094else = layoutParams.f11094else;
            this.f11096goto = layoutParams.f11096goto;
            this.f11099this = layoutParams.f11099this;
        }

        public LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.f11093do = 0.0f;
            this.f11097if = 1.0f;
            this.f11095for = -1;
            this.f11098new = -1.0f;
            this.f11094else = 16777215;
            this.f11096goto = 16777215;
            this.f11093do = parcel.readFloat();
            this.f11097if = parcel.readFloat();
            this.f11095for = parcel.readInt();
            this.f11098new = parcel.readFloat();
            this.f11100try = parcel.readInt();
            this.f11092case = parcel.readInt();
            this.f11094else = parcel.readInt();
            this.f11096goto = parcel.readInt();
            this.f11099this = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f11090try = -1;
        this.f11077goto = new ArrayList();
        this.f11087this = new com.google.android.flexbox.Cif(this);
        this.f11070const = new Cif();
        this.f11091while = -1;
        this.f11079import = Integer.MIN_VALUE;
        this.f11080native = Integer.MIN_VALUE;
        this.f11082public = Integer.MIN_VALUE;
        this.f11084static = new SparseArray<>();
        this.f11071default = -1;
        this.f11074extends = new Cif.C0055if();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.reverseLayout) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.reverseLayout) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        setAutoMeasureEnabled(true);
        this.f11086switch = context;
    }
}

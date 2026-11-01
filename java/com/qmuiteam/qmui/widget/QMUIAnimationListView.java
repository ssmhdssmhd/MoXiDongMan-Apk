package com.qmuiteam.qmui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.collection.LongSparseArray;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.QMUILog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class QMUIAnimationListView extends ListView {

    /* renamed from: import, reason: not valid java name */
    private static final String f19338import = "QMUIAnimationListView";

    /* renamed from: native, reason: not valid java name */
    private static final long f19339native = 300;

    /* renamed from: public, reason: not valid java name */
    private static final long f19340public = 0;

    /* renamed from: return, reason: not valid java name */
    private static final long f19341return = 1000;

    /* renamed from: static, reason: not valid java name */
    private static final float f19342static = 0.5f;

    /* renamed from: break, reason: not valid java name */
    private ListAdapter f19343break;

    /* renamed from: case, reason: not valid java name */
    private final List<Manipulator> f19344case;

    /* renamed from: catch, reason: not valid java name */
    private Cgoto f19345catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f19346class;

    /* renamed from: const, reason: not valid java name */
    private int f19347const;

    /* renamed from: do, reason: not valid java name */
    public final LongSparseArray<Integer> f19348do;

    /* renamed from: else, reason: not valid java name */
    private final List<Manipulator> f19349else;

    /* renamed from: final, reason: not valid java name */
    private long f19350final;

    /* renamed from: for, reason: not valid java name */
    public final LongSparseArray<View> f19351for;

    /* renamed from: goto, reason: not valid java name */
    private long f19352goto;

    /* renamed from: if, reason: not valid java name */
    public final LongSparseArray<Integer> f19353if;

    /* renamed from: new, reason: not valid java name */
    public final Set<Long> f19354new;

    /* renamed from: super, reason: not valid java name */
    private float f19355super;

    /* renamed from: this, reason: not valid java name */
    private ValueAnimator f19356this;

    /* renamed from: throw, reason: not valid java name */
    private Interpolator f19357throw;

    /* renamed from: try, reason: not valid java name */
    public final Set<Long> f19358try;

    /* renamed from: while, reason: not valid java name */
    private boolean f19359while;

    public interface Manipulator<T extends ListAdapter> {
        void manipulate(T t);
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$case, reason: invalid class name */
    public class Ccase extends Celse {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f19360for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ WeakReference f19361if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(WeakReference weakReference, boolean z) {
            super(QMUIAnimationListView.this, null);
            this.f19361if = weakReference;
            this.f19360for = z;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f19361if.get() != null) {
                ((View) this.f19361if.get()).setAlpha(this.f19360for ? 0.0f : 1.0f);
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$do, reason: invalid class name */
    public class Cdo extends Celse {

        /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$do$do, reason: invalid class name and collision with other inner class name */
        public class ViewTreeObserverOnPreDrawListenerC0187do implements ViewTreeObserver.OnPreDrawListener {
            public ViewTreeObserverOnPreDrawListenerC0187do() {
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                QMUIAnimationListView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                QMUIAnimationListView.this.m23710this();
                return true;
            }
        }

        public Cdo() {
            super(QMUIAnimationListView.this, null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QMUIAnimationListView.this.f19345catch.notifyDataSetChanged();
            QMUIAnimationListView.this.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0187do());
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$else, reason: invalid class name */
    public abstract class Celse implements Animator.AnimatorListener {
        private Celse() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        public /* synthetic */ Celse(QMUIAnimationListView qMUIAnimationListView, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {
        public Cfor() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            QMUIAnimationListView.this.f19352goto = 0L;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$goto, reason: invalid class name */
    public static class Cgoto extends BaseAdapter {

        /* renamed from: do, reason: not valid java name */
        private ListAdapter f19367do;

        /* renamed from: for, reason: not valid java name */
        private final DataSetObserver f19368for;

        /* renamed from: if, reason: not valid java name */
        private boolean f19369if = true;

        /* renamed from: new, reason: not valid java name */
        private boolean f19370new;

        /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$goto$do, reason: invalid class name */
        public class Cdo extends DataSetObserver {
            public Cdo() {
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                if (Cgoto.this.f19369if) {
                    Cgoto.this.notifyDataSetChanged();
                }
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                Cgoto.this.notifyDataSetInvalidated();
            }
        }

        public Cgoto(ListAdapter listAdapter) {
            Cdo cdo = new Cdo();
            this.f19368for = cdo;
            this.f19370new = false;
            this.f19367do = listAdapter;
            listAdapter.registerDataSetObserver(cdo);
        }

        /* renamed from: for, reason: not valid java name */
        public void m23722for(boolean z) {
            this.f19369if = z;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f19367do.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f19367do.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f19367do.getItemId(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return this.f19367do.getItemViewType(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return this.f19367do.getView(i, view, viewGroup);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return this.f19367do.getViewTypeCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            boolean zHasStableIds = this.f19367do.hasStableIds();
            this.f19370new = zHasStableIds;
            return zHasStableIds;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m23723if() {
            return this.f19370new;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                QMUILog.m23435do(QMUIAnimationListView.f19338import, "notifyDataSetChanged not in main Thread", new Object[0]);
            } else {
                super.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            QMUIAnimationListView.this.f19352goto = valueAnimator.getCurrentPlayTime();
            QMUIAnimationListView.this.invalidate();
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$new, reason: invalid class name */
    public class Cnew extends Celse {
        public Cnew() {
            super(QMUIAnimationListView.this, null);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QMUIAnimationListView.this.m23701catch();
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.QMUIAnimationListView$try, reason: invalid class name */
    public class Ctry implements Runnable {
        public Ctry() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIAnimationListView.this.f19346class = false;
            QMUIAnimationListView.this.m23708public();
        }
    }

    public QMUIAnimationListView(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m23699break(Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f19348do.size(); i++) {
            long jKeyAt = this.f19348do.keyAt(i);
            if (m23720while(jKeyAt) < 0) {
                Animator animatorM23714const = m23714const(getChildAt(this.f19353if.get(jKeyAt).intValue()));
                this.f19353if.remove(jKeyAt);
                animatorSet.play(animatorM23714const);
                arrayList.add(Long.valueOf(jKeyAt));
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.f19348do.remove(((Long) arrayList.get(i2)).longValue());
        }
        if (this.f19359while) {
            for (int i3 = 0; i3 < this.f19353if.size(); i3++) {
                View childAt = getChildAt(this.f19353if.valueAt(i3).intValue());
                ViewCompat.setHasTransientState(childAt, true);
                this.f19351for.put(this.f19353if.keyAt(i3), childAt);
            }
        }
        if (animatorSet.getChildAnimations().isEmpty()) {
            animatorListener.onAnimationEnd(animatorSet);
        } else {
            animatorSet.addListener(animatorListener);
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m23701catch() {
        this.f19345catch.m23722for(true);
        this.f19356this = null;
        if (this.f19359while) {
            for (int i = 0; i < this.f19351for.size(); i++) {
                this.f19351for.valueAt(i).setAlpha(1.0f);
            }
            this.f19351for.clear();
        }
        this.f19346class = false;
        setEnabled(true);
        setClickable(true);
        m23708public();
    }

    /* renamed from: goto, reason: not valid java name */
    private void m23704goto() {
        setEnabled(false);
        setClickable(false);
        m23699break(new Cdo());
    }

    /* renamed from: import, reason: not valid java name */
    private void m23706import() {
        setWillNotDraw(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public void m23708public() {
        if (!this.f19349else.isEmpty()) {
            this.f19346class = true;
            Iterator<Manipulator> it = this.f19349else.iterator();
            while (it.hasNext()) {
                it.next().manipulate(this.f19343break);
            }
            this.f19349else.clear();
            this.f19345catch.notifyDataSetChanged();
            post(new Ctry());
            return;
        }
        if (this.f19344case.isEmpty()) {
            return;
        }
        this.f19346class = true;
        m23709static();
        Iterator<Manipulator> it2 = this.f19344case.iterator();
        while (it2.hasNext()) {
            it2.next().manipulate(this.f19343break);
        }
        this.f19344case.clear();
        m23704goto();
    }

    /* renamed from: static, reason: not valid java name */
    private void m23709static() {
        this.f19348do.clear();
        this.f19353if.clear();
        this.f19354new.clear();
        this.f19358try.clear();
        this.f19351for.clear();
        this.f19345catch.m23722for(false);
        int childCount = getChildCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            long itemId = this.f19345catch.getItemId(firstVisiblePosition + i);
            this.f19348do.put(itemId, Integer.valueOf(childAt.getTop()));
            this.f19353if.put(itemId, Integer.valueOf(i));
        }
        for (int i2 = 0; i2 < firstVisiblePosition; i2++) {
            this.f19354new.add(Long.valueOf(this.f19345catch.getItemId(i2)));
        }
        int count = this.f19345catch.getCount();
        for (int i3 = firstVisiblePosition + childCount; i3 < count; i3++) {
            this.f19358try.add(Long.valueOf(this.f19345catch.getItemId(i3)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ae A[SYNTHETIC] */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m23710this() {
        AnimatorSet animatorSet = new AnimatorSet();
        int childCount = getChildCount();
        int firstVisiblePosition = getFirstVisiblePosition();
        if (this.f19359while) {
            for (int i = 0; i < this.f19351for.size(); i++) {
                ViewCompat.setHasTransientState(this.f19351for.valueAt(i), false);
            }
        }
        Animator animatorM23713class = null;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            childAt.setAlpha(1.0f);
            int top = childAt.getTop();
            int i5 = firstVisiblePosition + i4;
            long itemId = this.f19345catch.getItemId(i5);
            if (this.f19348do.indexOfKey(itemId) > -1) {
                int iIntValue = this.f19348do.get(itemId).intValue();
                this.f19348do.remove(itemId);
                this.f19353if.remove(itemId);
                if (this.f19359while) {
                    this.f19351for.remove(itemId);
                }
                if (iIntValue != top) {
                    animatorM23713class = m23716final(childAt, iIntValue, top);
                }
            } else if (this.f19354new.contains(Long.valueOf(itemId))) {
                animatorM23713class = m23716final(childAt, -childAt.getHeight(), top);
            } else if (this.f19358try.contains(Long.valueOf(itemId))) {
                animatorM23713class = m23716final(childAt, getHeight(), top);
            } else {
                if (i2 == -1) {
                    i2 = top;
                    i3 = i5;
                }
                animatorM23713class = m23713class(childAt, top, i5, i2, i3);
                if (animatorM23713class == null) {
                    animatorSet.play(animatorM23713class);
                }
            }
            i2 = -1;
            if (animatorM23713class == null) {
            }
        }
        if (this.f19359while && this.f19351for.size() > 0) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f19356this = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new Cif());
            this.f19356this.addListener(new Cfor());
            this.f19356this.setDuration(getChangeDisappearDuration());
            this.f19356this.start();
        }
        animatorSet.addListener(new Cnew());
        animatorSet.start();
    }

    /* renamed from: throw, reason: not valid java name */
    private long m23711throw(int i, int i2) {
        return Math.max(0L, Math.min((long) (Math.abs(i - i2) * this.f19355super), 1000L));
    }

    /* renamed from: class, reason: not valid java name */
    public Animator m23713class(View view, int i, int i2, int i3, int i4) {
        view.setAlpha(0.0f);
        view.clearAnimation();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(m23715else(view, true, 50L, false));
        if (i3 != i) {
            animatorSet.play(m23716final(view, i3, i));
        }
        animatorSet.setStartDelay((long) (view.getHeight() * this.f19355super));
        return animatorSet;
    }

    /* renamed from: const, reason: not valid java name */
    public Animator m23714const(View view) {
        return m23715else(view, false, f19339native, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return isEnabled() && super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: else, reason: not valid java name */
    public ObjectAnimator m23715else(View view, boolean z, long j, boolean z2) {
        float[] fArr = {1.0f, 0.0f};
        if (z) {
            // fill-array-data instruction
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", fArr);
        objectAnimatorOfFloat.setDuration(j);
        if (z2) {
            objectAnimatorOfFloat.addListener(new Ccase(new WeakReference(view), z));
        }
        return objectAnimatorOfFloat;
    }

    /* renamed from: final, reason: not valid java name */
    public Animator m23716final(View view, int i, int i2) {
        return m23719super(view, i, i2, m23711throw(i, i2));
    }

    public long getChangeDisappearDuration() {
        return (long) (getHeight() * this.f19355super);
    }

    public float getOffsetDurationUnit() {
        return this.f19355super;
    }

    public ListAdapter getRealAdapter() {
        return this.f19343break;
    }

    /* renamed from: native, reason: not valid java name */
    public <T extends ListAdapter> void m23717native(Manipulator<T> manipulator) {
        if (!this.f19345catch.m23723if()) {
            m23718return(manipulator);
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean z = jUptimeMillis - this.f19350final > ((long) this.f19347const);
        this.f19350final = jUptimeMillis;
        if (this.f19346class) {
            if (z) {
                this.f19344case.add(manipulator);
                return;
            } else {
                this.f19349else.add(manipulator);
                return;
            }
        }
        if (!z) {
            manipulator.manipulate(this.f19343break);
            this.f19345catch.notifyDataSetChanged();
        } else {
            this.f19346class = true;
            m23709static();
            manipulator.manipulate(this.f19343break);
            m23704goto();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006f A[PHI: r2
      0x006f: PHI (r2v8 int) = (r2v7 int), (r2v17 int) binds: [B:21:0x006c, B:18:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        ValueAnimator valueAnimator;
        int iIntValue;
        super.onDraw(canvas);
        if (this.f19359while && (valueAnimator = this.f19356this) != null && valueAnimator.isStarted() && this.f19351for.size() > 0 && this.f19346class) {
            for (int i = 0; i < this.f19351for.size(); i++) {
                long jKeyAt = this.f19351for.keyAt(i);
                View viewValueAt = this.f19351for.valueAt(i);
                int iM23720while = m23720while(jKeyAt);
                int i2 = (int) (this.f19352goto / this.f19355super);
                if (iM23720while < getFirstVisiblePosition()) {
                    iIntValue = this.f19348do.get(jKeyAt).intValue() - i2;
                    if (iIntValue >= (-viewValueAt.getHeight())) {
                        viewValueAt.layout(0, iIntValue, viewValueAt.getWidth(), viewValueAt.getHeight() + iIntValue);
                        viewValueAt.setAlpha(1.0f - ((this.f19352goto * 1.0f) / getChangeDisappearDuration()));
                        drawChild(canvas, viewValueAt, getDrawingTime());
                    }
                } else {
                    iIntValue = this.f19348do.get(jKeyAt).intValue() + i2;
                    if (iIntValue > getHeight()) {
                    }
                }
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public <T extends ListAdapter> void m23718return(Manipulator<T> manipulator) {
        if (this.f19346class) {
            this.f19349else.add(manipulator);
        } else {
            manipulator.manipulate(this.f19343break);
            this.f19345catch.notifyDataSetChanged();
        }
    }

    public void setAnimationManipulateDurationLimit(int i) {
        this.f19347const = i;
    }

    public void setOffsetDurationUnit(float f) {
        this.f19355super = f;
    }

    public void setOffsetInterpolator(Interpolator interpolator) {
        this.f19357throw = interpolator;
    }

    public void setOpenChangeDisappearAnimation(boolean z) {
        this.f19359while = z;
    }

    /* renamed from: super, reason: not valid java name */
    public Animator m23719super(View view, int i, int i2, long j) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", i - i2, 0.0f);
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.setInterpolator(this.f19357throw);
        return objectAnimatorOfFloat;
    }

    /* renamed from: while, reason: not valid java name */
    public int m23720while(long j) {
        for (int i = 0; i < this.f19345catch.getCount(); i++) {
            if (this.f19345catch.getItemId(i) == j) {
                return i;
            }
        }
        return -1;
    }

    public QMUIAnimationListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19348do = new LongSparseArray<>();
        this.f19353if = new LongSparseArray<>();
        this.f19351for = new LongSparseArray<>();
        this.f19354new = new HashSet();
        this.f19358try = new HashSet();
        this.f19344case = new ArrayList();
        this.f19349else = new ArrayList();
        this.f19352goto = 0L;
        this.f19346class = false;
        this.f19347const = 0;
        this.f19350final = 0L;
        this.f19355super = 0.5f;
        this.f19357throw = new LinearInterpolator();
        this.f19359while = false;
        m23706import();
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        this.f19343break = listAdapter;
        Cgoto cgoto = listAdapter != null ? new Cgoto(this.f19343break) : null;
        this.f19345catch = cgoto;
        super.setAdapter((ListAdapter) cgoto);
    }

    public QMUIAnimationListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19348do = new LongSparseArray<>();
        this.f19353if = new LongSparseArray<>();
        this.f19351for = new LongSparseArray<>();
        this.f19354new = new HashSet();
        this.f19358try = new HashSet();
        this.f19344case = new ArrayList();
        this.f19349else = new ArrayList();
        this.f19352goto = 0L;
        this.f19346class = false;
        this.f19347const = 0;
        this.f19350final = 0L;
        this.f19355super = 0.5f;
        this.f19357throw = new LinearInterpolator();
        this.f19359while = false;
        m23706import();
    }

    @TargetApi(21)
    public QMUIAnimationListView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f19348do = new LongSparseArray<>();
        this.f19353if = new LongSparseArray<>();
        this.f19351for = new LongSparseArray<>();
        this.f19354new = new HashSet();
        this.f19358try = new HashSet();
        this.f19344case = new ArrayList();
        this.f19349else = new ArrayList();
        this.f19352goto = 0L;
        this.f19346class = false;
        this.f19347const = 0;
        this.f19350final = 0L;
        this.f19355super = 0.5f;
        this.f19357throw = new LinearInterpolator();
        this.f19359while = false;
        m23706import();
    }
}

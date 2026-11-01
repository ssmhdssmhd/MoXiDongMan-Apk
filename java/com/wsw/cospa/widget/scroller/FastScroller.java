package com.wsw.cospa.widget.scroller;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class FastScroller extends LinearLayout {
    private static final int BUBBLE_ANIM_DURATION = 100;
    private static final int SCROLLBAR_ANIM_DURATION = 300;
    private static final int SCROLLBAR_HIDE_DELAY = 1000;
    private static final int TRACK_SNAP_RANGE = 5;
    private ViewPropertyAnimator bubbleAnimator;

    @ColorInt
    private int bubbleColor;
    private int bubbleHeight;
    private Drawable bubbleImage;
    private Size bubbleSize;
    private TextView bubbleView;
    private FastScrollListener fastScrollListener;

    @ColorInt
    private int handleColor;
    private int handleHeight;
    private Drawable handleImage;
    private ImageView handleView;
    private boolean hideScrollbar;
    private View.OnLayoutChangeListener layoutChangeListener;
    private final Runnable positionFixer;
    private RecyclerView recyclerView;
    private final RecyclerView.OnScrollListener scrollListener;
    private View scrollbar;
    private ViewPropertyAnimator scrollbarAnimator;
    private final Runnable scrollbarHider;
    private SectionIndexer sectionIndexer;
    private boolean showBubble;
    private SwipeRefreshLayout swipeRefreshLayout;
    private Drawable trackImage;
    private ImageView trackView;
    private int viewHeight;

    public interface FastScrollListener {
        void onFastScrollStart(FastScroller fastScroller);

        void onFastScrollStop(FastScroller fastScroller);
    }

    public interface SectionIndexer {
        CharSequence getSectionText(int i);
    }

    public enum Size {
        NORMAL(R.drawable.arg_res_0x7f0800a6, R.dimen.arg_res_0x7f0700ab),
        SMALL(R.drawable.arg_res_0x7f0800a7, R.dimen.arg_res_0x7f0700ac);


        @DrawableRes
        public int drawableId;

        @DimenRes
        public int textSizeId;

        Size(@DrawableRes int i, @DimenRes int i2) {
            this.drawableId = i;
            this.textSizeId = i2;
        }

        public static Size fromOrdinal(int i) {
            return (i < 0 || i >= values().length) ? NORMAL : values()[i];
        }
    }

    public FastScroller(@NonNull Context context) {
        this(context, Size.NORMAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAnimation(ViewPropertyAnimator viewPropertyAnimator) {
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findFirstVisibleItemPosition(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).findFirstVisibleItemPositions(null)[0];
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getScrollProportion(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0.0f;
        }
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        int iComputeVerticalScrollRange = recyclerView.computeVerticalScrollRange();
        int i = this.viewHeight;
        float f = iComputeVerticalScrollRange - i;
        float f2 = iComputeVerticalScrollOffset;
        if (f <= 0.0f) {
            f = 1.0f;
        }
        return i * (f2 / f);
    }

    private int getValueInRange(int i, int i2, int i3) {
        return Math.min(Math.max(i, i3), i2);
    }

    private void hideBubble() {
        if (isViewVisible(this.bubbleView)) {
            this.bubbleAnimator = this.bubbleView.animate().alpha(0.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.wsw.cospa.widget.scroller.FastScroller.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    FastScroller.this.bubbleView.setVisibility(8);
                    FastScroller.this.bubbleAnimator = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    FastScroller.this.bubbleView.setVisibility(8);
                    FastScroller.this.bubbleAnimator = null;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideScrollbar() {
        this.scrollbarAnimator = this.scrollbar.animate().translationX(getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0700b5)).alpha(0.0f).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.wsw.cospa.widget.scroller.FastScroller.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                FastScroller.this.scrollbar.setVisibility(8);
                FastScroller.this.scrollbarAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                FastScroller.this.scrollbar.setVisibility(8);
                FastScroller.this.scrollbarAnimator = null;
            }
        });
    }

    private boolean isLayoutReversed(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getReverseLayout();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getReverseLayout();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isViewVisible(View view) {
        return view != null && view.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$attachRecyclerView$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        setViewPositions(getScrollProportion(this.recyclerView), false);
    }

    private void layout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        layout(context, attributeSet, Size.NORMAL);
    }

    private void setHandleSelected(boolean z) {
        this.handleView.setSelected(z);
        DrawableCompat.setTint(this.handleImage, z ? this.bubbleColor : this.handleColor);
    }

    private void setRecyclerViewPosition(float f) {
        SectionIndexer sectionIndexer;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        int itemCount = this.recyclerView.getAdapter().getItemCount();
        float f2 = 0.0f;
        if (this.handleView.getY() != 0.0f) {
            float y = this.handleView.getY() + this.handleHeight;
            int i = this.viewHeight;
            f2 = y >= ((float) (i + (-5))) ? 1.0f : f / i;
        }
        int iRound = Math.round(f2 * itemCount);
        if (isLayoutReversed(this.recyclerView.getLayoutManager())) {
            iRound = itemCount - iRound;
        }
        int valueInRange = getValueInRange(0, itemCount - 1, iRound);
        RecyclerView.LayoutManager layoutManager = this.recyclerView.getLayoutManager();
        if (layoutManager != null) {
            layoutManager.scrollToPosition(valueInRange);
        }
        if (!this.showBubble || (sectionIndexer = this.sectionIndexer) == null) {
            return;
        }
        this.bubbleView.setText(sectionIndexer.getSectionText(valueInRange));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setViewPositions(float f, boolean z) {
        this.bubbleHeight = this.bubbleView.getMeasuredHeight();
        int measuredHeight = this.handleView.getMeasuredHeight();
        this.handleHeight = measuredHeight;
        int i = this.viewHeight;
        int i2 = this.bubbleHeight;
        int i3 = (i - i2) - (measuredHeight / 2);
        int i4 = (int) (f - i2);
        int i5 = 0;
        int valueInRange = getValueInRange(0, i3, i4);
        int valueInRange2 = getValueInRange(0, this.viewHeight - this.handleHeight, (int) (f - (r3 / 2)));
        if (z) {
            i5 = valueInRange;
        } else {
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView == null) {
                return;
            }
            if (!recyclerView.canScrollVertically(1)) {
                int i6 = this.viewHeight;
                int i7 = i6 - this.bubbleHeight;
                int i8 = this.handleHeight;
                i5 = i7 - (i8 / 2);
                valueInRange2 = i6 - i8;
            } else if (!this.recyclerView.canScrollVertically(-1)) {
                valueInRange2 = 0;
            }
        }
        if (this.showBubble) {
            this.bubbleView.setY(i5);
        }
        this.handleView.setY(valueInRange2);
    }

    private void showBubble() {
        if (isViewVisible(this.bubbleView)) {
            return;
        }
        this.bubbleView.setVisibility(0);
        this.bubbleAnimator = this.bubbleView.animate().alpha(1.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.wsw.cospa.widget.scroller.FastScroller.3
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showScrollbar() {
        if (this.recyclerView.computeVerticalScrollRange() - this.viewHeight > 0) {
            this.scrollbar.setTranslationX(getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0700b5));
            this.scrollbar.setVisibility(0);
            this.scrollbarAnimator = this.scrollbar.animate().translationX(0.0f).alpha(1.0f).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: com.wsw.cospa.widget.scroller.FastScroller.5
            });
        }
    }

    private void updateViewHeights() {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.bubbleView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        this.bubbleHeight = this.bubbleView.getMeasuredHeight();
        this.handleView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        this.handleHeight = this.handleView.getMeasuredHeight();
    }

    public void attachRecyclerView(@NonNull RecyclerView recyclerView) throws Resources.NotFoundException {
        this.recyclerView = recyclerView;
        if (getParent() instanceof ViewGroup) {
            setLayoutParams((ViewGroup) getParent());
        } else if (recyclerView.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) recyclerView.getParent();
            viewGroup.addView(this);
            setLayoutParams(viewGroup);
        }
        recyclerView.addOnScrollListener(this.scrollListener);
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: android.support.v4.ja0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f3036do.lambda$attachRecyclerView$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        this.layoutChangeListener = onLayoutChangeListener;
        recyclerView.addOnLayoutChangeListener(onLayoutChangeListener);
    }

    public void detachRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this.scrollListener);
            this.recyclerView = null;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.viewHeight = i2;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return super.onTouchEvent(motionEvent);
                    }
                }
            }
            requestDisallowInterceptTouchEvent(false);
            setHandleSelected(false);
            if (this.hideScrollbar) {
                getHandler().postDelayed(this.scrollbarHider, 1000L);
            }
            hideBubble();
            FastScrollListener fastScrollListener = this.fastScrollListener;
            if (fastScrollListener != null) {
                fastScrollListener.onFastScrollStop(this);
            }
            return true;
        }
        if (motionEvent.getX() < this.handleView.getX() - ViewCompat.getPaddingStart(this.scrollbar)) {
            return false;
        }
        requestDisallowInterceptTouchEvent(true);
        setHandleSelected(true);
        getHandler().removeCallbacks(this.scrollbarHider);
        cancelAnimation(this.scrollbarAnimator);
        cancelAnimation(this.bubbleAnimator);
        if (!isViewVisible(this.scrollbar)) {
            showScrollbar();
        }
        if (this.showBubble && this.sectionIndexer != null) {
            showBubble();
        }
        FastScrollListener fastScrollListener2 = this.fastScrollListener;
        if (fastScrollListener2 != null) {
            fastScrollListener2.onFastScrollStart(this);
        }
        View.OnLayoutChangeListener onLayoutChangeListener = this.layoutChangeListener;
        if (onLayoutChangeListener != null) {
            this.recyclerView.removeOnLayoutChangeListener(onLayoutChangeListener);
            this.layoutChangeListener = null;
        }
        float y = motionEvent.getY();
        setViewPositions(y, true);
        setRecyclerViewPosition(y);
        return true;
    }

    public void setBubbleColor(@ColorInt int i) {
        Drawable drawable;
        this.bubbleColor = i;
        if (this.bubbleImage == null && (drawable = ContextCompat.getDrawable(getContext(), this.bubbleSize.drawableId)) != null) {
            Drawable drawableWrap = DrawableCompat.wrap(drawable);
            this.bubbleImage = drawableWrap;
            drawableWrap.mutate();
        }
        DrawableCompat.setTint(this.bubbleImage, this.bubbleColor);
        ViewCompat.setBackground(this.bubbleView, this.bubbleImage);
    }

    public void setBubbleTextColor(@ColorInt int i) {
        this.bubbleView.setTextColor(i);
    }

    public void setBubbleTextSize(int i) {
        this.bubbleView.setTextSize(i);
    }

    public void setBubbleVisible(boolean z) {
        this.showBubble = z;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setVisibility(z ? 0 : 8);
    }

    public void setFastScrollListener(@Nullable FastScrollListener fastScrollListener) {
        this.fastScrollListener = fastScrollListener;
    }

    public void setHandleColor(@ColorInt int i) {
        Drawable drawable;
        this.handleColor = i;
        if (this.handleImage == null && (drawable = ContextCompat.getDrawable(getContext(), R.drawable.arg_res_0x7f0800a8)) != null) {
            Drawable drawableWrap = DrawableCompat.wrap(drawable);
            this.handleImage = drawableWrap;
            drawableWrap.mutate();
        }
        DrawableCompat.setTint(this.handleImage, this.handleColor);
        this.handleView.setImageDrawable(this.handleImage);
    }

    public void setHideScrollbar(boolean z) {
        this.hideScrollbar = z;
        this.scrollbar.setVisibility(z ? 8 : 0);
    }

    @Override // android.view.View
    public void setLayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
        layoutParams.width = -2;
        super.setLayoutParams(layoutParams);
    }

    public void setSectionIndexer(@Nullable SectionIndexer sectionIndexer) {
        this.sectionIndexer = sectionIndexer;
    }

    public void setSwipeRefreshLayout(@Nullable SwipeRefreshLayout swipeRefreshLayout) {
        this.swipeRefreshLayout = swipeRefreshLayout;
    }

    public void setTrackColor(@ColorInt int i) {
        Drawable drawable;
        if (this.trackImage == null && (drawable = ContextCompat.getDrawable(getContext(), R.drawable.arg_res_0x7f0800a9)) != null) {
            Drawable drawableWrap = DrawableCompat.wrap(drawable);
            this.trackImage = drawableWrap;
            drawableWrap.mutate();
        }
        DrawableCompat.setTint(this.trackImage, i);
        this.trackView.setImageDrawable(this.trackImage);
    }

    public void setTrackVisible(boolean z) {
        this.trackView.setVisibility(z ? 0 : 8);
    }

    public FastScroller(@NonNull Context context, Size size) throws Resources.NotFoundException {
        super(context);
        this.scrollbarHider = new Runnable() { // from class: android.support.v4.ka0
            @Override // java.lang.Runnable
            public final void run() {
                this.f3342do.hideScrollbar();
            }
        };
        this.positionFixer = new Runnable() { // from class: com.wsw.cospa.widget.scroller.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                if (FastScroller.this.handleView != null && !FastScroller.this.handleView.isSelected() && FastScroller.this.isEnabled()) {
                    FastScroller fastScroller = FastScroller.this;
                    fastScroller.setViewPositions(fastScroller.getScrollProportion(fastScroller.recyclerView), false);
                }
                if (FastScroller.this.swipeRefreshLayout != null) {
                    FastScroller fastScroller2 = FastScroller.this;
                    int iFindFirstVisibleItemPosition = fastScroller2.findFirstVisibleItemPosition(fastScroller2.recyclerView.getLayoutManager());
                    int top = FastScroller.this.recyclerView.getChildCount() == 0 ? 0 : FastScroller.this.recyclerView.getChildAt(0).getTop();
                    SwipeRefreshLayout swipeRefreshLayout = FastScroller.this.swipeRefreshLayout;
                    if (iFindFirstVisibleItemPosition == 0 && top >= 0) {
                        z = true;
                    }
                    swipeRefreshLayout.setEnabled(z);
                }
            }
        };
        this.scrollListener = new RecyclerView.OnScrollListener() { // from class: com.wsw.cospa.widget.scroller.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (FastScroller.this.isEnabled()) {
                    if (i == 0) {
                        if (!FastScroller.this.hideScrollbar || FastScroller.this.handleView.isSelected()) {
                            return;
                        }
                        FastScroller.this.getHandler().postDelayed(FastScroller.this.scrollbarHider, 1000L);
                        return;
                    }
                    if (i != 1) {
                        return;
                    }
                    FastScroller.this.getHandler().removeCallbacks(FastScroller.this.scrollbarHider);
                    FastScroller fastScroller = FastScroller.this;
                    fastScroller.cancelAnimation(fastScroller.scrollbarAnimator);
                    FastScroller fastScroller2 = FastScroller.this;
                    if (fastScroller2.isViewVisible(fastScroller2.scrollbar)) {
                        return;
                    }
                    FastScroller.this.showScrollbar();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                recyclerView.post(FastScroller.this.positionFixer);
            }
        };
        layout(context, size);
        setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    private void layout(Context context, Size size) throws Resources.NotFoundException {
        layout(context, null, size);
    }

    private void layout(Context context, AttributeSet attributeSet, Size size) throws Resources.NotFoundException {
        boolean z;
        boolean z2;
        TypedArray typedArrayObtainStyledAttributes;
        LinearLayout.inflate(context, R.layout.arg_res_0x7f0c007b, this);
        setClipChildren(false);
        setOrientation(0);
        this.bubbleView = (TextView) findViewById(R.id.arg_res_0x7f0901b2);
        this.handleView = (ImageView) findViewById(R.id.arg_res_0x7f0901b3);
        this.trackView = (ImageView) findViewById(R.id.arg_res_0x7f0901b5);
        this.scrollbar = findViewById(R.id.arg_res_0x7f0901b4);
        this.bubbleSize = size;
        float dimension = getResources().getDimension(size.textSizeId);
        boolean z3 = true;
        int color = QMUIProgressBar.f19441continue;
        int color2 = -12303292;
        int color3 = -3355444;
        int color4 = -1;
        if (attributeSet == null || (typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FastScroller, 0, 0)) == null) {
            z = true;
            z2 = false;
        } else {
            try {
                color = typedArrayObtainStyledAttributes.getColor(0, QMUIProgressBar.f19441continue);
                color2 = typedArrayObtainStyledAttributes.getColor(4, -12303292);
                color3 = typedArrayObtainStyledAttributes.getColor(8, -3355444);
                color4 = typedArrayObtainStyledAttributes.getColor(2, -1);
                boolean z4 = typedArrayObtainStyledAttributes.getBoolean(5, true);
                boolean z5 = typedArrayObtainStyledAttributes.getBoolean(6, true);
                z2 = typedArrayObtainStyledAttributes.getBoolean(7, false);
                this.bubbleSize = Size.fromOrdinal(typedArrayObtainStyledAttributes.getInt(1, size.ordinal()));
                float dimension2 = typedArrayObtainStyledAttributes.getDimension(3, getResources().getDimension(this.bubbleSize.textSizeId));
                typedArrayObtainStyledAttributes.recycle();
                z3 = z4;
                z = z5;
                dimension = dimension2;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        setTrackColor(color3);
        setHandleColor(color2);
        setBubbleColor(color);
        setBubbleTextColor(color4);
        setHideScrollbar(z3);
        setBubbleVisible(z);
        setTrackVisible(z2);
        this.bubbleView.setTextSize(0, dimension);
    }

    public void setLayoutParams(@NonNull ViewGroup viewGroup) throws Resources.NotFoundException {
        RecyclerView recyclerView = this.recyclerView;
        int id = recyclerView != null ? recyclerView.getId() : -1;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0700b4);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.arg_res_0x7f0700b3);
        if (id != -1) {
            if (viewGroup instanceof CoordinatorLayout) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).height = -1;
                layoutParams.anchorGravity = GravityCompat.END;
                layoutParams.setAnchorId(id);
                layoutParams.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
                setLayoutParams(layoutParams);
            } else if (viewGroup instanceof FrameLayout) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
                layoutParams2.height = -1;
                layoutParams2.gravity = GravityCompat.END;
                layoutParams2.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
                setLayoutParams(layoutParams2);
            } else if (viewGroup instanceof RelativeLayout) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) getLayoutParams();
                int i = Build.VERSION.SDK_INT >= 17 ? 19 : 7;
                layoutParams3.height = 0;
                layoutParams3.addRule(6, id);
                layoutParams3.addRule(8, id);
                layoutParams3.addRule(i, id);
                layoutParams3.setMargins(0, dimensionPixelSize, 0, dimensionPixelSize2);
                setLayoutParams(layoutParams3);
            } else {
                throw new IllegalArgumentException("Parent ViewGroup must be a ConstraintLayout, CoordinatorLayout, FrameLayout, or RelativeLayout");
            }
            updateViewHeights();
            return;
        }
        throw new IllegalArgumentException("RecyclerView must have a view ID");
    }

    public FastScroller(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScroller(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        this.scrollbarHider = new Runnable() { // from class: android.support.v4.ka0
            @Override // java.lang.Runnable
            public final void run() {
                this.f3342do.hideScrollbar();
            }
        };
        this.positionFixer = new Runnable() { // from class: com.wsw.cospa.widget.scroller.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                if (FastScroller.this.handleView != null && !FastScroller.this.handleView.isSelected() && FastScroller.this.isEnabled()) {
                    FastScroller fastScroller = FastScroller.this;
                    fastScroller.setViewPositions(fastScroller.getScrollProportion(fastScroller.recyclerView), false);
                }
                if (FastScroller.this.swipeRefreshLayout != null) {
                    FastScroller fastScroller2 = FastScroller.this;
                    int iFindFirstVisibleItemPosition = fastScroller2.findFirstVisibleItemPosition(fastScroller2.recyclerView.getLayoutManager());
                    int top = FastScroller.this.recyclerView.getChildCount() == 0 ? 0 : FastScroller.this.recyclerView.getChildAt(0).getTop();
                    SwipeRefreshLayout swipeRefreshLayout = FastScroller.this.swipeRefreshLayout;
                    if (iFindFirstVisibleItemPosition == 0 && top >= 0) {
                        z = true;
                    }
                    swipeRefreshLayout.setEnabled(z);
                }
            }
        };
        this.scrollListener = new RecyclerView.OnScrollListener() { // from class: com.wsw.cospa.widget.scroller.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
                super.onScrollStateChanged(recyclerView, i2);
                if (FastScroller.this.isEnabled()) {
                    if (i2 == 0) {
                        if (!FastScroller.this.hideScrollbar || FastScroller.this.handleView.isSelected()) {
                            return;
                        }
                        FastScroller.this.getHandler().postDelayed(FastScroller.this.scrollbarHider, 1000L);
                        return;
                    }
                    if (i2 != 1) {
                        return;
                    }
                    FastScroller.this.getHandler().removeCallbacks(FastScroller.this.scrollbarHider);
                    FastScroller fastScroller = FastScroller.this;
                    fastScroller.cancelAnimation(fastScroller.scrollbarAnimator);
                    FastScroller fastScroller2 = FastScroller.this;
                    if (fastScroller2.isViewVisible(fastScroller2.scrollbar)) {
                        return;
                    }
                    FastScroller.this.showScrollbar();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i22) {
                recyclerView.post(FastScroller.this.positionFixer);
            }
        };
        layout(context, attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
    }
}

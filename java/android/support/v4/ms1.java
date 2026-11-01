package android.support.v4;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.futuremind.recyclerviewfastscroll.FastScroller;
import com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior;

/* loaded from: classes.dex */
public abstract class ms1 {
    private ViewBehavior bubbleBehavior;
    private ViewBehavior handleBehavior;
    private FastScroller scroller;

    public ViewBehavior getBubbleBehavior() {
        if (this.bubbleBehavior == null) {
            this.bubbleBehavior = provideBubbleBehavior();
        }
        return this.bubbleBehavior;
    }

    public abstract int getBubbleOffset();

    public Context getContext() {
        return this.scroller.getContext();
    }

    public ViewBehavior getHandleBehavior() {
        if (this.handleBehavior == null) {
            this.handleBehavior = provideHandleBehavior();
        }
        return this.handleBehavior;
    }

    public FastScroller getScroller() {
        return this.scroller;
    }

    public void onHandleGrabbed() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onHandleGrabbed();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onHandleGrabbed();
        }
    }

    public void onHandleReleased() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onHandleReleased();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onHandleReleased();
        }
    }

    public void onScrollFinished() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onScrollFinished();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onScrollFinished();
        }
    }

    public void onScrollStarted() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onScrollStarted();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onScrollStarted();
        }
    }

    @Nullable
    public abstract ViewBehavior provideBubbleBehavior();

    public abstract TextView provideBubbleTextView();

    public abstract View provideBubbleView(ViewGroup viewGroup);

    @Nullable
    public abstract ViewBehavior provideHandleBehavior();

    public abstract View provideHandleView(ViewGroup viewGroup);

    public void setFastScroller(FastScroller fastScroller) {
        this.scroller = fastScroller;
    }
}

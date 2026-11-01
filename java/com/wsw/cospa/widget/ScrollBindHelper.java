package com.wsw.cospa.widget;

import android.os.Message;
import android.view.View;
import android.widget.SeekBar;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes2.dex */
public class ScrollBindHelper implements SeekBar.OnSeekBarChangeListener, NestedScrollView.OnScrollChangeListener {
    public static final long DEFAULT_TIME_OUT = 1000;
    private VisibleHandler handler = new VisibleHandler(this);
    private boolean isUserSeeking;
    private final View scrollContent;
    private final NestedScrollView scrollView;
    private final SeekBar seekBar;

    public static class VisibleHandler extends LastMsgHandler {
        private ScrollBindHelper helper;

        public VisibleHandler(ScrollBindHelper scrollBindHelper) {
            this.helper = scrollBindHelper;
        }

        @Override // com.wsw.cospa.widget.LastMsgHandler
        public void handleLastMessage(Message message) {
            this.helper.hideScroll();
        }

        public void reset() {
            sendMsgDelayed(1000L);
        }
    }

    private ScrollBindHelper(SeekBar seekBar, NestedScrollView nestedScrollView) {
        this.seekBar = seekBar;
        this.scrollView = nestedScrollView;
        this.scrollContent = nestedScrollView.getChildAt(0);
    }

    public static ScrollBindHelper bind(SeekBar seekBar, NestedScrollView nestedScrollView) {
        ViewUtil.init(seekBar.getContext().getApplicationContext());
        ScrollBindHelper scrollBindHelper = new ScrollBindHelper(seekBar, nestedScrollView);
        seekBar.setOnSeekBarChangeListener(scrollBindHelper);
        nestedScrollView.setOnScrollChangeListener(scrollBindHelper);
        return scrollBindHelper;
    }

    private int getContentRange() {
        return this.scrollContent.getHeight();
    }

    private int getScrollRange() {
        return this.scrollContent.getHeight() - this.scrollView.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideScroll() {
        this.seekBar.setVisibility(8);
    }

    private void showScroll() {
        this.seekBar.setVisibility(0);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        showScroll();
        if (!this.isUserSeeking) {
            this.handler.reset();
        }
        if (z) {
            this.scrollView.scrollTo(0, (i * getScrollRange()) / 100);
        }
    }

    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        if (!this.isUserSeeking && getContentRange() >= ViewUtil.getScreenHeightPx() * 3) {
            int scrollRange = getScrollRange();
            this.seekBar.setProgress(scrollRange != 0 ? (i2 * 100) / scrollRange : 0);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.isUserSeeking = true;
        this.handler.clearAll();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.isUserSeeking = false;
        this.handler.reset();
    }
}

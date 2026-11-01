package com.gaoneng.library;

import android.view.View;
import android.widget.AbsListView;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class ScrollUtil {

    public interface ScrollToTopListener {
        void scrollComplete();
    }

    /* renamed from: com.gaoneng.library.ScrollUtil$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AbsListView f10960do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ScrollToTopListener f10961if;

        public Cdo(AbsListView absListView, ScrollToTopListener scrollToTopListener) {
            this.f10960do = absListView;
            this.f10961if = scrollToTopListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f10960do.setSelection(0);
            ScrollToTopListener scrollToTopListener = this.f10961if;
            if (scrollToTopListener != null) {
                scrollToTopListener.scrollComplete();
            }
        }
    }

    /* renamed from: com.gaoneng.library.ScrollUtil$if, reason: invalid class name */
    public static class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ScrollToTopListener f10962do;

        public Cif(ScrollToTopListener scrollToTopListener) {
            this.f10962do = scrollToTopListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollToTopListener scrollToTopListener = this.f10962do;
            if (scrollToTopListener != null) {
                scrollToTopListener.scrollComplete();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m12377do(View view, ScrollToTopListener scrollToTopListener) {
        if (view == null) {
            return;
        }
        if (view instanceof AbsListView) {
            m12379if((AbsListView) view, scrollToTopListener);
        } else if (view instanceof RecyclerView) {
            m12378for((RecyclerView) view, scrollToTopListener);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m12378for(RecyclerView recyclerView, ScrollToTopListener scrollToTopListener) {
        if (recyclerView == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
        recyclerView.postDelayed(new Cif(scrollToTopListener), 300L);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m12379if(AbsListView absListView, ScrollToTopListener scrollToTopListener) {
        if (absListView == null) {
            return;
        }
        absListView.smoothScrollToPositionFromTop(0, 0);
        absListView.postDelayed(new Cdo(absListView, scrollToTopListener), 300L);
    }
}

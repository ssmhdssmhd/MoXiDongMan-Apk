package com.wsw.cospa.widget.view;

import android.support.v4.ms1;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.futuremind.recyclerviewfastscroll.viewprovider.ViewBehavior;

/* loaded from: classes2.dex */
public class CustomScrollViewViewProvider extends ms1 {
    @Override // android.support.v4.ms1
    public int getBubbleOffset() {
        return 0;
    }

    @Override // android.support.v4.ms1
    @Nullable
    public ViewBehavior provideBubbleBehavior() {
        return null;
    }

    @Override // android.support.v4.ms1
    public TextView provideBubbleTextView() {
        return null;
    }

    @Override // android.support.v4.ms1
    public View provideBubbleView(ViewGroup viewGroup) {
        return null;
    }

    @Override // android.support.v4.ms1
    @Nullable
    public ViewBehavior provideHandleBehavior() {
        return null;
    }

    @Override // android.support.v4.ms1
    public View provideHandleView(ViewGroup viewGroup) {
        return null;
    }
}

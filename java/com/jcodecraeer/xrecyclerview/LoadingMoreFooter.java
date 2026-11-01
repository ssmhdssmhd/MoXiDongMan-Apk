package com.jcodecraeer.xrecyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.jcodecraeer.xrecyclerview.progressindicator.AVLoadingIndicatorView;

/* loaded from: classes2.dex */
public class LoadingMoreFooter extends LinearLayout {

    /* renamed from: else, reason: not valid java name */
    public static final int f18213else = 0;

    /* renamed from: goto, reason: not valid java name */
    public static final int f18214goto = 1;

    /* renamed from: this, reason: not valid java name */
    public static final int f18215this = 2;

    /* renamed from: case, reason: not valid java name */
    private AVLoadingIndicatorView f18216case;

    /* renamed from: do, reason: not valid java name */
    private SimpleViewSwitcher f18217do;

    /* renamed from: for, reason: not valid java name */
    private String f18218for;

    /* renamed from: if, reason: not valid java name */
    private TextView f18219if;

    /* renamed from: new, reason: not valid java name */
    private String f18220new;

    /* renamed from: try, reason: not valid java name */
    private String f18221try;

    public LoadingMoreFooter(Context context) {
        super(context);
        m22781if();
    }

    /* renamed from: do, reason: not valid java name */
    public void m22780do() {
        this.f18217do = null;
        AVLoadingIndicatorView aVLoadingIndicatorView = this.f18216case;
        if (aVLoadingIndicatorView != null) {
            aVLoadingIndicatorView.m22832for();
            this.f18216case = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m22781if() {
        setGravity(17);
        setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        SimpleViewSwitcher simpleViewSwitcher = new SimpleViewSwitcher(getContext());
        this.f18217do = simpleViewSwitcher;
        simpleViewSwitcher.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        AVLoadingIndicatorView aVLoadingIndicatorView = new AVLoadingIndicatorView(getContext());
        this.f18216case = aVLoadingIndicatorView;
        aVLoadingIndicatorView.setIndicatorColor(-4868683);
        this.f18216case.setIndicatorId(22);
        this.f18217do.setView(this.f18216case);
        addView(this.f18217do);
        TextView textView = new TextView(getContext());
        this.f18219if = textView;
        Context context = getContext();
        int i = R.string.listview_loading;
        textView.setText(context.getString(i));
        String str = this.f18218for;
        if (str == null || str.equals("")) {
            this.f18218for = (String) getContext().getText(i);
        }
        String str2 = this.f18220new;
        if (str2 == null || str2.equals("")) {
            this.f18220new = (String) getContext().getText(R.string.nomore_loading);
        }
        String str3 = this.f18221try;
        if (str3 == null || str3.equals("")) {
            this.f18221try = (String) getContext().getText(R.string.loading_done);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins((int) getResources().getDimension(R.dimen.textandiconmargin), 0, 0, 0);
        this.f18219if.setLayoutParams(layoutParams);
        addView(this.f18219if);
    }

    public void setLoadingDoneHint(String str) {
        this.f18221try = str;
    }

    public void setLoadingHint(String str) {
        this.f18218for = str;
    }

    public void setNoMoreHint(String str) {
        this.f18220new = str;
    }

    public void setProgressStyle(int i) {
        if (i == -1) {
            this.f18217do.setView(new ProgressBar(getContext(), null, android.R.attr.progressBarStyle));
            return;
        }
        AVLoadingIndicatorView aVLoadingIndicatorView = new AVLoadingIndicatorView(getContext());
        this.f18216case = aVLoadingIndicatorView;
        aVLoadingIndicatorView.setIndicatorColor(-4868683);
        this.f18216case.setIndicatorId(i);
        this.f18217do.setView(this.f18216case);
    }

    public void setState(int i) {
        if (i == 0) {
            this.f18217do.setVisibility(0);
            this.f18219if.setText(this.f18218for);
            setVisibility(0);
        } else if (i == 1) {
            this.f18219if.setText(this.f18221try);
            setVisibility(8);
        } else {
            if (i != 2) {
                return;
            }
            this.f18219if.setText(this.f18220new);
            this.f18217do.setVisibility(8);
            setVisibility(0);
        }
    }

    public LoadingMoreFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m22781if();
    }
}

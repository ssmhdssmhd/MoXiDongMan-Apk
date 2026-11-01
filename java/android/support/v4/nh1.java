package android.support.v4;

import android.content.Context;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import com.qmuiteam.qmui.widget.QMUIWrapContentListView;

/* loaded from: classes2.dex */
public class nh1 extends rh1 {

    /* renamed from: volatile, reason: not valid java name */
    private BaseAdapter f4230volatile;

    public nh1(Context context, int i, BaseAdapter baseAdapter) {
        super(context, i);
        this.f4230volatile = baseAdapter;
    }

    /* renamed from: transient, reason: not valid java name */
    public void m5249transient(int i, int i2, AdapterView.OnItemClickListener onItemClickListener) {
        QMUIWrapContentListView qMUIWrapContentListView = new QMUIWrapContentListView(this.f19869do, i2);
        qMUIWrapContentListView.setLayoutParams(new FrameLayout.LayoutParams(i, i2));
        qMUIWrapContentListView.setAdapter((ListAdapter) this.f4230volatile);
        qMUIWrapContentListView.setVerticalScrollBarEnabled(false);
        qMUIWrapContentListView.setOnItemClickListener(onItemClickListener);
        qMUIWrapContentListView.setDivider(null);
        mo6980import(qMUIWrapContentListView);
    }
}

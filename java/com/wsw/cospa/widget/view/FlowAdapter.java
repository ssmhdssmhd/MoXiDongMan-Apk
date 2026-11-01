package com.wsw.cospa.widget.view;

import android.view.View;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class FlowAdapter<T> {
    private List<T> mDataList;
    private OnDataChangedListener mOnDataChangedListener;

    public interface OnDataChangedListener {
        void onDataChanged();
    }

    public FlowAdapter(List<T> list) {
        this.mDataList = list;
    }

    public int getCount() {
        List<T> list = this.mDataList;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public T getItem(int i) {
        List<T> list = this.mDataList;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    public abstract View getView(int i, FlowLayout flowLayout);

    public void notifyDataSetChanged() {
        OnDataChangedListener onDataChangedListener = this.mOnDataChangedListener;
        if (onDataChangedListener != null) {
            onDataChangedListener.onDataChanged();
        }
    }

    public void refresh(List<T> list) {
        this.mDataList = list;
        notifyDataSetChanged();
    }

    public void setOnDataChangedListener(OnDataChangedListener onDataChangedListener) {
        this.mOnDataChangedListener = onDataChangedListener;
    }

    public FlowAdapter(T[] tArr) {
        this.mDataList = Arrays.asList(tArr);
    }
}

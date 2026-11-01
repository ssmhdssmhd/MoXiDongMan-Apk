package com.wsw.cospa;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.wsw.cospa.BaseRecyclerVH;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseRecyclerAdapter<T, VH extends BaseRecyclerVH<T>> extends RecyclerView.Adapter<VH> {

    /* renamed from: for, reason: not valid java name */
    public LayoutInflater f20813for;

    /* renamed from: if, reason: not valid java name */
    public Context f20814if;

    /* renamed from: do, reason: not valid java name */
    public final String f20812do = getClass().getSimpleName();

    /* renamed from: new, reason: not valid java name */
    public List<T> f20815new = new ArrayList();

    public BaseRecyclerAdapter(Context context) {
        this.f20814if = context;
        this.f20813for = LayoutInflater.from(context);
    }

    /* renamed from: break, reason: not valid java name */
    public void m24679break(int i) {
        this.f20815new.remove(i);
        notifyItemRemoved(i);
    }

    /* renamed from: case, reason: not valid java name */
    public abstract VH m24680case(View view);

    /* renamed from: catch, reason: not valid java name */
    public void m24681catch(int i, T t) {
        if (i > this.f20815new.size() || t == null || this.f20815new.isEmpty()) {
            return;
        }
        this.f20815new.set(i, t);
    }

    /* renamed from: do, reason: not valid java name */
    public void m24682do(T t) {
        m24686if(t, this.f20815new.size());
    }

    /* renamed from: else, reason: not valid java name */
    public T m24683else(int i) {
        if (i < 0 || i >= this.f20815new.size() || this.f20815new.isEmpty()) {
            return null;
        }
        return this.f20815new.get(i);
    }

    /* renamed from: for, reason: not valid java name */
    public void m24684for(List<T> list) {
        m24687new(list, this.f20815new.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f20815new.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract int m24685goto();

    /* renamed from: if, reason: not valid java name */
    public void m24686if(T t, int i) {
        this.f20815new.add(i, t);
        notifyItemInserted(i);
    }

    /* renamed from: new, reason: not valid java name */
    public void m24687new(List<T> list, int i) {
        if (i > this.f20815new.size() || list == null || list.isEmpty()) {
            return;
        }
        this.f20815new.addAll(i, list);
        notifyItemRangeChanged(i, list.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return (VH) m24680case(this.f20813for.inflate(m24685goto(), viewGroup, false));
    }

    /* renamed from: try, reason: not valid java name */
    public void m24689try() {
        this.f20815new.clear();
    }
}

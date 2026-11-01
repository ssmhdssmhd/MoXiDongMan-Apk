package com.wsw.cospa.adapter;

import android.content.Context;
import android.support.v4.ia0;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.ButterKnife;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseAdapter<T> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: do, reason: not valid java name */
    public Context f21526do;

    /* renamed from: for, reason: not valid java name */
    public LayoutInflater f21527for;

    /* renamed from: if, reason: not valid java name */
    public List<T> f21528if;

    /* renamed from: new, reason: not valid java name */
    private OnItemClickListener f21529new;

    /* renamed from: try, reason: not valid java name */
    private OnItemLongClickListener f21530try;

    public interface OnItemClickListener {
        void onItemClick(View view, int i);
    }

    public interface OnItemLongClickListener {
        void onItemLongClick(View view, int i);
    }

    /* renamed from: com.wsw.cospa.adapter.BaseAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RecyclerView.ViewHolder f21531do;

        public Cdo(RecyclerView.ViewHolder viewHolder) {
            this.f21531do = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseAdapter.this.f21529new == null || !BaseAdapter.this.m25449class()) {
                return;
            }
            BaseAdapter.this.f21529new.onItemClick(view, this.f21531do.getAdapterPosition());
        }
    }

    /* renamed from: com.wsw.cospa.adapter.BaseAdapter$for, reason: invalid class name */
    public static class Cfor extends RecyclerView.ViewHolder {
        public Cfor(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    /* renamed from: com.wsw.cospa.adapter.BaseAdapter$if, reason: invalid class name */
    public class Cif implements View.OnLongClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RecyclerView.ViewHolder f21533do;

        public Cif(RecyclerView.ViewHolder viewHolder) {
            this.f21533do = viewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (BaseAdapter.this.f21530try == null) {
                return false;
            }
            BaseAdapter.this.f21530try.onItemLongClick(view, this.f21533do.getAdapterPosition());
            return true;
        }
    }

    public BaseAdapter(Context context, List<T> list) {
        this.f21526do = context.getApplicationContext();
        this.f21528if = list;
        this.f21527for = LayoutInflater.from(context);
    }

    /* renamed from: break, reason: not valid java name */
    public List<T> m25446break() {
        return this.f21528if;
    }

    /* renamed from: case, reason: not valid java name */
    public void m25447case(Collection<T> collection) {
        m25459try(this.f21528if.size(), collection);
    }

    /* renamed from: catch, reason: not valid java name */
    public abstract RecyclerView.ItemDecoration m25448catch();

    /* renamed from: class, reason: not valid java name */
    public boolean m25449class() {
        return ia0.m3324do();
    }

    /* renamed from: const, reason: not valid java name */
    public void m25450const(int i) {
        this.f21528if.remove(i);
        notifyItemRemoved(i);
    }

    /* renamed from: else, reason: not valid java name */
    public void m25451else() {
        this.f21528if.clear();
        notifyDataSetChanged();
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m25452final(T t) {
        int iIndexOf = this.f21528if.indexOf(t);
        if (iIndexOf == -1) {
            return false;
        }
        m25450const(iIndexOf);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public void m25453for(int i, T t) {
        this.f21528if.add(i, t);
        notifyItemInserted(i);
    }

    public T getItem(int i) {
        return this.f21528if.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21528if.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m25454goto(T t) {
        return this.f21528if.contains(t);
    }

    /* renamed from: new, reason: not valid java name */
    public void m25455new(T t) {
        if (this.f21528if.add(t)) {
            notifyItemInserted(this.f21528if.size());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.itemView.setOnClickListener(new Cdo(viewHolder));
        viewHolder.itemView.setOnLongClickListener(new Cif(viewHolder));
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21529new = onItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        this.f21530try = onItemLongClickListener;
    }

    /* renamed from: super, reason: not valid java name */
    public void m25456super(Collection<T> collection) {
        this.f21528if.removeAll(collection);
        notifyDataSetChanged();
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m25457this(T t) {
        return this.f21528if.indexOf(t) != -1;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m25458throw() {
        Collections.reverse(this.f21528if);
        notifyDataSetChanged();
    }

    /* renamed from: try, reason: not valid java name */
    public void m25459try(int i, Collection<T> collection) {
        if (this.f21528if.addAll(i, collection)) {
            notifyItemRangeInserted(i, collection.size() + i);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m25460while(Collection<T> collection) {
        this.f21528if.clear();
        this.f21528if.addAll(collection);
        notifyDataSetChanged();
    }
}

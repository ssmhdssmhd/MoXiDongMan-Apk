package com.wsw.cospa.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.AddComicSourceActivity;
import com.wsw.cospa.activity.ComicManagerActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnCheckedChangeListener;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.widget.scroller.FastScroller;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class ComicSourceAdapter extends RecyclerView.Adapter<SourceViewHolder> implements FastScroller.SectionIndexer {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21639do;

    /* renamed from: for, reason: not valid java name */
    private Context f21641for;

    /* renamed from: goto, reason: not valid java name */
    private RecyclerView f21642goto;

    /* renamed from: if, reason: not valid java name */
    private OnCheckedChangeListener f21643if;

    /* renamed from: new, reason: not valid java name */
    private ComicManagerActivity f21644new;

    /* renamed from: try, reason: not valid java name */
    private LayoutInflater f21645try;

    /* renamed from: case, reason: not valid java name */
    private List<ComicSourceBean> f21638case = new ArrayList();

    /* renamed from: else, reason: not valid java name */
    private List<ComicSourceBean> f21640else = new ArrayList();

    public static class SourceViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0900f1)
        public CheckBox checkbox;

        @BindView(R.id.arg_res_0x7f09023e)
        public ImageView ivEdit;

        @BindView(R.id.arg_res_0x7f09024e)
        public ImageView ivTop;

        @BindView(R.id.arg_res_0x7f09023b)
        public ImageView iv_delete;

        @BindView(R.id.arg_res_0x7f0904b4)
        public TextView tvSourceName;

        public SourceViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class SourceViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private SourceViewHolder f21646do;

        @UiThread
        public SourceViewHolder_ViewBinding(SourceViewHolder sourceViewHolder, View view) {
            this.f21646do = sourceViewHolder;
            sourceViewHolder.checkbox = (CheckBox) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", CheckBox.class);
            sourceViewHolder.tvSourceName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b4, "field 'tvSourceName'", TextView.class);
            sourceViewHolder.ivEdit = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023e, "field 'ivEdit'", ImageView.class);
            sourceViewHolder.iv_delete = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023b, "field 'iv_delete'", ImageView.class);
            sourceViewHolder.ivTop = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09024e, "field 'ivTop'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            SourceViewHolder sourceViewHolder = this.f21646do;
            if (sourceViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21646do = null;
            sourceViewHolder.checkbox = null;
            sourceViewHolder.tvSourceName = null;
            sourceViewHolder.ivEdit = null;
            sourceViewHolder.iv_delete = null;
            sourceViewHolder.ivTop = null;
        }
    }

    public ComicSourceAdapter(Context context) {
        this.f21641for = context;
        this.f21644new = (ComicManagerActivity) context;
        this.f21645try = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: abstract, reason: not valid java name */
    private synchronized void m25593abstract(int i) {
        m25606private(Cdo.m26362finally());
        final ComicSourceBean comicSourceBean = this.f21638case.get(i);
        this.f21638case.remove(i);
        notifyItemRemoved(i);
        this.f21638case.add(0, comicSourceBean);
        notifyItemInserted(0);
        ComicSourceBean comicSourceBean2 = this.f21640else.get(0);
        comicSourceBean.setWeight(comicSourceBean2.getWeight() + 1);
        comicSourceBean.setSerialNumber(comicSourceBean2.getSerialNumber() + 1);
        Runnable runnable = new Runnable() { // from class: android.support.v4.xo
            @Override // java.lang.Runnable
            public final void run() {
                this.f7996do.m25614throws(comicSourceBean);
            }
        };
        RecyclerView recyclerView = this.f21642goto;
        if (recyclerView != null) {
            recyclerView.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public /* synthetic */ void m25599final(ComicSourceBean comicSourceBean, View view) {
        AddComicSourceActivity.i((Activity) this.f21641for, AddComicSourceActivity.f20858static, comicSourceBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public /* synthetic */ void m25603import(SourceViewHolder sourceViewHolder, ComicSourceBean comicSourceBean, CompoundButton compoundButton, boolean z) {
        if (this.f21643if == null || !sourceViewHolder.checkbox.isPressed()) {
            return;
        }
        this.f21643if.onCheckedChanged(comicSourceBean, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public /* synthetic */ void m25604native(int i, View view) {
        m25593abstract(i);
    }

    /* renamed from: private, reason: not valid java name */
    private synchronized void m25606private(List<ComicSourceBean> list) {
        this.f21640else = list;
        notifyDataSetChanged();
        this.f21644new.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public /* synthetic */ void m25607public(ComicSourceBean comicSourceBean, View view) {
        AddComicSourceActivity.i((Activity) this.f21641for, AddComicSourceActivity.f20858static, comicSourceBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public /* synthetic */ void m25608return(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21639do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m25609static(SourceViewHolder sourceViewHolder, int i, ComicSourceBean comicSourceBean, View view) {
        if (this.f21643if != null && sourceViewHolder.checkbox.isPressed()) {
            sourceViewHolder.checkbox.setChecked(!r1.isChecked());
        }
        notifyItemChanged(i);
        this.f21643if.onCheckedChanged(comicSourceBean, !comicSourceBean.getEnable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public /* synthetic */ void m25610super(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21639do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m25611switch(SourceViewHolder sourceViewHolder, ComicSourceBean comicSourceBean, CompoundButton compoundButton, boolean z) {
        if (this.f21643if == null || !sourceViewHolder.checkbox.isPressed()) {
            return;
        }
        this.f21643if.onCheckedChanged(comicSourceBean, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public /* synthetic */ void m25613throw(int i, ComicSourceBean comicSourceBean, View view) {
        if (i > 0) {
            comicSourceBean.setWeight(this.f21638case.get(0).getWeight() + 1);
            DatabaseHelper.m26016switch().m26019abstract(comicSourceBean);
            this.f21638case.remove(i);
            this.f21638case.add(0, comicSourceBean);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m25614throws(ComicSourceBean comicSourceBean) {
        if (this.f21638case.size() == this.f21640else.size()) {
            this.f21644new.s(this.f21638case);
            return;
        }
        this.f21640else.remove(comicSourceBean);
        this.f21640else.add(0, comicSourceBean);
        this.f21644new.s(this.f21640else);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public /* synthetic */ void m25616while(SourceViewHolder sourceViewHolder, int i, ComicSourceBean comicSourceBean, View view) {
        if (this.f21643if != null && sourceViewHolder.checkbox.isPressed()) {
            sourceViewHolder.checkbox.setChecked(!r1.isChecked());
        }
        notifyItemChanged(i);
        this.f21643if.onCheckedChanged(comicSourceBean, !comicSourceBean.getEnable());
    }

    /* renamed from: class, reason: not valid java name */
    public ComicSourceBean m25617class(int i) {
        return this.f21638case.get(i);
    }

    /* renamed from: const, reason: not valid java name */
    public List<ComicSourceBean> m25618const() {
        return this.f21638case;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m25619continue(int i, ComicSourceBean comicSourceBean) {
        notifyItemChanged(i, comicSourceBean);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final SourceViewHolder sourceViewHolder, final int i) {
        final ComicSourceBean comicSourceBean = this.f21638case.get(i);
        sourceViewHolder.tvSourceName.setText(comicSourceBean.getBookSourceName());
        sourceViewHolder.checkbox.setChecked(comicSourceBean.getEnable());
        sourceViewHolder.ivEdit.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7580do.m25599final(comicSourceBean, view);
            }
        });
        sourceViewHolder.iv_delete.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.so
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6214do.m25610super(i, view);
            }
        });
        sourceViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.try
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f21903do.m25616while(sourceViewHolder, i, comicSourceBean, view);
            }
        });
        sourceViewHolder.checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.wsw.cospa.adapter.goto
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f21895do.m25603import(sourceViewHolder, comicSourceBean, compoundButton, z);
            }
        });
        sourceViewHolder.ivTop.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.to
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6627do.m25604native(i, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final SourceViewHolder sourceViewHolder, final int i, @NonNull List<Object> list) {
        super.onBindViewHolder(sourceViewHolder, i, list);
        if (list == null || list.isEmpty()) {
            return;
        }
        final ComicSourceBean comicSourceBean = (ComicSourceBean) list.get(0);
        sourceViewHolder.tvSourceName.setText(comicSourceBean.getBookSourceName());
        sourceViewHolder.checkbox.setChecked(comicSourceBean.getEnable());
        sourceViewHolder.ivEdit.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7299do.m25607public(comicSourceBean, view);
            }
        });
        sourceViewHolder.iv_delete.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ro
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f5890do.m25608return(i, view);
            }
        });
        sourceViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.case
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f21874do.m25609static(sourceViewHolder, i, comicSourceBean, view);
            }
        });
        sourceViewHolder.checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.wsw.cospa.adapter.else
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f21887do.m25611switch(sourceViewHolder, comicSourceBean, compoundButton, z);
            }
        });
        sourceViewHolder.ivTop.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.uo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6950do.m25613throw(i, comicSourceBean, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public SourceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new SourceViewHolder(this.f21645try.inflate(R.layout.arg_res_0x7f0c0061, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ComicSourceBean> list = this.f21638case;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // com.wsw.cospa.widget.scroller.FastScroller.SectionIndexer
    public CharSequence getSectionText(int i) {
        List<ComicSourceBean> list = this.f21638case;
        if (list == null || list.isEmpty()) {
            return "";
        }
        String bookSourceName = this.f21638case.get(i).getBookSourceName();
        return Cclass.z(bookSourceName) ? "" : bookSourceName.substring(0, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f21642goto = recyclerView;
    }

    /* renamed from: package, reason: not valid java name */
    public synchronized void m25623package(List<ComicSourceBean> list) {
        this.f21638case = list;
        notifyDataSetChanged();
        this.f21644new.B();
        this.f21644new.D(this.f21638case.size());
    }

    public synchronized void refresh(List<ComicSourceBean> list) {
        int size = this.f21638case.size();
        this.f21638case.clear();
        notifyItemRangeRemoved(0, size);
        this.f21638case.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f21643if = onCheckedChangeListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21639do = onItemClickListener;
    }
}

package com.wsw.cospa.adapter;

import android.content.Context;
import android.support.v4.tm1;
import android.support.v4.vv0;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FindComicGridAdapter extends RecyclerView.Adapter<FindComicViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21720do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21721for;

    /* renamed from: if, reason: not valid java name */
    private Context f21722if;

    /* renamed from: new, reason: not valid java name */
    private List<SearchComicBean> f21723new = new ArrayList();

    public class FindComicViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09046f)
        public AppCompatTextView tvComicName;

        @BindView(R.id.arg_res_0x7f090494)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        public FindComicViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class FindComicViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private FindComicViewHolder f21725do;

        @UiThread
        public FindComicViewHolder_ViewBinding(FindComicViewHolder findComicViewHolder, View view) {
            this.f21725do = findComicViewHolder;
            findComicViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            findComicViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
            findComicViewHolder.tvComicName = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", AppCompatTextView.class);
            findComicViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            FindComicViewHolder findComicViewHolder = this.f21725do;
            if (findComicViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21725do = null;
            findComicViewHolder.ivCover = null;
            findComicViewHolder.tvOrigin = null;
            findComicViewHolder.tvComicName = null;
            findComicViewHolder.tvLastChapter = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.FindComicGridAdapter$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21726do;

        public Cdo(List list) {
            this.f21726do = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.m26016switch().m26035private(this.f21726do);
        }
    }

    public FindComicGridAdapter(Context context) {
        this.f21722if = context;
        this.f21721for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21720do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private synchronized void m25708try(List<SearchComicBean> list) {
        Ccase.m26722this().m26725else().execute(new Cdo(list));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull FindComicViewHolder findComicViewHolder, final int i) {
        SearchComicBean searchComicBean = this.f21723new.get(i);
        System.out.println(searchComicBean.getCoverUrl());
        Object tag = findComicViewHolder.ivCover.getTag(R.id.arg_res_0x7f090391);
        if (tag == null || !tag.equals(searchComicBean.getCoverUrl())) {
            findComicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, null);
            if (!TextUtils.isEmpty(searchComicBean.getCoverUrl())) {
                ComicSourceBean comicSourceBeanM26358abstract = com.wsw.cospa.model.Cdo.m26358abstract(searchComicBean.getTag());
                vv0.m8965if("FindComicGridAdapter", "header : " + searchComicBean.getCoverHeader());
                Cfinally.m26887class(this.f21722if, searchComicBean.getCoverUrl(), findComicViewHolder.ivCover, searchComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM26358abstract));
            }
            findComicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, searchComicBean.getCoverUrl());
        }
        findComicViewHolder.tvComicName.setText(searchComicBean.getName());
        findComicViewHolder.tvOrigin.setText(searchComicBean.getOrigin());
        if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
            findComicViewHolder.tvLastChapter.setVisibility(8);
        } else {
            findComicViewHolder.tvLastChapter.setVisibility(0);
            if (((searchComicBean.getLastChapter().contains("话") || searchComicBean.getLastChapter().contains("-") || searchComicBean.getLastChapter().contains("上") || searchComicBean.getLastChapter().contains("下") || searchComicBean.getLastChapter().contains("卷") || searchComicBean.getLastChapter().contains("章") || searchComicBean.getLastChapter().contains("局")) && !searchComicBean.getLastChapter().contains("更新至")) || searchComicBean.getLastChapter().contains("连载中") || searchComicBean.getLastChapter().contains("已完结") || searchComicBean.getLastChapter().contains("更") || searchComicBean.getLastChapter().contains("更新至") || tm1.m7998case(searchComicBean.getLastChapter())) {
                findComicViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            } else {
                findComicViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            }
        }
        findComicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.yb0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8176do.lambda$onBindViewHolder$0(i, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SearchComicBean> list = this.f21723new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public synchronized List<SearchComicBean> getList() {
        return this.f21723new;
    }

    /* renamed from: if, reason: not valid java name */
    public synchronized void m25710if(List<SearchComicBean> list) {
        m25708try(list);
        int size = this.f21723new.size();
        if (!this.f21723new.containsAll(list)) {
            this.f21723new.addAll(list);
            notifyItemRangeInserted(size, list.size());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public FindComicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new FindComicViewHolder(this.f21721for.inflate(R.layout.arg_res_0x7f0c007d, (ViewGroup) null, false));
    }

    public synchronized void refresh(List<SearchComicBean> list) {
        int size = this.f21723new.size();
        this.f21723new.clear();
        notifyItemRangeRemoved(0, size);
        m25708try(list);
        this.f21723new.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21720do = onItemClickListener;
    }
}

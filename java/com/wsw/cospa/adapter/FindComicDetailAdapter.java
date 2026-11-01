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
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.FindComicDetailAdapter;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.view.MarqueTextView;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FindComicDetailAdapter extends RecyclerView.Adapter<ComicDetailViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private boolean f21713case;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21714do;

    /* renamed from: for, reason: not valid java name */
    private Context f21715for;

    /* renamed from: if, reason: not valid java name */
    private OnItemSearchClickListener f21716if;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21717new;

    /* renamed from: try, reason: not valid java name */
    private List<SearchComicBean> f21718try = new ArrayList();

    public static class ComicDetailViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09046f)
        public MarqueTextView tvComicName;

        @BindView(R.id.arg_res_0x7f090494)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        @BindView(R.id.arg_res_0x7f0904aa)
        public TextView tvSearch;

        public ComicDetailViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ComicDetailViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ComicDetailViewHolder f21719do;

        @UiThread
        public ComicDetailViewHolder_ViewBinding(ComicDetailViewHolder comicDetailViewHolder, View view) {
            this.f21719do = comicDetailViewHolder;
            comicDetailViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            comicDetailViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
            comicDetailViewHolder.tvComicName = (MarqueTextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", MarqueTextView.class);
            comicDetailViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
            comicDetailViewHolder.tvSearch = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904aa, "field 'tvSearch'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ComicDetailViewHolder comicDetailViewHolder = this.f21719do;
            if (comicDetailViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21719do = null;
            comicDetailViewHolder.ivCover = null;
            comicDetailViewHolder.tvOrigin = null;
            comicDetailViewHolder.tvComicName = null;
            comicDetailViewHolder.tvLastChapter = null;
            comicDetailViewHolder.tvSearch = null;
        }
    }

    public interface OnItemSearchClickListener {
        void onItemSearchClick(int i);
    }

    public FindComicDetailAdapter(Context context, boolean z) {
        this.f21715for = context;
        this.f21713case = z;
        this.f21717new = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: break, reason: not valid java name */
    private synchronized void m25697break(final List<SearchComicBean> list) {
        Ccase.m26722this().m26725else().execute(new Runnable() { // from class: android.support.v4.xb0
            @Override // java.lang.Runnable
            public final void run() {
                FindComicDetailAdapter.m25700else(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ void m25698case(int i, View view) {
        OnItemSearchClickListener onItemSearchClickListener = this.f21716if;
        if (onItemSearchClickListener != null) {
            onItemSearchClickListener.onItemSearchClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ void m25700else(List list) {
        DatabaseHelper.m26016switch().m26035private(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public /* synthetic */ void m25703try(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21714do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SearchComicBean> list = this.f21718try;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public synchronized List<SearchComicBean> getList() {
        return this.f21718try;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ComicDetailViewHolder comicDetailViewHolder, final int i) {
        SearchComicBean searchComicBean = this.f21718try.get(i);
        System.out.println(searchComicBean.getCoverUrl());
        Object tag = comicDetailViewHolder.ivCover.getTag(R.id.arg_res_0x7f090391);
        if (tag == null || !tag.equals(searchComicBean.getCoverUrl())) {
            comicDetailViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, null);
            if (!TextUtils.isEmpty(searchComicBean.getCoverUrl())) {
                ComicSourceBean comicSourceBeanM26358abstract = Cdo.m26358abstract(searchComicBean.getTag());
                vv0.m8965if("FindComicDetailAdapter", "header : " + searchComicBean.getCoverHeader());
                Cfinally.m26887class(this.f21715for, searchComicBean.getCoverUrl(), comicDetailViewHolder.ivCover, searchComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(comicSourceBeanM26358abstract));
            }
            comicDetailViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, searchComicBean.getCoverUrl());
        }
        comicDetailViewHolder.tvComicName.setText(searchComicBean.getName());
        comicDetailViewHolder.tvOrigin.setText(searchComicBean.getOrigin());
        if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
            comicDetailViewHolder.tvLastChapter.setVisibility(8);
        } else {
            comicDetailViewHolder.tvLastChapter.setVisibility(0);
            if (((searchComicBean.getLastChapter().contains("话") || searchComicBean.getLastChapter().contains("-") || searchComicBean.getLastChapter().contains("上") || searchComicBean.getLastChapter().contains("下") || searchComicBean.getLastChapter().contains("卷") || searchComicBean.getLastChapter().contains("章") || searchComicBean.getLastChapter().contains("局")) && !searchComicBean.getLastChapter().contains("更新至")) || searchComicBean.getLastChapter().contains("连载中") || searchComicBean.getLastChapter().contains("已完结") || searchComicBean.getLastChapter().contains("更") || searchComicBean.getLastChapter().contains("更新至") || tm1.m7998case(searchComicBean.getLastChapter())) {
                comicDetailViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            } else {
                comicDetailViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            }
        }
        comicDetailViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vb0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7135do.m25703try(i, view);
            }
        });
        if (this.f21713case) {
            comicDetailViewHolder.tvSearch.setVisibility(0);
        } else {
            comicDetailViewHolder.tvSearch.setVisibility(4);
        }
        comicDetailViewHolder.tvSearch.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wb0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7448do.m25698case(i, view);
            }
        });
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m25705new(List<SearchComicBean> list) {
        m25697break(list);
        int size = this.f21718try.size();
        if (!this.f21718try.containsAll(list)) {
            this.f21718try.addAll(list);
            notifyItemRangeInserted(size, list.size());
        }
    }

    public synchronized void refresh(List<SearchComicBean> list) {
        int size = this.f21718try.size();
        this.f21718try.clear();
        notifyItemRangeRemoved(0, size);
        m25697break(list);
        this.f21718try.addAll(list);
        notifyDataSetChanged();
    }

    public void setItemSearchListener(OnItemSearchClickListener onItemSearchClickListener) {
        this.f21716if = onItemSearchClickListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21714do = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicDetailViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ComicDetailViewHolder(this.f21717new.inflate(R.layout.arg_res_0x7f0c009d, viewGroup, false));
    }
}

package com.wsw.cospa.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
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
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.view.MarqueTextView;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class DownloadListAdapter extends RecyclerView.Adapter<DownloadViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21657do;

    /* renamed from: for, reason: not valid java name */
    private Context f21658for;

    /* renamed from: if, reason: not valid java name */
    private OnLongItemClickListener f21659if;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21660new;

    /* renamed from: try, reason: not valid java name */
    private List<ComicInfoBean> f21661try = new ArrayList();

    public static class DownloadViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09036b)
        public RelativeLayout mRootView;

        @BindView(R.id.arg_res_0x7f09049e)
        public TextView tvName;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        @BindView(R.id.arg_res_0x7f0904be)
        public MarqueTextView tvTitle;

        public DownloadViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class DownloadViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private DownloadViewHolder f21662do;

        @UiThread
        public DownloadViewHolder_ViewBinding(DownloadViewHolder downloadViewHolder, View view) {
            this.f21662do = downloadViewHolder;
            downloadViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            downloadViewHolder.tvName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09049e, "field 'tvName'", TextView.class);
            downloadViewHolder.tvTitle = (MarqueTextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", MarqueTextView.class);
            downloadViewHolder.mRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036b, "field 'mRootView'", RelativeLayout.class);
            downloadViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            DownloadViewHolder downloadViewHolder = this.f21662do;
            if (downloadViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21662do = null;
            downloadViewHolder.ivCover = null;
            downloadViewHolder.tvName = null;
            downloadViewHolder.tvTitle = null;
            downloadViewHolder.mRootView = null;
            downloadViewHolder.tvOrigin = null;
        }
    }

    public DownloadListAdapter(Context context) {
        this.f21658for = context;
        this.f21660new = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ boolean m25635case(int i, View view) {
        OnLongItemClickListener onLongItemClickListener = this.f21659if;
        if (onLongItemClickListener == null) {
            return false;
        }
        onLongItemClickListener.onLongClick(view, i);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21657do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public synchronized boolean m25638break(ComicInfoBean comicInfoBean) {
        int iIndexOf = this.f21661try.indexOf(comicInfoBean);
        if (iIndexOf == -1) {
            return false;
        }
        m25644this(iIndexOf);
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public synchronized void m25639catch(String str) {
        Iterator<ComicInfoBean> it = this.f21661try.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ComicInfoBean next = it.next();
            if (str == next.getNoteUrl()) {
                m25638break(next);
                break;
            }
        }
        notifyDataSetChanged();
    }

    public void clearList() {
        this.f21661try.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull DownloadViewHolder downloadViewHolder, final int i) {
        ComicInfoBean comicInfoBean = this.f21661try.get(i);
        Object tag = downloadViewHolder.ivCover.getTag(R.id.arg_res_0x7f090391);
        if (tag == null || !tag.equals(comicInfoBean.getCoverUrl())) {
            downloadViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, null);
            if (!TextUtils.isEmpty(comicInfoBean.getCoverUrl())) {
                Cfinally.m26887class(this.f21658for, comicInfoBean.getCoverUrl(), downloadViewHolder.ivCover, null, AnalyzeHeaders.getDefaultUserAgent(Cdo.m26358abstract(comicInfoBean.getTag())));
            }
            downloadViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, comicInfoBean.getCoverUrl());
        }
        downloadViewHolder.tvTitle.setText(comicInfoBean.getName());
        downloadViewHolder.tvOrigin.setText(comicInfoBean.getOrigin());
        downloadViewHolder.tvName.setVisibility(8);
        downloadViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.s20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6002do.lambda$onBindViewHolder$0(i, view);
            }
        });
        downloadViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.t20
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f6372do.m25635case(i, view);
            }
        });
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized void m25641for(int i, ComicInfoBean comicInfoBean) {
        this.f21661try.add(i, comicInfoBean);
        notifyItemInserted(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ComicInfoBean> list = this.f21661try;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public List<ComicInfoBean> getList() {
        return this.f21661try;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public DownloadViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new DownloadViewHolder(this.f21660new.inflate(R.layout.arg_res_0x7f0c0092, (ViewGroup) null, false));
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized boolean m25643new(ComicInfoBean comicInfoBean) {
        return this.f21661try.contains(comicInfoBean);
    }

    public synchronized void refresh(List<ComicInfoBean> list) {
        int size = this.f21661try.size();
        this.f21661try.clear();
        notifyItemRangeRemoved(0, size);
        this.f21661try.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21657do = onItemClickListener;
    }

    public void setOnLongItemClickListener(OnLongItemClickListener onLongItemClickListener) {
        this.f21659if = onLongItemClickListener;
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized void m25644this(int i) {
        this.f21661try.remove(i);
        notifyItemRemoved(i);
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized ComicInfoBean m25645try(int i) {
        return this.f21661try.get(i);
    }
}

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
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.BadgeView;
import com.wsw.cospa.widget.view.RoundImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ComicShelfListAdapter extends RecyclerView.Adapter<ComicViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private WeakReference<Context> f21631case;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21632do;

    /* renamed from: for, reason: not valid java name */
    private Context f21633for;

    /* renamed from: if, reason: not valid java name */
    private OnLongItemClickListener f21634if;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21635new;

    /* renamed from: try, reason: not valid java name */
    private List<ComicShelfBean> f21636try = new ArrayList();

    public static class ComicViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f0902a2)
        public AVLoadingIndicatorView loadingView;

        @BindView(R.id.arg_res_0x7f09046f)
        public TextView tvComicName;

        @BindView(R.id.arg_res_0x7f090494)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        @BindView(R.id.arg_res_0x7f0904a5)
        public TextView tvReadChapter;

        @BindView(R.id.arg_res_0x7f0900da)
        public BadgeView unRead;

        public ComicViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ComicViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ComicViewHolder f21637do;

        @UiThread
        public ComicViewHolder_ViewBinding(ComicViewHolder comicViewHolder, View view) {
            this.f21637do = comicViewHolder;
            comicViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            comicViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
            comicViewHolder.tvComicName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", TextView.class);
            comicViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
            comicViewHolder.tvReadChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a5, "field 'tvReadChapter'", TextView.class);
            comicViewHolder.unRead = (BadgeView) Cnew.m10373case(view, R.id.arg_res_0x7f0900da, "field 'unRead'", BadgeView.class);
            comicViewHolder.loadingView = (AVLoadingIndicatorView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a2, "field 'loadingView'", AVLoadingIndicatorView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ComicViewHolder comicViewHolder = this.f21637do;
            if (comicViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21637do = null;
            comicViewHolder.ivCover = null;
            comicViewHolder.tvOrigin = null;
            comicViewHolder.tvComicName = null;
            comicViewHolder.tvLastChapter = null;
            comicViewHolder.tvReadChapter = null;
            comicViewHolder.unRead = null;
            comicViewHolder.loadingView = null;
        }
    }

    public ComicShelfListAdapter(Context context) {
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f21631case = weakReference;
        Context context2 = weakReference.get();
        this.f21633for = context2;
        this.f21635new = (LayoutInflater) context2.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public /* synthetic */ boolean m25581else(int i, View view) {
        OnLongItemClickListener onLongItemClickListener = this.f21634if;
        if (onLongItemClickListener == null) {
            return false;
        }
        onLongItemClickListener.onLongClick(view, i);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public /* synthetic */ void m25583goto(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21632do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21632do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public /* synthetic */ boolean m25586this(int i, View view) {
        OnLongItemClickListener onLongItemClickListener = this.f21634if;
        if (onLongItemClickListener == null) {
            return false;
        }
        onLongItemClickListener.onLongClick(view, i);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ComicViewHolder comicViewHolder, final int i) {
        ComicShelfBean comicShelfBean = this.f21636try.get(i);
        ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
        Object tag = comicViewHolder.ivCover.getTag(R.id.arg_res_0x7f09010d);
        if (tag == null || !tag.equals(comicInfoBean.getCoverUrl())) {
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, null);
            Cfinally.m26887class(this.f21633for, comicInfoBean.getCoverUrl(), comicViewHolder.ivCover, comicShelfBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(Cdo.m26358abstract(comicInfoBean.getTag())));
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, comicInfoBean.getCoverUrl());
        }
        vv0.m8965if("ComicShelfListAdapter", " Cover url : " + comicInfoBean.getCoverUrl() + " name : " + comicInfoBean.getName() + " shelfBean.isLoading() : " + comicShelfBean.isLoading());
        comicViewHolder.tvComicName.setText(comicInfoBean.getName());
        comicViewHolder.tvOrigin.setText(comicInfoBean.getOrigin());
        if (comicShelfBean.isLoading()) {
            comicViewHolder.loadingView.show();
            comicViewHolder.loadingView.setVisibility(0);
            comicViewHolder.unRead.setVisibility(8);
        } else {
            comicViewHolder.loadingView.hide();
            comicViewHolder.loadingView.setVisibility(8);
            comicViewHolder.unRead.setVisibility(0);
            comicViewHolder.unRead.setHighlight(comicShelfBean.getHasUpdate());
            comicViewHolder.unRead.setBadgeCount(comicShelfBean.getUnreadChapterNum());
        }
        if (TextUtils.isEmpty(comicShelfBean.getLastChapterName())) {
            comicViewHolder.tvLastChapter.setVisibility(8);
        } else {
            comicViewHolder.tvLastChapter.setVisibility(0);
            if (comicShelfBean.getLastChapterName().contains("话") || comicShelfBean.getLastChapterName().contains("-") || comicShelfBean.getLastChapterName().contains("上") || comicShelfBean.getLastChapterName().contains("下") || comicShelfBean.getLastChapterName().contains("卷") || comicShelfBean.getLastChapterName().contains("章") || comicShelfBean.getLastChapterName().contains("局")) {
                comicViewHolder.tvLastChapter.setText("更新至" + comicShelfBean.getLastChapterName());
            } else if ("连载中".equals(comicShelfBean.getLastChapterName()) || "已完结".equals(comicShelfBean.getLastChapterName()) || comicShelfBean.getLastChapterName().contains("更新至")) {
                comicViewHolder.tvLastChapter.setText(comicShelfBean.getLastChapterName());
            } else {
                comicViewHolder.tvLastChapter.setText("更新至" + comicShelfBean.getLastChapterName());
            }
        }
        if (TextUtils.isEmpty(comicShelfBean.getDurChapterName())) {
            comicViewHolder.tvReadChapter.setVisibility(8);
        } else {
            comicViewHolder.tvReadChapter.setVisibility(0);
            String durChapterName = comicShelfBean.getDurChapterName();
            if (durChapterName.contains("话") || durChapterName.contains("-") || durChapterName.contains("上") || durChapterName.contains("下") || durChapterName.contains("卷") || durChapterName.contains("章") || durChapterName.contains("局")) {
                comicViewHolder.tvReadChapter.setText("阅读至" + durChapterName);
            } else if (tm1.m7998case(durChapterName)) {
                comicViewHolder.tvReadChapter.setText("阅读至" + durChapterName);
            } else {
                comicViewHolder.tvReadChapter.setText("阅读至" + durChapterName);
            }
        }
        comicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.no
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4274do.lambda$onBindViewHolder$0(i, view);
            }
        });
        comicViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.po
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f5157do.m25581else(i, view);
            }
        });
    }

    /* renamed from: case, reason: not valid java name */
    public synchronized ComicShelfBean m25588case(int i) {
        return this.f21636try.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ComicViewHolder comicViewHolder, final int i, @NonNull List<Object> list) {
        ComicShelfBean comicShelfBean = this.f21636try.get(i);
        ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
        Object tag = comicViewHolder.ivCover.getTag(R.id.arg_res_0x7f09010d);
        if (tag == null || !tag.equals(comicInfoBean.getCoverUrl())) {
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, null);
            Cfinally.m26887class(this.f21633for, comicInfoBean.getCoverUrl(), comicViewHolder.ivCover, comicShelfBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(Cdo.m26358abstract(comicInfoBean.getTag())));
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, comicInfoBean.getCoverUrl());
        }
        comicViewHolder.tvComicName.setText(comicInfoBean.getName());
        comicViewHolder.tvOrigin.setText(comicInfoBean.getOrigin());
        if (comicShelfBean.isLoading()) {
            comicViewHolder.loadingView.setVisibility(0);
            comicViewHolder.unRead.setVisibility(8);
            comicViewHolder.loadingView.show();
        } else {
            comicViewHolder.loadingView.hide();
            comicViewHolder.loadingView.setVisibility(8);
            comicViewHolder.unRead.setVisibility(0);
            comicViewHolder.unRead.setHighlight(comicShelfBean.getHasUpdate());
            comicViewHolder.unRead.setBadgeCount(comicShelfBean.getUnreadChapterNum());
        }
        if (TextUtils.isEmpty(comicShelfBean.getLastChapterName())) {
            comicViewHolder.tvLastChapter.setVisibility(8);
        } else {
            comicViewHolder.tvLastChapter.setVisibility(0);
            if (comicShelfBean.getLastChapterName().contains("话") || comicShelfBean.getLastChapterName().contains("-") || comicShelfBean.getLastChapterName().contains("上") || comicShelfBean.getLastChapterName().contains("下") || comicShelfBean.getLastChapterName().contains("卷") || comicShelfBean.getLastChapterName().contains("章") || comicShelfBean.getLastChapterName().contains("局")) {
                comicViewHolder.tvLastChapter.setText("更新至" + comicShelfBean.getLastChapterName());
            } else if ("连载中".equals(comicShelfBean.getLastChapterName()) || "已完结".equals(comicShelfBean.getLastChapterName()) || comicShelfBean.getLastChapterName().contains("更新至")) {
                comicViewHolder.tvLastChapter.setText(comicShelfBean.getLastChapterName());
            } else {
                comicViewHolder.tvLastChapter.setText("更新至" + comicShelfBean.getLastChapterName());
            }
        }
        if (TextUtils.isEmpty(comicShelfBean.getDurChapterName())) {
            comicViewHolder.tvReadChapter.setVisibility(8);
        } else {
            comicViewHolder.tvReadChapter.setVisibility(0);
            String durChapterName = comicShelfBean.getDurChapterName();
            if (durChapterName.contains("话") || durChapterName.contains("-") || durChapterName.contains("上") || durChapterName.contains("下") || durChapterName.contains("卷") || durChapterName.contains("章") || durChapterName.contains("局")) {
                comicViewHolder.tvReadChapter.setText("阅读至" + durChapterName);
            } else if (tm1.m7998case(durChapterName)) {
                comicViewHolder.tvReadChapter.setText("阅读至" + durChapterName);
            } else {
                comicViewHolder.tvReadChapter.setText("阅读至" + durChapterName);
            }
        }
        comicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.oo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4704do.m25583goto(i, view);
            }
        });
        comicViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.qo
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f5497do.m25586this(i, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ComicViewHolder(this.f21635new.inflate(R.layout.arg_res_0x7f0c0091, (ViewGroup) null, false));
    }

    /* renamed from: const, reason: not valid java name */
    public synchronized void m25591const(ComicShelfBean comicShelfBean) {
        for (int i = 0; i < this.f21636try.size(); i++) {
            if (Objects.equals(this.f21636try.get(i).getNoteUrl(), comicShelfBean.getNoteUrl())) {
                this.f21636try.set(i, comicShelfBean);
                notifyItemChanged(i);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ComicShelfBean> list = this.f21636try;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public synchronized void refresh(List<ComicShelfBean> list) {
        int size = this.f21636try.size();
        this.f21636try.clear();
        notifyItemRangeRemoved(0, size);
        this.f21636try.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21632do = onItemClickListener;
    }

    public void setOnLongItemClickListener(OnLongItemClickListener onLongItemClickListener) {
        this.f21634if = onLongItemClickListener;
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized void m25592try() {
        this.f21636try.clear();
        notifyDataSetChanged();
    }
}

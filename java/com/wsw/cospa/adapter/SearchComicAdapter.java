package com.wsw.cospa.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.v4.tm1;
import android.support.v4.w;
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
import com.wsw.cospa.adapter.SearchComicAdapter;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class SearchComicAdapter extends RecyclerView.Adapter<ComicViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21831do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21832for;

    /* renamed from: if, reason: not valid java name */
    private Context f21833if;

    /* renamed from: new, reason: not valid java name */
    private List<SearchComicBean> f21834new = new ArrayList();

    public static class ComicViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09036b)
        public RelativeLayout mRootView;

        @BindView(R.id.arg_res_0x7f09049e)
        public TextView tvName;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        @BindView(R.id.arg_res_0x7f0904be)
        public TextView tvTitle;

        public ComicViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ComicViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ComicViewHolder f21835do;

        @UiThread
        public ComicViewHolder_ViewBinding(ComicViewHolder comicViewHolder, View view) {
            this.f21835do = comicViewHolder;
            comicViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            comicViewHolder.tvName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09049e, "field 'tvName'", TextView.class);
            comicViewHolder.tvTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904be, "field 'tvTitle'", TextView.class);
            comicViewHolder.mRootView = (RelativeLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09036b, "field 'mRootView'", RelativeLayout.class);
            comicViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ComicViewHolder comicViewHolder = this.f21835do;
            if (comicViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21835do = null;
            comicViewHolder.ivCover = null;
            comicViewHolder.tvName = null;
            comicViewHolder.tvTitle = null;
            comicViewHolder.mRootView = null;
            comicViewHolder.tvOrigin = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.SearchComicAdapter$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21836do;

        public Cdo(List list) {
            this.f21836do = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.m26016switch().m26035private(this.f21836do);
        }
    }

    public SearchComicAdapter(Context context) {
        this.f21833if = context;
        this.f21832for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ int m25823case(String str, SearchComicBean searchComicBean, SearchComicBean searchComicBean2) {
        if ((TextUtils.equals(str, searchComicBean.getName()) || TextUtils.equals(str, searchComicBean.getAuthor())) && searchComicBean.getOriginNum() > searchComicBean2.getOriginNum()) {
            return -1;
        }
        if ((TextUtils.equals(str, searchComicBean2.getName()) || TextUtils.equals(str, searchComicBean2.getAuthor())) && searchComicBean.getOriginNum() < searchComicBean2.getOriginNum()) {
            return 1;
        }
        if (searchComicBean.getName().contains(str) || searchComicBean.getAuthor().contains(str)) {
            return -1;
        }
        return (searchComicBean2.getName().contains(str) || searchComicBean2.getAuthor().contains(str)) ? 1 : 0;
    }

    /* renamed from: catch, reason: not valid java name */
    private synchronized void m25824catch(List<SearchComicBean> list) {
        Ccase.m26722this().m26725else().execute(new Cdo(list));
    }

    /* renamed from: class, reason: not valid java name */
    private synchronized void m25825class(List<SearchComicBean> list, final String str) {
        try {
            Collections.sort(list, new Comparator() { // from class: android.support.v4.at1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return SearchComicAdapter.m25829goto(str, (SearchComicBean) obj, (SearchComicBean) obj2);
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public /* synthetic */ void m25827else(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21831do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ int m25829goto(String str, SearchComicBean searchComicBean, SearchComicBean searchComicBean2) {
        if (TextUtils.equals(str, searchComicBean.getName()) || TextUtils.equals(str, searchComicBean.getAuthor())) {
            return -1;
        }
        if (TextUtils.equals(str, searchComicBean2.getName()) || TextUtils.equals(str, searchComicBean2.getAuthor())) {
            return 1;
        }
        if (searchComicBean.getName().contains(str) || searchComicBean.getAuthor().contains(str)) {
            return -1;
        }
        return (searchComicBean2.getName().contains(str) || searchComicBean2.getAuthor().contains(str)) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ComicViewHolder(this.f21832for.inflate(R.layout.arg_res_0x7f0c0090, (ViewGroup) null, false));
    }

    public synchronized void clearList() {
        this.f21834new.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SearchComicBean> list = this.f21834new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public List<SearchComicBean> getList() {
        return this.f21834new;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m25832new(List<SearchComicBean> list, final String str) {
        ArrayList arrayList = new ArrayList(this.f21834new);
        if (list != null && list.size() > 0) {
            m25824catch(list);
            ArrayList<SearchComicBean> arrayList2 = new ArrayList();
            if (arrayList.size() == 0) {
                arrayList.addAll(list);
                m25825class(arrayList, str);
            } else {
                Iterator<SearchComicBean> it = list.iterator();
                while (true) {
                    int i = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    SearchComicBean next = it.next();
                    Boolean bool = Boolean.FALSE;
                    int size = arrayList.size();
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        SearchComicBean searchComicBean = arrayList.get(i);
                        if (TextUtils.equals(next.getName(), searchComicBean.getName()) && TextUtils.equals(next.getAuthor(), searchComicBean.getAuthor())) {
                            bool = Boolean.TRUE;
                            searchComicBean.addOriginUrl(next.getTag());
                            break;
                        }
                        i++;
                    }
                    if (!bool.booleanValue()) {
                        arrayList2.add(next);
                    }
                }
                for (SearchComicBean searchComicBean2 : arrayList2) {
                    if (TextUtils.equals(str, searchComicBean2.getName())) {
                        int i2 = 0;
                        while (true) {
                            if (i2 < arrayList.size()) {
                                SearchComicBean searchComicBean3 = arrayList.get(i2);
                                if (!TextUtils.equals(str, searchComicBean3.getName()) && !TextUtils.equals(str, searchComicBean3.getAuthor())) {
                                    arrayList.add(i2, searchComicBean2);
                                    break;
                                }
                                i2++;
                            }
                        }
                    } else if (TextUtils.equals(str, searchComicBean2.getAuthor())) {
                        int i3 = 0;
                        while (true) {
                            if (i3 < arrayList.size()) {
                                SearchComicBean searchComicBean4 = arrayList.get(i3);
                                if (!TextUtils.equals(str, searchComicBean4.getName()) && !TextUtils.equals(str, searchComicBean4.getAuthor())) {
                                    arrayList.add(i3, searchComicBean2);
                                    break;
                                }
                                i3++;
                            }
                        }
                    } else if (searchComicBean2.getName().contains(str) || searchComicBean2.getAuthor().contains(str)) {
                        int i4 = 0;
                        while (true) {
                            if (i4 < arrayList.size()) {
                                SearchComicBean searchComicBean5 = arrayList.get(i4);
                                if (!TextUtils.equals(str, searchComicBean5.getName()) && !TextUtils.equals(str, searchComicBean5.getAuthor())) {
                                    arrayList.add(i4, searchComicBean2);
                                    break;
                                }
                                i4++;
                            }
                        }
                    } else {
                        arrayList.add(searchComicBean2);
                    }
                }
            }
            Activity activityM9009if = w.m9009if(this.f21833if);
            if (activityM9009if != null) {
                this.f21834new = arrayList;
                Collections.sort(arrayList, new Comparator() { // from class: android.support.v4.zs1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return SearchComicAdapter.m25823case(str, (SearchComicBean) obj, (SearchComicBean) obj2);
                    }
                });
                activityM9009if.runOnUiThread(new Runnable() { // from class: android.support.v4.ys1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f8324do.notifyDataSetChanged();
                    }
                });
            }
        }
    }

    public synchronized void refresh(List<SearchComicBean> list) {
        int size = this.f21834new.size();
        this.f21834new.clear();
        notifyItemRangeRemoved(0, size);
        m25824catch(list);
        this.f21834new.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21831do = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ComicViewHolder comicViewHolder, final int i) {
        SearchComicBean searchComicBean = this.f21834new.get(i);
        System.out.println(searchComicBean.getCoverUrl());
        Object tag = comicViewHolder.ivCover.getTag(R.id.arg_res_0x7f090391);
        if (tag == null || !tag.equals(searchComicBean.getCoverUrl())) {
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, null);
            if (!TextUtils.isEmpty(searchComicBean.getCoverUrl())) {
                Cfinally.m26887class(this.f21833if, searchComicBean.getCoverUrl(), comicViewHolder.ivCover, searchComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(com.wsw.cospa.model.Cdo.m26358abstract(searchComicBean.getTag())));
            }
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, searchComicBean.getCoverUrl());
        }
        comicViewHolder.tvTitle.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        comicViewHolder.tvTitle.setText(searchComicBean.getName() + "(共" + searchComicBean.getOriginNum() + "个源)");
        comicViewHolder.tvOrigin.setText(searchComicBean.getOrigin());
        if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
            comicViewHolder.tvName.setVisibility(8);
        } else {
            comicViewHolder.tvName.setVisibility(0);
            if (searchComicBean.getLastChapter().contains("话") || searchComicBean.getLastChapter().contains("-") || searchComicBean.getLastChapter().contains("上") || searchComicBean.getLastChapter().contains("下") || searchComicBean.getLastChapter().contains("卷") || searchComicBean.getLastChapter().contains("章") || searchComicBean.getLastChapter().contains("局")) {
                comicViewHolder.tvName.setText("更新至" + searchComicBean.getLastChapter());
            } else if (searchComicBean.getLastChapter().contains("连载中") || searchComicBean.getLastChapter().contains("已完结") || searchComicBean.getLastChapter().contains("更") || searchComicBean.getLastChapter().contains("更新至")) {
                comicViewHolder.tvName.setText(searchComicBean.getLastChapter());
            } else if (tm1.m7998case(searchComicBean.getLastChapter())) {
                comicViewHolder.tvName.setText("更新至" + searchComicBean.getLastChapter());
            } else {
                comicViewHolder.tvName.setText("更新至" + searchComicBean.getLastChapter());
            }
        }
        comicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.xs1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8017do.m25827else(i, view);
            }
        });
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized SearchComicBean m25834try(int i) {
        return this.f21834new.get(i);
    }
}

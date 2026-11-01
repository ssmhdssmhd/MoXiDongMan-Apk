package com.wsw.cospa.adapter;

import android.content.Context;
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
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.dao.ComicShelfBeanDao;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.view.MarqueTextView;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes2.dex */
public class SearchBookshelfAdapter extends RecyclerView.Adapter<SearchBookshelfViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private Context f21824do;

    /* renamed from: for, reason: not valid java name */
    private List<ComicInfoBean> f21825for = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private OnSearchComicListener f21826if;

    public interface OnSearchComicListener {
        void callback(ComicInfoBean comicInfoBean);
    }

    public class SearchBookshelfViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09046f)
        public MarqueTextView tvComicName;

        @BindView(R.id.arg_res_0x7f090494)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        public SearchBookshelfViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class SearchBookshelfViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private SearchBookshelfViewHolder f21828do;

        @UiThread
        public SearchBookshelfViewHolder_ViewBinding(SearchBookshelfViewHolder searchBookshelfViewHolder, View view) {
            this.f21828do = searchBookshelfViewHolder;
            searchBookshelfViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            searchBookshelfViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
            searchBookshelfViewHolder.tvComicName = (MarqueTextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", MarqueTextView.class);
            searchBookshelfViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            SearchBookshelfViewHolder searchBookshelfViewHolder = this.f21828do;
            if (searchBookshelfViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21828do = null;
            searchBookshelfViewHolder.ivCover = null;
            searchBookshelfViewHolder.tvOrigin = null;
            searchBookshelfViewHolder.tvComicName = null;
            searchBookshelfViewHolder.tvLastChapter = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.SearchBookshelfAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicInfoBean f21829do;

        public Cdo(ComicInfoBean comicInfoBean) {
            this.f21829do = comicInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SearchBookshelfAdapter.this.f21826if != null) {
                SearchBookshelfAdapter.this.f21826if.callback(this.f21829do);
            }
        }
    }

    public SearchBookshelfAdapter(Context context) {
        this.f21824do = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public SearchBookshelfViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new SearchBookshelfViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.arg_res_0x7f0c009e, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21825for.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull SearchBookshelfViewHolder searchBookshelfViewHolder, int i) {
        ComicInfoBean comicInfoBean = this.f21825for.get(i);
        ComicShelfBean comicShelfBeanUnique = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3132case().queryBuilder().where(ComicShelfBeanDao.Properties.f21993do.eq(comicInfoBean.getNoteUrl()), new WhereCondition[0]).build().unique();
        Cfinally.m26887class(this.f21824do, comicInfoBean.getCoverUrl(), searchBookshelfViewHolder.ivCover, comicShelfBeanUnique.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(com.wsw.cospa.model.Cdo.m26358abstract(comicInfoBean.getTag())));
        searchBookshelfViewHolder.tvComicName.setText(comicInfoBean.getName());
        searchBookshelfViewHolder.tvOrigin.setText(comicInfoBean.getOrigin());
        if (0 != comicShelfBeanUnique.getGroupId()) {
            ComicShelfGroupBean comicShelfGroupBeanM26113public = com.wsw.cospa.dao.Cdo.m26113public(Long.valueOf(comicShelfBeanUnique.getGroupId()));
            searchBookshelfViewHolder.tvLastChapter.setText("书架名：" + comicShelfGroupBeanM26113public.getGroupName());
        } else {
            searchBookshelfViewHolder.tvLastChapter.setText("书架名：全部");
        }
        searchBookshelfViewHolder.itemView.setOnClickListener(new Cdo(comicInfoBean));
    }

    /* renamed from: new, reason: not valid java name */
    public void m25822new(List<ComicInfoBean> list) {
        this.f21825for.clear();
        this.f21825for.addAll(list);
        notifyDataSetChanged();
    }

    public synchronized void refresh(List<ComicInfoBean> list) {
        int size = this.f21825for.size();
        this.f21825for.clear();
        notifyItemRangeRemoved(0, size);
        this.f21825for.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnSearchComicListener(OnSearchComicListener onSearchComicListener) {
        this.f21826if = onSearchComicListener;
    }
}

package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.j10;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.SourceFilterView;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.utils.Ctry;
import com.wsw.cospa.widget.scroller.FastScroller;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes2.dex */
public class SearchSourceView implements TextView.OnEditorActionListener {

    /* renamed from: case, reason: not valid java name */
    private SearchView.SearchAutoComplete f21337case;

    @BindView(R.id.arg_res_0x7f090103)
    public View closePopw;

    /* renamed from: do, reason: not valid java name */
    private Activity f21338do;

    /* renamed from: else, reason: not valid java name */
    private boolean f21339else;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: for, reason: not valid java name */
    private PopupWindow f21340for;

    /* renamed from: goto, reason: not valid java name */
    private SourceFilterAdapter.Cdo f21341goto;

    /* renamed from: if, reason: not valid java name */
    private View f21342if;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mLoadingRootView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    /* renamed from: new, reason: not valid java name */
    private onSourceFilterListener f21343new;

    @BindView(R.id.arg_res_0x7f090389)
    public SearchView searchView;

    /* renamed from: try, reason: not valid java name */
    private SourceFilterAdapter f21344try;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    public class SourceFilterAdapter extends RecyclerView.Adapter<SourceFilterView.SourceViewHolder> implements FastScroller.SectionIndexer, Filterable {

        /* renamed from: for, reason: not valid java name */
        private OnItemClickListener f21346for;

        /* renamed from: do, reason: not valid java name */
        private List<ComicSourceBean> f21345do = new ArrayList();

        /* renamed from: if, reason: not valid java name */
        private List<ComicSourceBean> f21347if = new ArrayList();

        /* renamed from: com.wsw.cospa.activity.SearchSourceView$SourceFilterAdapter$do, reason: invalid class name */
        public class Cdo extends Filter {

            /* renamed from: do, reason: not valid java name */
            private CharSequence f21349do;

            public Cdo() {
            }

            /* renamed from: if, reason: not valid java name */
            private void m25284if() {
                filter(this.f21349do);
            }

            /* renamed from: do, reason: not valid java name */
            public boolean m25285do() {
                if (TextUtils.isEmpty(this.f21349do)) {
                    return false;
                }
                filter(null);
                return true;
            }

            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (SourceFilterAdapter.this.f21347if == null) {
                    synchronized (SourceFilterAdapter.this.f21345do) {
                        SourceFilterAdapter.this.f21347if = new ArrayList(SourceFilterAdapter.this.f21345do);
                    }
                }
                if (TextUtils.isEmpty(charSequence)) {
                    synchronized (SourceFilterAdapter.this.f21345do) {
                        ArrayList arrayList = new ArrayList(SourceFilterAdapter.this.f21347if);
                        filterResults.values = arrayList;
                        filterResults.count = arrayList.size();
                    }
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    String string = charSequence.toString();
                    for (ComicSourceBean comicSourceBean : SourceFilterAdapter.this.f21345do) {
                        if (Cclass.m32258native(comicSourceBean.getBookSourceName(), string)) {
                            arrayList2.add(comicSourceBean);
                        }
                    }
                    filterResults.values = arrayList2;
                    filterResults.count = arrayList2.size();
                }
                return filterResults;
            }

            @Override // android.widget.Filter
            public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                this.f21349do = charSequence;
                SourceFilterAdapter.this.f21345do.clear();
                SourceFilterAdapter.this.notifyDataSetChanged();
                if (filterResults.count > 0) {
                    SourceFilterAdapter.this.f21345do.addAll((List) filterResults.values);
                    SourceFilterAdapter.this.notifyDataSetChanged();
                }
            }
        }

        public SourceFilterAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
            OnItemClickListener onItemClickListener = this.f21346for;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull SourceFilterView.SourceViewHolder sourceViewHolder, final int i) {
            ComicSourceBean comicSourceBean = this.f21345do.get(i);
            if (comicSourceBean == null) {
                sourceViewHolder.tvItem.setText(wq.w0);
            } else {
                sourceViewHolder.tvItem.setText(comicSourceBean.getBookSourceName());
            }
            sourceViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.rt1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5928do.lambda$onBindViewHolder$0(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public SourceFilterView.SourceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new SourceFilterView.SourceViewHolder(LayoutInflater.from(SearchSourceView.this.f21338do).inflate(R.layout.arg_res_0x7f0c0111, viewGroup, false));
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (SearchSourceView.this.f21341goto == null) {
                SearchSourceView.this.f21341goto = new Cdo();
            }
            return SearchSourceView.this.f21341goto;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f21345do.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // com.wsw.cospa.widget.scroller.FastScroller.SectionIndexer
        public CharSequence getSectionText(int i) {
            ComicSourceBean comicSourceBean = this.f21345do.get(i);
            if (comicSourceBean == null) {
                return "";
            }
            String bookSourceName = comicSourceBean.getBookSourceName();
            return Cclass.z(bookSourceName) ? "" : bookSourceName.substring(0, 1);
        }

        public void refresh(List<ComicSourceBean> list) {
            this.f21345do.clear();
            this.f21345do.addAll(list);
            notifyDataSetChanged();
        }

        public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
            this.f21346for = onItemClickListener;
        }

        /* renamed from: try, reason: not valid java name */
        public ComicSourceBean m25283try(int i) {
            return this.f21345do.get(i);
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchSourceView$do, reason: invalid class name */
    public class Cdo implements SearchView.OnQueryTextListener {
        public Cdo() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            SearchSourceView.this.f21339else = !TextUtils.isEmpty(str);
            SearchSourceView.this.m25273import();
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    public interface onSourceFilterListener {
        void onChange(ComicSourceBean comicSourceBean);

        void onDismiss();
    }

    public SearchSourceView(Activity activity, onSourceFilterListener onsourcefilterlistener) {
        this.f21338do = activity;
        this.f21343new = onsourcefilterlistener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public /* synthetic */ boolean m25263super(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return true;
        }
        PopupWindow popupWindow = this.f21340for;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f21340for.dismiss();
        }
        onSourceFilterListener onsourcefilterlistener = this.f21343new;
        if (onsourcefilterlistener == null) {
            return true;
        }
        onsourcefilterlistener.onDismiss();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public /* synthetic */ void m25264throw() {
        SourceFilterAdapter.Cdo cdo = this.f21341goto;
        if (cdo != null && cdo.m25285do()) {
            this.f21337case.setText((CharSequence) null);
        }
        PopupWindow popupWindow = this.f21340for;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f21340for.dismiss();
        }
        onSourceFilterListener onsourcefilterlistener = this.f21343new;
        if (onsourcefilterlistener != null) {
            onsourcefilterlistener.onDismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public /* synthetic */ void m25266while(int i) {
        j10.m3652do(this.searchView);
        ComicSourceBean comicSourceBeanM25283try = this.f21344try.m25283try(i);
        onSourceFilterListener onsourcefilterlistener = this.f21343new;
        if (onsourcefilterlistener != null) {
            onsourcefilterlistener.onChange(comicSourceBeanM25283try);
        }
        PopupWindow popupWindow = this.f21340for;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.f21340for.dismiss();
    }

    /* renamed from: break, reason: not valid java name */
    public String m25267break() {
        int iM8715for = v02.m8711if(CartoonApplication.m24690do()).m8715for("SourceSort", 0);
        if (iM8715for == 1) {
            return ComicSourceBeanDao.Properties.f22017break.columnName + " DESC";
        }
        if (iM8715for != 2) {
            return ComicSourceBeanDao.Properties.f22048this.columnName + " ASC";
        }
        return ComicSourceBeanDao.Properties.f22052try.columnName + " COLLATE LOCALIZED ASC";
    }

    /* renamed from: catch, reason: not valid java name */
    public void m25268catch() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }

    /* renamed from: class, reason: not valid java name */
    public void m25269class() {
        this.error_view.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }

    /* renamed from: const, reason: not valid java name */
    public void m25270const() throws Resources.NotFoundException {
        PopupWindow popupWindow = new PopupWindow(this.f21342if, -1, -2);
        this.f21340for = popupWindow;
        popupWindow.setInputMethodMode(1);
        this.f21340for.setSoftInputMode(34);
        this.f21340for.setBackgroundDrawable(new BitmapDrawable());
        this.f21340for.setFocusable(true);
        this.f21340for.setOutsideTouchable(true);
        this.f21340for.setAnimationStyle(R.style.arg_res_0x7f12035a);
        this.f21340for.update();
        this.f21340for.setTouchable(true);
        this.closePopw.getLayoutParams();
        this.closePopw.setOnTouchListener(new View.OnTouchListener() { // from class: android.support.v4.ot1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f4738do.m25263super(view, motionEvent);
            }
        });
        this.f21340for.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: android.support.v4.pt1
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.f5192do.m25264throw();
            }
        });
        this.f21344try = new SourceFilterAdapter();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f21338do, 3);
        this.mRecyclerView.addItemDecoration(new GridSpacingItemDecoration(10));
        this.mRecyclerView.setLayoutManager(gridLayoutManager);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f21344try.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f21344try);
        this.f21344try.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.qt1
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f5521do.m25266while(i);
            }
        });
        Ctry.m27142const(this.searchView, "搜索图源名");
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) this.searchView.findViewById(R.id.arg_res_0x7f090394);
        this.f21337case = searchAutoComplete;
        searchAutoComplete.setHintTextColor(this.f21338do.getResources().getColor(R.color.arg_res_0x7f060384));
        this.f21337case.setTextSize(14.0f);
        this.searchView.onActionViewExpanded();
        this.searchView.clearFocus();
        this.f21337case.setOnEditorActionListener(this);
        this.searchView.setOnQueryTextListener(new Cdo());
        m25268catch();
        m25273import();
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m25271final() {
        PopupWindow popupWindow = this.f21340for;
        return popupWindow != null && popupWindow.isShowing();
    }

    /* renamed from: goto, reason: not valid java name */
    public PopupWindow m25272goto() throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        View viewInflate = LayoutInflater.from(this.f21338do).inflate(R.layout.arg_res_0x7f0c0112, (ViewGroup) null, false);
        this.f21342if = viewInflate;
        ButterKnife.m10352case(this, viewInflate);
        m25270const();
        return this.f21340for;
    }

    /* renamed from: import, reason: not valid java name */
    public void m25273import() {
        List<ComicSourceBean> listM26366package;
        if (this.f21339else) {
            String str = "%" + ((Object) this.searchView.getQuery()) + "%";
            QueryBuilder<ComicSourceBean> queryBuilder = Cnew.m26132case().m26138try().m3139goto().queryBuilder();
            Property property = ComicSourceBeanDao.Properties.f22037new;
            listM26366package = queryBuilder.where(queryBuilder.and(property.isNotNull(), queryBuilder.or(ComicSourceBeanDao.Properties.f22052try.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), property.like(str)), new WhereCondition[0]), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).orderRaw(m25267break()).list();
        } else {
            listM26366package = com.wsw.cospa.model.Cdo.m26366package();
            if (listM26366package.size() > 0) {
                listM26366package.add(0, null);
            }
        }
        this.f21344try.refresh(listM26366package);
    }

    /* renamed from: native, reason: not valid java name */
    public void m25274native(View view) {
        PopupWindow popupWindow = this.f21340for;
        if (popupWindow != null) {
            j10.m3659native(popupWindow, view);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    public void m25275public(String str) {
        this.error_view.setVisibility(0);
        this.mRecyclerView.setVisibility(8);
        this.tvErrorView.setText(str);
        this.tvRetry.setVisibility(8);
    }

    /* renamed from: this, reason: not valid java name */
    public void m25276this() {
        PopupWindow popupWindow = this.f21340for;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }
}

package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.b0;
import android.support.v4.bz1;
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
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.SearchView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.gson.GsonBuilder;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.utils.Cimplements;
import com.wsw.cospa.utils.Ctry;
import com.wsw.cospa.widget.scroller.FastScroller;
import com.wsw.cospa.widget.view.FlowAdapter;
import com.wsw.cospa.widget.view.FlowLayout;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes2.dex */
public class SourceFilterView implements TextView.OnEditorActionListener {

    /* renamed from: case, reason: not valid java name */
    private SourceFilterAdapter f21362case;

    @BindView(R.id.arg_res_0x7f090103)
    public View closePopw;

    /* renamed from: do, reason: not valid java name */
    private Activity f21363do;

    /* renamed from: else, reason: not valid java name */
    private SearchView.SearchAutoComplete f21364else;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: for, reason: not valid java name */
    private PopupWindow f21365for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f21366goto;

    /* renamed from: if, reason: not valid java name */
    private View f21367if;

    @BindView(R.id.arg_res_0x7f0901d7)
    public FlowLayout mFlowLayout;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mLoadingRootView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    /* renamed from: new, reason: not valid java name */
    private onSourceFilterListener f21368new;

    @BindView(R.id.arg_res_0x7f090389)
    public SearchView searchView;

    /* renamed from: this, reason: not valid java name */
    private SourceFilterAdapter.Cdo f21369this;

    /* renamed from: try, reason: not valid java name */
    private Cfor f21370try;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    public class SourceFilterAdapter extends RecyclerView.Adapter<SourceViewHolder> implements FastScroller.SectionIndexer, Filterable {

        /* renamed from: for, reason: not valid java name */
        private OnItemClickListener f21372for;

        /* renamed from: do, reason: not valid java name */
        private List<ComicSourceBean> f21371do = new ArrayList();

        /* renamed from: if, reason: not valid java name */
        private List<ComicSourceBean> f21373if = new ArrayList();

        /* renamed from: com.wsw.cospa.activity.SourceFilterView$SourceFilterAdapter$do, reason: invalid class name */
        public class Cdo extends Filter {

            /* renamed from: do, reason: not valid java name */
            private CharSequence f21375do;

            public Cdo() {
            }

            /* renamed from: if, reason: not valid java name */
            private void m25337if() {
                filter(this.f21375do);
            }

            /* renamed from: do, reason: not valid java name */
            public boolean m25338do() {
                if (TextUtils.isEmpty(this.f21375do)) {
                    return false;
                }
                filter(null);
                return true;
            }

            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                Filter.FilterResults filterResults = new Filter.FilterResults();
                if (SourceFilterAdapter.this.f21373if == null) {
                    synchronized (SourceFilterAdapter.this.f21371do) {
                        SourceFilterAdapter.this.f21373if = new ArrayList(SourceFilterAdapter.this.f21371do);
                    }
                }
                if (TextUtils.isEmpty(charSequence)) {
                    synchronized (SourceFilterAdapter.this.f21371do) {
                        ArrayList arrayList = new ArrayList(SourceFilterAdapter.this.f21373if);
                        filterResults.values = arrayList;
                        filterResults.count = arrayList.size();
                    }
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    String string = charSequence.toString();
                    for (ComicSourceBean comicSourceBean : SourceFilterAdapter.this.f21371do) {
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
                this.f21375do = charSequence;
                SourceFilterAdapter.this.f21371do.clear();
                SourceFilterAdapter.this.notifyDataSetChanged();
                if (filterResults.count > 0) {
                    SourceFilterAdapter.this.f21371do.addAll((List) filterResults.values);
                    SourceFilterAdapter.this.notifyDataSetChanged();
                }
            }
        }

        public SourceFilterAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
            OnItemClickListener onItemClickListener = this.f21372for;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull SourceViewHolder sourceViewHolder, final int i) {
            sourceViewHolder.tvItem.setText(this.f21371do.get(i).getBookSourceName());
            sourceViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.r02
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5578do.lambda$onBindViewHolder$0(i, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public SourceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new SourceViewHolder(LayoutInflater.from(SourceFilterView.this.f21363do).inflate(R.layout.arg_res_0x7f0c0111, viewGroup, false));
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (SourceFilterView.this.f21369this == null) {
                SourceFilterView.this.f21369this = new Cdo();
            }
            return SourceFilterView.this.f21369this;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f21371do.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // com.wsw.cospa.widget.scroller.FastScroller.SectionIndexer
        public CharSequence getSectionText(int i) {
            String bookSourceName = this.f21371do.get(i).getBookSourceName();
            return Cclass.z(bookSourceName) ? "" : bookSourceName.substring(0, 1);
        }

        public void refresh(List<ComicSourceBean> list) {
            this.f21371do.clear();
            this.f21371do.addAll(list);
            notifyDataSetChanged();
        }

        public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
            this.f21372for = onItemClickListener;
        }

        /* renamed from: try, reason: not valid java name */
        public ComicSourceBean m25336try(int i) {
            return this.f21371do.get(i);
        }
    }

    public static class SourceViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f090491)
        public TextView tvItem;

        public SourceViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class SourceViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private SourceViewHolder f21377do;

        @UiThread
        public SourceViewHolder_ViewBinding(SourceViewHolder sourceViewHolder, View view) {
            this.f21377do = sourceViewHolder;
            sourceViewHolder.tvItem = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tvItem'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            SourceViewHolder sourceViewHolder = this.f21377do;
            if (sourceViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21377do = null;
            sourceViewHolder.tvItem = null;
        }
    }

    /* renamed from: com.wsw.cospa.activity.SourceFilterView$do, reason: invalid class name */
    public class Cdo implements SearchView.OnQueryTextListener {
        public Cdo() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            SourceFilterView.this.f21366goto = !TextUtils.isEmpty(str);
            SourceFilterView.this.m25327switch();
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    /* renamed from: com.wsw.cospa.activity.SourceFilterView$for, reason: invalid class name */
    public class Cfor extends FlowAdapter<ComicSourceBean> {
        public Cfor(List<ComicSourceBean> list) {
            super(list);
        }

        @Override // com.wsw.cospa.widget.view.FlowAdapter
        public View getView(int i, FlowLayout flowLayout) {
            TextView textView = (TextView) LayoutInflater.from(flowLayout.getContext()).inflate(R.layout.arg_res_0x7f0c007f, (ViewGroup) flowLayout, false);
            textView.setText(getItem(i).getBookSourceName());
            return textView;
        }
    }

    /* renamed from: com.wsw.cospa.activity.SourceFilterView$if, reason: invalid class name */
    public class Cif extends bz1<List<ComicSourceBean>> {
        public Cif() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onComplete() {
            super.onComplete();
            SourceFilterView.this.m25321const();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
            SourceFilterView.this.m25321const();
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicSourceBean> list) {
            SourceFilterView.this.m25321const();
            SourceFilterView.this.f21362case.refresh(list);
            List<ComicSourceBean> listM26022class = DatabaseHelper.m26016switch().m26022class();
            if (listM26022class == null || listM26022class.size() <= 0) {
                SourceFilterView.this.m25323extends("暂无图源，请关注异次元微信公众号：搜索【异次元APP软件】或者扫描关于界面中的二维码获取图源");
            } else if (list == null || list.size() <= 0) {
                SourceFilterView.this.m25323extends("暂无图源！请在图源管理中勾选有发现的图源");
            } else {
                SourceFilterView.this.m25324final();
            }
        }
    }

    public interface onSourceFilterListener {
        void onChange(ComicSourceBean comicSourceBean);

        void onDismiss();
    }

    public SourceFilterView(Activity activity, onSourceFilterListener onsourcefilterlistener) {
        this.f21363do = activity;
        this.f21368new = onsourcefilterlistener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public /* synthetic */ void m25311import() {
        SourceFilterAdapter.Cdo cdo = this.f21369this;
        if (cdo != null && cdo.m25338do()) {
            this.f21364else.setText((CharSequence) null);
        }
        PopupWindow popupWindow = this.f21365for;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f21365for.dismiss();
        }
        onSourceFilterListener onsourcefilterlistener = this.f21368new;
        if (onsourcefilterlistener != null) {
            onsourcefilterlistener.onDismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public /* synthetic */ void m25312native(View view, int i, FlowLayout flowLayout) {
        j10.m3652do(view);
        ComicSourceBean item = this.f21370try.getItem(i);
        onSourceFilterListener onsourcefilterlistener = this.f21368new;
        if (onsourcefilterlistener != null) {
            onsourcefilterlistener.onChange(item);
        }
        PopupWindow popupWindow = this.f21365for;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.f21365for.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public /* synthetic */ void m25314public(int i) {
        j10.m3652do(this.searchView);
        ComicSourceBean comicSourceBeanM25336try = this.f21362case.m25336try(i);
        onSourceFilterListener onsourcefilterlistener = this.f21368new;
        if (onsourcefilterlistener != null) {
            onsourcefilterlistener.onChange(comicSourceBeanM25336try);
        }
        PopupWindow popupWindow = this.f21365for;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.f21365for.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public /* synthetic */ void m25315return(ObservableEmitter observableEmitter) throws Exception {
        String[] strArrSplit;
        boolean zM8713do = v02.m8711if(this.f21363do).m8713do(wq.G, false);
        boolean zM8713do2 = v02.m8711if(this.f21363do).m8713do(wq.H, true);
        ArrayList arrayList = zM8713do ? new ArrayList(DatabaseHelper.m26016switch().m26040super(zM8713do2)) : new ArrayList(DatabaseHelper.m26016switch().m26023const(zM8713do2));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ComicSourceBean comicSourceBean = (ComicSourceBean) it.next();
            try {
                String ruleFindUrl = comicSourceBean.getRuleFindUrl();
                if (!TextUtils.isEmpty(ruleFindUrl)) {
                    if (ruleFindUrl.startsWith("<js>")) {
                        String strSubstring = ruleFindUrl.substring(4, ruleFindUrl.lastIndexOf("<"));
                        CookieBean cookieBeanLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3142this().load(comicSourceBean.getBookSourceUrl());
                        HashMap map = new HashMap();
                        if (cookieBeanLoad == null || Cclass.A(cookieBeanLoad.getVariableStr())) {
                            strArrSplit = Cimplements.m26920do(strSubstring, comicSourceBean.getBookSourceUrl()).toString().split("(&&|\n)+");
                        } else {
                            map.put(wq.m0, cookieBeanLoad.getVariableStr());
                            strArrSplit = Cimplements.m26921if(strSubstring, comicSourceBean.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)).toString().split("(&&|\n)+");
                        }
                    } else {
                        strArrSplit = ruleFindUrl.split("(&&|\n)+");
                    }
                    if (strArrSplit != null && strArrSplit.length > 0) {
                        arrayList2.add(comicSourceBean);
                    }
                }
            } catch (Exception unused) {
                comicSourceBean.addGroup("发现规则语法错误");
                DatabaseHelper.m26016switch().m26019abstract(comicSourceBean);
            }
        }
        observableEmitter.onNext(arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public /* synthetic */ boolean m25318while(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return true;
        }
        PopupWindow popupWindow = this.f21365for;
        if (popupWindow != null && popupWindow.isShowing()) {
            this.f21365for.dismiss();
        }
        onSourceFilterListener onsourcefilterlistener = this.f21368new;
        if (onsourcefilterlistener == null) {
            return true;
        }
        onsourcefilterlistener.onDismiss();
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public PopupWindow m25319catch() {
        View viewInflate = LayoutInflater.from(this.f21363do).inflate(R.layout.arg_res_0x7f0c0112, (ViewGroup) null, false);
        this.f21367if = viewInflate;
        ButterKnife.m10352case(this, viewInflate);
        m25326super();
        return this.f21365for;
    }

    /* renamed from: class, reason: not valid java name */
    public void m25320class() {
        PopupWindow popupWindow = this.f21365for;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m25321const() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }

    /* renamed from: default, reason: not valid java name */
    public void m25322default() {
        this.mIndicatorView.setVisibility(0);
        this.mRecyclerView.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m25323extends(String str) {
        this.mIndicatorView.setVisibility(8);
        this.error_view.setVisibility(0);
        this.mRecyclerView.setVisibility(8);
        this.tvErrorView.setText(str);
        this.tvRetry.setVisibility(8);
    }

    /* renamed from: final, reason: not valid java name */
    public void m25324final() {
        this.mIndicatorView.setVisibility(8);
        this.error_view.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: static, reason: not valid java name */
    public void m25325static() {
        m25322default();
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.q02
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f5229do.m25315return(observableEmitter);
            }
        }).compose(b0.f302do).subscribe(new Cif());
    }

    /* renamed from: super, reason: not valid java name */
    public void m25326super() throws Resources.NotFoundException {
        PopupWindow popupWindow = new PopupWindow(this.f21367if, -1, -2);
        this.f21365for = popupWindow;
        popupWindow.setInputMethodMode(1);
        this.f21365for.setSoftInputMode(34);
        this.f21365for.setBackgroundDrawable(new BitmapDrawable());
        this.f21365for.setFocusable(true);
        this.f21365for.setOutsideTouchable(true);
        this.f21365for.setAnimationStyle(R.style.arg_res_0x7f12035a);
        this.f21365for.update();
        this.f21365for.setTouchable(true);
        this.closePopw.getLayoutParams();
        this.closePopw.setOnTouchListener(new View.OnTouchListener() { // from class: android.support.v4.m02
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f3816do.m25318while(view, motionEvent);
            }
        });
        this.f21365for.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: android.support.v4.n02
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                this.f4102do.m25311import();
            }
        });
        this.mFlowLayout.setOnItemClickListener(new FlowLayout.OnItemClickListener() { // from class: android.support.v4.p02
            @Override // com.wsw.cospa.widget.view.FlowLayout.OnItemClickListener
            public final void onItemClick(View view, int i, FlowLayout flowLayout) {
                this.f4820do.m25312native(view, i, flowLayout);
            }
        });
        this.f21362case = new SourceFilterAdapter();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f21363do, 3);
        this.mRecyclerView.addItemDecoration(new GridSpacingItemDecoration(10));
        this.mRecyclerView.setLayoutManager(gridLayoutManager);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f21362case.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f21362case);
        this.f21362case.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.o02
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f4395do.m25314public(i);
            }
        });
        Ctry.m27142const(this.searchView, "搜索图源名");
        SearchView.SearchAutoComplete searchAutoComplete = (SearchView.SearchAutoComplete) this.searchView.findViewById(R.id.arg_res_0x7f090394);
        this.f21364else = searchAutoComplete;
        searchAutoComplete.setHintTextColor(this.f21363do.getResources().getColor(R.color.arg_res_0x7f060384));
        this.f21364else.setTextSize(14.0f);
        this.searchView.onActionViewExpanded();
        this.searchView.clearFocus();
        this.f21364else.setOnEditorActionListener(this);
        this.searchView.setOnQueryTextListener(new Cdo());
        m25325static();
    }

    /* renamed from: switch, reason: not valid java name */
    public void m25327switch() {
        ArrayList arrayList;
        List<ComicSourceBean> list;
        if (!this.f21366goto) {
            m25325static();
            return;
        }
        String str = "%" + ((Object) this.searchView.getQuery()) + "%";
        QueryBuilder<ComicSourceBean> queryBuilder = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder();
        boolean zM8713do = v02.m8711if(this.f21363do).m8713do(wq.G, false);
        boolean zM8713do2 = v02.m8711if(this.f21363do).m8713do(wq.H, true);
        if (zM8713do) {
            if (zM8713do2) {
                QueryBuilder<ComicSourceBean> queryBuilderPreferLocalizedStringOrder = queryBuilder.preferLocalizedStringOrder();
                WhereCondition whereConditionNotEq = ComicSourceBeanDao.Properties.f22020class.notEq("");
                Property property = ComicSourceBeanDao.Properties.f22052try;
                list = queryBuilderPreferLocalizedStringOrder.where(queryBuilder.and(whereConditionNotEq, queryBuilder.or(property.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), ComicSourceBeanDao.Properties.f22037new.like(str)), new WhereCondition[0]), new WhereCondition[0]).orderAsc(property).list();
            } else {
                WhereCondition whereConditionNotEq2 = ComicSourceBeanDao.Properties.f22020class.notEq("");
                WhereCondition whereConditionEq = ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE);
                Property property2 = ComicSourceBeanDao.Properties.f22052try;
                list = queryBuilder.where(queryBuilder.and(whereConditionNotEq2, whereConditionEq, queryBuilder.or(property2.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), ComicSourceBeanDao.Properties.f22037new.like(str))), new WhereCondition[0]).preferLocalizedStringOrder().orderAsc(property2).list();
            }
            arrayList = new ArrayList(list);
        } else {
            arrayList = new ArrayList(zM8713do2 ? queryBuilder.where(queryBuilder.and(ComicSourceBeanDao.Properties.f22020class.notEq(""), queryBuilder.or(ComicSourceBeanDao.Properties.f22052try.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), ComicSourceBeanDao.Properties.f22037new.like(str)), new WhereCondition[0]), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).list() : queryBuilder.where(queryBuilder.and(ComicSourceBeanDao.Properties.f22020class.notEq(""), ComicSourceBeanDao.Properties.f22019catch.eq(Boolean.TRUE), queryBuilder.or(ComicSourceBeanDao.Properties.f22052try.like(str), ComicSourceBeanDao.Properties.f22018case.like(str), ComicSourceBeanDao.Properties.f22037new.like(str))), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).list());
        }
        this.f21362case.refresh(arrayList);
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m25328throw() {
        PopupWindow popupWindow = this.f21365for;
        return popupWindow != null && popupWindow.isShowing();
    }

    /* renamed from: throws, reason: not valid java name */
    public void m25329throws(View view) {
        PopupWindow popupWindow = this.f21365for;
        if (popupWindow != null) {
            j10.m3659native(popupWindow, view);
        }
    }
}

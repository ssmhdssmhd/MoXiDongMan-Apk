package com.wsw.cospa.widget.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.ds1;
import android.support.v4.j10;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.header.ClassicsHeader;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.ComicSourceBeanDao;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.model.SearchComicModel;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.OriginChooseDialog;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;
import rx.functions.Action1;

/* loaded from: classes2.dex */
public class SourceSheetDialog extends Dialog implements SearchComicModel.OnSearchListener {
    private static final String TAG = SourceSheetDialog.class.getSimpleName();
    private List<String> blockComics;
    private OriginChooseDialog.ChooseOriginListener click;
    private BaseActivity mActivity;
    private ChangeSourceAdapter mAdapter;
    public ClassicsHeader mClassicsHeader;
    private Context mContext;
    public RecyclerView mSourceRecyclerView;
    private View mView;
    private int mbgColorType;
    public SmartRefreshLayout refreshLayout;
    private SearchComicBean searchBean;
    private SearchComicModel searchComicModel;
    private long searchTime;

    public class ChangeSourceAdapter extends RecyclerView.Adapter<SourceViewHolder> {
        private List<SearchComicBean> sourceBeans = new ArrayList();

        public class SourceViewHolder extends RecyclerView.ViewHolder {

            @BindView(R.id.arg_res_0x7f0900f1)
            public ImageView checkbox;

            @BindView(R.id.arg_res_0x7f090231)
            public LinearLayout item_view;

            @BindView(R.id.arg_res_0x7f09023a)
            public RoundImageView ivCover;

            @BindView(R.id.arg_res_0x7f09046f)
            public TextView tvComicName;

            @BindView(R.id.arg_res_0x7f090494)
            public TextView tvLastChapter;

            @BindView(R.id.arg_res_0x7f0904a0)
            public TextView tvOrigin;

            public SourceViewHolder(View view) throws NoSuchMethodException, SecurityException {
                super(view);
                ButterKnife.m10352case(this, view);
            }
        }

        public class SourceViewHolder_ViewBinding implements Unbinder {
            private SourceViewHolder target;

            @UiThread
            public SourceViewHolder_ViewBinding(SourceViewHolder sourceViewHolder, View view) {
                this.target = sourceViewHolder;
                sourceViewHolder.item_view = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090231, "field 'item_view'", LinearLayout.class);
                sourceViewHolder.checkbox = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", ImageView.class);
                sourceViewHolder.ivCover = (RoundImageView) Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
                sourceViewHolder.tvOrigin = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
                sourceViewHolder.tvComicName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", TextView.class);
                sourceViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
            }

            @Override // butterknife.Unbinder
            @CallSuper
            public void unbind() {
                SourceViewHolder sourceViewHolder = this.target;
                if (sourceViewHolder == null) {
                    throw new IllegalStateException("Bindings already cleared.");
                }
                this.target = null;
                sourceViewHolder.item_view = null;
                sourceViewHolder.checkbox = null;
                sourceViewHolder.ivCover = null;
                sourceViewHolder.tvOrigin = null;
                sourceViewHolder.tvComicName = null;
                sourceViewHolder.tvLastChapter = null;
            }
        }

        public ChangeSourceAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(SearchComicBean searchComicBean, View view) {
            if (SourceSheetDialog.this.click != null) {
                SourceSheetDialog.this.click.onChooseOrigin(searchComicBean);
            }
        }

        public void clearList() {
            this.sourceBeans.clear();
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.sourceBeans.size();
        }

        public void refresh(List<SearchComicBean> list) {
            this.sourceBeans.clear();
            this.sourceBeans.addAll(list);
            notifyDataSetChanged();
        }

        public void setOrigin(SearchComicBean searchComicBean) {
            if (searchComicBean.getNoteUrl().equals(SourceSheetDialog.this.searchBean.getNoteUrl())) {
                this.sourceBeans.add(0, searchComicBean);
            } else {
                this.sourceBeans.add(searchComicBean);
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull SourceViewHolder sourceViewHolder, int i) {
            final SearchComicBean searchComicBean = this.sourceBeans.get(i);
            if (searchComicBean.getChecked().booleanValue()) {
                sourceViewHolder.checkbox.setImageDrawable(SourceSheetDialog.this.mContext.getResources().getDrawable(R.drawable.arg_res_0x7f080172));
            } else {
                sourceViewHolder.checkbox.setImageDrawable(SourceSheetDialog.this.mContext.getResources().getDrawable(R.drawable.arg_res_0x7f080173));
            }
            Object tag = sourceViewHolder.ivCover.getTag(R.id.arg_res_0x7f09010d);
            if (tag == null || !tag.equals(searchComicBean.getCoverUrl())) {
                sourceViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, null);
                Cfinally.m26887class(SourceSheetDialog.this.mContext, searchComicBean.getCoverUrl(), sourceViewHolder.ivCover, searchComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(Cdo.m26358abstract(searchComicBean.getTag())));
                sourceViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, searchComicBean.getCoverUrl());
            }
            sourceViewHolder.tvOrigin.setText(searchComicBean.getOrigin());
            sourceViewHolder.tvComicName.setText(searchComicBean.getName());
            if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
                sourceViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            } else {
                sourceViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            }
            sourceViewHolder.item_view.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.u02
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6723do.lambda$onBindViewHolder$0(searchComicBean, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public SourceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new SourceViewHolder(LayoutInflater.from(SourceSheetDialog.this.mContext).inflate(SourceSheetDialog.this.mbgColorType == 0 ? R.layout.arg_res_0x7f0c0054 : R.layout.arg_res_0x7f0c0053, viewGroup, false));
        }
    }

    public SourceSheetDialog(Context context, int i, SearchComicBean searchComicBean) {
        super(context, R.style.arg_res_0x7f120128);
        this.mbgColorType = 0;
        this.mContext = context;
        this.mActivity = (BaseActivity) context;
        this.mbgColorType = i;
        this.searchBean = searchComicBean;
    }

    private void getOriginList(final SearchComicBean searchComicBean) {
        final ArrayList arrayList = new ArrayList();
        if (searchComicBean != null) {
            searchComicBean.setChecked(Boolean.TRUE);
            arrayList.add(searchComicBean);
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.gt(0), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).rx().list().e4(ds1.m1523try()).b4(new Action1() { // from class: android.support.v4.t02
                @Override // rx.functions.Action1
                public final void call(Object obj) {
                    this.f6364do.lambda$getOriginList$1(searchComicBean, arrayList, (List) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getOriginList$1(final SearchComicBean searchComicBean, final List list, final List list2) {
        Ccase.m26722this().m26728throw().execute(new Runnable() { // from class: com.wsw.cospa.widget.view.SourceSheetDialog.1
            @Override // java.lang.Runnable
            public void run() {
                List list3 = list2;
                if (list3 != null && list3.size() > 0) {
                    List<SearchComicBean> listM26025extends = DatabaseHelper.m26016switch().m26025extends(searchComicBean);
                    for (int i = 0; i < list2.size(); i++) {
                        for (int i2 = 0; i2 < listM26025extends.size(); i2++) {
                            if (((ComicSourceBean) list2.get(i)).getBookSourceUrl().equals(listM26025extends.get(i2).getTag())) {
                                list.add(listM26025extends.get(i2));
                            }
                        }
                    }
                }
                if (list.size() == 1 && ((SearchComicBean) list.get(0)).getNoteUrl().equals(SourceSheetDialog.this.searchBean.getNoteUrl())) {
                    SourceSheetDialog.this.refreshLayout.autoRefresh();
                } else {
                    SourceSheetDialog.this.mAdapter.refresh(list);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$0(RefreshLayout refreshLayout) {
        this.searchComicModel.m26325interface(1);
        this.searchComicModel.m26323continue(this.searchBean.getName(), this.searchTime, Boolean.TRUE);
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public Boolean checkIsExist(SearchComicBean searchComicBean) {
        return Boolean.FALSE;
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public int getItemCount() {
        return 0;
    }

    public void initButtomSheet() {
        setCanceledOnTouchOutside(true);
        this.refreshLayout = (SmartRefreshLayout) this.mView.findViewById(R.id.arg_res_0x7f09035c);
        this.mSourceRecyclerView = (RecyclerView) this.mView.findViewById(R.id.arg_res_0x7f0902aa);
        this.mClassicsHeader = (ClassicsHeader) this.mView.findViewById(R.id.arg_res_0x7f09029d);
        Window window = getWindow();
        window.setGravity(80);
        window.setWindowAnimations(R.style.arg_res_0x7f12035e);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = j10.m3656goto() / 2;
        window.setAttributes(attributes);
        if (this.mbgColorType == 0) {
            this.mView.setBackgroundResource(R.drawable.arg_res_0x7f080093);
            this.mClassicsHeader.mo24445if(this.mActivity.getResources().getColor(R.color.arg_res_0x7f060380));
        } else {
            this.mView.setBackgroundResource(R.drawable.arg_res_0x7f080094);
            this.mClassicsHeader.mo24445if(this.mActivity.getResources().getColor(R.color.arg_res_0x7f060342));
        }
    }

    public void initData() {
        this.blockComics = Cpackage.m27020for(v02.m8711if(this.mContext).m8719try(wq.H0, ""), String.class);
        this.searchComicModel = new SearchComicModel(this.mActivity, this);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.searchTime = jCurrentTimeMillis;
        this.searchComicModel.m26327protected(jCurrentTimeMillis);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setOnRefreshListener(new OnRefreshListener() { // from class: android.support.v4.s02
            @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
            public final void onRefresh(RefreshLayout refreshLayout) {
                this.f5990do.lambda$initData$0(refreshLayout);
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext);
        linearLayoutManager.setOrientation(1);
        this.mSourceRecyclerView.setLayoutManager(linearLayoutManager);
        ChangeSourceAdapter changeSourceAdapter = new ChangeSourceAdapter();
        this.mAdapter = changeSourceAdapter;
        this.mSourceRecyclerView.setAdapter(changeSourceAdapter);
        getOriginList(this.searchBean);
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreFinish(Boolean bool) {
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        if (smartRefreshLayout != null) {
            smartRefreshLayout.finishRefresh();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreSearchBook(List<SearchComicBean> list) {
        try {
            List<String> list2 = this.blockComics;
            int i = 0;
            if (list2 == null || list2.size() <= 0) {
                while (i < list.size()) {
                    if (list.get(i).getName().equals(this.searchBean.getName())) {
                        if (list.get(i).getNoteUrl().equals(this.searchBean.getNoteUrl())) {
                            list.get(i).setChecked(Boolean.TRUE);
                        }
                        this.mAdapter.setOrigin(list.get(i));
                        DatabaseHelper.m26016switch().o(list.get(i));
                        return;
                    }
                    i++;
                }
                return;
            }
            while (i < list.size()) {
                String name = list.get(i).getName();
                if (name.equals(this.searchBean.getName()) && !this.blockComics.contains(name)) {
                    if (list.get(i).getNoteUrl().equals(this.searchBean.getNoteUrl())) {
                        list.get(i).setChecked(Boolean.TRUE);
                    }
                    this.mAdapter.setOrigin(list.get(i));
                    DatabaseHelper.m26016switch().o(list.get(i));
                    return;
                }
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.arg_res_0x7f0c0052, (ViewGroup) null, false);
        this.mView = viewInflate;
        setContentView(viewInflate);
        initButtomSheet();
        initData();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SearchComicModel searchComicModel = this.searchComicModel;
        if (searchComicModel != null) {
            searchComicModel.m26322abstract();
        }
    }

    @Override // android.app.Dialog
    public void onStop() {
        SearchComicModel searchComicModel = this.searchComicModel;
        if (searchComicModel != null) {
            searchComicModel.m26322abstract();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshFinish(Boolean bool) {
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        if (smartRefreshLayout != null) {
            smartRefreshLayout.finishRefresh();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshSearchBook() {
        this.mAdapter.clearList();
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void searchBookError(Boolean bool) {
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        if (smartRefreshLayout != null) {
            smartRefreshLayout.finishRefresh();
        }
    }

    public void setOnChooseOriginListener(OriginChooseDialog.ChooseOriginListener chooseOriginListener) {
        this.click = chooseOriginListener;
    }
}

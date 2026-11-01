package com.wsw.cospa.widget;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.ds1;
import android.support.v4.j10;
import android.support.v4.v02;
import android.support.v4.vv0;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.gyf.immersionbar.Celse;
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
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;
import rx.functions.Action1;

/* loaded from: classes2.dex */
public class ChangeSourceDialog extends BottomSheetDialog implements SearchComicModel.OnSearchListener {
    private List<String> blockComics;
    private OriginChooseDialog.ChooseOriginListener click;
    public CoordinatorLayout coordinatorLayout;
    public ImageView ivRefresh;
    private BaseActivity mActivity;
    private ChangeSourceAdapter mAdapter;
    private Context mContext;
    public ProgressBar mProgressBar;
    public RecyclerView mSourceRecyclerView;
    private View mView;
    private int mbgColorType;
    public int peekHeight;
    private SearchComicBean searchBean;
    private SearchComicModel searchComicModel;
    private long searchTime;
    public TextView tv_title;

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
            if (ChangeSourceDialog.this.click != null) {
                ChangeSourceDialog.this.click.onChooseOrigin(searchComicBean);
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
            int size = this.sourceBeans.size();
            this.sourceBeans.clear();
            notifyItemRangeRemoved(0, size);
            this.sourceBeans.addAll(list);
            notifyDataSetChanged();
        }

        public void setOrigin(SearchComicBean searchComicBean) {
            if (searchComicBean.getNoteUrl().equals(ChangeSourceDialog.this.searchBean.getNoteUrl())) {
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
                sourceViewHolder.checkbox.setImageDrawable(ChangeSourceDialog.this.mContext.getResources().getDrawable(R.drawable.arg_res_0x7f080172));
            } else {
                sourceViewHolder.checkbox.setImageDrawable(ChangeSourceDialog.this.mContext.getResources().getDrawable(R.drawable.arg_res_0x7f080173));
            }
            Object tag = sourceViewHolder.ivCover.getTag(R.id.arg_res_0x7f09010d);
            if (tag == null || !tag.equals(searchComicBean.getCoverUrl())) {
                sourceViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, null);
                Cfinally.m26887class(ChangeSourceDialog.this.mContext, searchComicBean.getCoverUrl(), sourceViewHolder.ivCover, searchComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(Cdo.m26358abstract(searchComicBean.getTag())));
                sourceViewHolder.ivCover.setTag(R.id.arg_res_0x7f09010d, searchComicBean.getCoverUrl());
            }
            sourceViewHolder.tvOrigin.setText(searchComicBean.getOrigin());
            sourceViewHolder.tvComicName.setText(searchComicBean.getName());
            if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
                sourceViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            } else {
                sourceViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            }
            sourceViewHolder.item_view.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.hh
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2403do.lambda$onBindViewHolder$0(searchComicBean, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public SourceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new SourceViewHolder(LayoutInflater.from(ChangeSourceDialog.this.mContext).inflate(R.layout.arg_res_0x7f0c0054, viewGroup, false));
        }
    }

    public ChangeSourceDialog(Context context, int i, SearchComicBean searchComicBean) {
        super(context, R.style.arg_res_0x7f1200fa);
        this.mbgColorType = 0;
        this.peekHeight = 0;
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
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().queryBuilder().where(ComicSourceBeanDao.Properties.f22019catch.gt(0), new WhereCondition[0]).orderDesc(ComicSourceBeanDao.Properties.f22017break).rx().list().e4(ds1.m1523try()).b4(new Action1() { // from class: android.support.v4.gh
                @Override // rx.functions.Action1
                public final void call(Object obj) {
                    this.f2125do.lambda$getOriginList$0(searchComicBean, arrayList, (List) obj);
                }
            });
        }
    }

    private void initData() {
        BottomSheetBehavior bottomSheetBehaviorM12860extends = BottomSheetBehavior.m12860extends((View) this.mView.getParent());
        double dM3656goto = j10.m3656goto();
        Double.isNaN(dM3656goto);
        bottomSheetBehaviorM12860extends.n((int) (dM3656goto * 0.5d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getOriginList$0(final SearchComicBean searchComicBean, final List list, final List list2) {
        Ccase.m26722this().m26728throw().execute(new Runnable() { // from class: com.wsw.cospa.widget.ChangeSourceDialog.2
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
                if (list.size() == 1 && ((SearchComicBean) list.get(0)).getNoteUrl().equals(ChangeSourceDialog.this.searchBean.getNoteUrl())) {
                    ChangeSourceDialog.this.mAdapter.refresh(list);
                    ChangeSourceDialog.this.ivRefresh.performClick();
                } else {
                    ChangeSourceDialog.this.mAdapter.refresh(list);
                }
                ChangeSourceDialog.this.tv_title.setText("换源列表（" + ChangeSourceDialog.this.mAdapter.getItemCount() + "）个");
            }
        });
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public Boolean checkIsExist(SearchComicBean searchComicBean) {
        return Boolean.FALSE;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        onStop();
        super.dismiss();
        Celse.m22694interface(this.mActivity, this);
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public int getItemCount() {
        return 0;
    }

    public void initView() {
        this.blockComics = Cpackage.m27020for(v02.m8711if(this.mContext).m8719try(wq.H0, ""), String.class);
        this.searchComicModel = new SearchComicModel(this.mActivity, this);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.searchTime = jCurrentTimeMillis;
        this.searchComicModel.m26327protected(jCurrentTimeMillis);
        this.ivRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.widget.ChangeSourceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChangeSourceDialog.this.ivRefresh.setVisibility(4);
                ChangeSourceDialog.this.mProgressBar.setVisibility(0);
                ChangeSourceDialog.this.searchComicModel.m26325interface(1);
                ChangeSourceDialog.this.searchComicModel.m26323continue(ChangeSourceDialog.this.searchBean.getName(), ChangeSourceDialog.this.searchTime, Boolean.TRUE);
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
        this.ivRefresh.setVisibility(0);
        this.mProgressBar.setVisibility(4);
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreSearchBook(List<SearchComicBean> list) {
        try {
            List<String> list2 = this.blockComics;
            if (list2 == null || list2.size() <= 0) {
                while (i < list.size()) {
                    String name = list.get(i).getName();
                    vv0.m8965if("ChangeSourceDialog", "loadMoreSearchBook name ： " + name);
                    i = (name.contains(this.searchBean.getName()) || this.searchBean.getName().contains(name)) ? 0 : i + 1;
                    if (list.get(i).getNoteUrl().equals(this.searchBean.getNoteUrl())) {
                        list.get(i).setChecked(Boolean.TRUE);
                    }
                    this.mAdapter.setOrigin(list.get(i));
                    DatabaseHelper.m26016switch().o(list.get(i));
                    this.tv_title.setText("换源列表（" + this.mAdapter.getItemCount() + "）个");
                    return;
                }
                return;
            }
            while (i < list.size()) {
                String name2 = list.get(i).getName();
                vv0.m8965if("ChangeSourceDialog", "loadMoreSearchBook name ： " + name2);
                if ((name2.contains(this.searchBean.getName()) || this.searchBean.getName().contains(name2)) && !this.blockComics.contains(name2)) {
                    if (list.get(i).getNoteUrl().equals(this.searchBean.getNoteUrl())) {
                        list.get(i).setChecked(Boolean.TRUE);
                    }
                    this.mAdapter.setOrigin(list.get(i));
                    DatabaseHelper.m26016switch().o(list.get(i));
                    this.tv_title.setText("换源列表（" + this.mAdapter.getItemCount() + "）个");
                    return;
                }
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.arg_res_0x7f0c0055, (ViewGroup) null, false);
        this.mView = viewInflate;
        this.mSourceRecyclerView = (RecyclerView) viewInflate.findViewById(R.id.arg_res_0x7f0902aa);
        this.coordinatorLayout = (CoordinatorLayout) this.mView.findViewById(R.id.arg_res_0x7f09011b);
        this.ivRefresh = (ImageView) this.mView.findViewById(R.id.arg_res_0x7f09024a);
        this.mProgressBar = (ProgressBar) this.mView.findViewById(R.id.arg_res_0x7f090335);
        this.tv_title = (TextView) this.mView.findViewById(R.id.arg_res_0x7f0904be);
        setContentView(this.mView);
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        initData();
        initView();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onStop() {
        SearchComicModel searchComicModel = this.searchComicModel;
        if (searchComicModel != null) {
            searchComicModel.m26322abstract();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshFinish(Boolean bool) {
        this.ivRefresh.setVisibility(0);
        this.mProgressBar.setVisibility(4);
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshSearchBook() {
        this.mAdapter.clearList();
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void searchBookError(Boolean bool) {
        this.ivRefresh.setVisibility(0);
        this.mProgressBar.setVisibility(4);
    }

    public void setOnChooseOriginListener(OriginChooseDialog.ChooseOriginListener chooseOriginListener) {
        this.click = chooseOriginListener;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Celse.l2(this.mActivity, this).b0();
        if (this.peekHeight == 0) {
            View viewFindViewById = findViewById(R.id.arg_res_0x7f09011b);
            viewFindViewById.measure(0, 0);
            this.peekHeight = viewFindViewById.getMeasuredHeight();
            FrameLayout frameLayout = (FrameLayout) findViewById(R.id.arg_res_0x7f090131);
            ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            layoutParams.height = -1;
            frameLayout.setLayoutParams(layoutParams);
            BottomSheetBehavior bottomSheetBehaviorM12860extends = BottomSheetBehavior.m12860extends(frameLayout);
            double dM3656goto = j10.m3656goto();
            Double.isNaN(dM3656goto);
            bottomSheetBehaviorM12860extends.n((int) (dM3656goto * 0.5d));
            bottomSheetBehaviorM12860extends.r(4);
        }
        getWindow().setWindowAnimations(R.style.arg_res_0x7f12035e);
    }
}

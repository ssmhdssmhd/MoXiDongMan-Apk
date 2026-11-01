package com.wsw.cospa.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.SearchComicModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class OriginChooseDialog extends Dialog implements SearchComicModel.OnSearchListener {
    private ChooseOriginListener click;
    private Activity mContext;
    private OriginAdapter originAdapter;
    private RecyclerView rvOrigin;
    private SearchComicBean searchBean;
    private SearchComicModel searchComicModel;
    private long searchTime;
    private SwipeRefreshLayout swipeRefreshLayout;
    private TextView tvComicName;

    public static class ChapterViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0900f1)
        public ImageView checkbox;

        @BindView(R.id.arg_res_0x7f090286)
        public LinearLayout llOrigin;

        @BindView(R.id.arg_res_0x7f090495)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a1)
        public TextView tvOriginName;

        public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ChapterViewHolder_ViewBinding implements Unbinder {
        private ChapterViewHolder target;

        @UiThread
        public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
            this.target = chapterViewHolder;
            chapterViewHolder.checkbox = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", ImageView.class);
            chapterViewHolder.tvOriginName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904a1, "field 'tvOriginName'", TextView.class);
            chapterViewHolder.tvLastChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090495, "field 'tvLastChapter'", TextView.class);
            chapterViewHolder.llOrigin = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090286, "field 'llOrigin'", LinearLayout.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ChapterViewHolder chapterViewHolder = this.target;
            if (chapterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            chapterViewHolder.checkbox = null;
            chapterViewHolder.tvOriginName = null;
            chapterViewHolder.tvLastChapter = null;
            chapterViewHolder.llOrigin = null;
        }
    }

    public interface ChooseOriginListener {
        void onChooseOrigin(SearchComicBean searchComicBean);
    }

    public class OriginAdapter extends RecyclerView.Adapter<ChapterViewHolder> {
        private Context mContext;
        private LayoutInflater mInflater;
        private List<SearchComicBean> originList = new ArrayList();

        public OriginAdapter(Context context) {
            this.mContext = context;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(SearchComicBean searchComicBean, View view) {
            if (OriginChooseDialog.this.click != null) {
                OriginChooseDialog.this.click.onChooseOrigin(searchComicBean);
            }
        }

        public void clearList() {
            this.originList.clear();
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.originList.size();
        }

        public List<SearchComicBean> getList() {
            return this.originList;
        }

        public void refresh(List<SearchComicBean> list) {
            this.originList.clear();
            this.originList.addAll(list);
            notifyDataSetChanged();
        }

        public void setOrigin(SearchComicBean searchComicBean) {
            this.originList.add(searchComicBean);
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, int i) {
            final SearchComicBean searchComicBean = this.originList.get(i);
            if (searchComicBean.getChecked().booleanValue()) {
                chapterViewHolder.checkbox.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.arg_res_0x7f080172));
            } else {
                chapterViewHolder.checkbox.setImageDrawable(this.mContext.getResources().getDrawable(R.drawable.arg_res_0x7f080173));
            }
            chapterViewHolder.tvOriginName.setText(searchComicBean.getOrigin());
            if (TextUtils.isEmpty(searchComicBean.getLastChapter())) {
                chapterViewHolder.tvLastChapter.setText("暂无章节信息");
            } else {
                chapterViewHolder.tvLastChapter.setText(searchComicBean.getLastChapter());
            }
            chapterViewHolder.llOrigin.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.widget.do
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f22769do.lambda$onBindViewHolder$0(searchComicBean, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new ChapterViewHolder(this.mInflater.inflate(R.layout.arg_res_0x7f0c009c, (ViewGroup) null, false));
        }
    }

    public OriginChooseDialog(@NonNull Activity activity, SearchComicBean searchComicBean) {
        super(activity);
        this.mContext = activity;
        this.searchBean = searchComicBean;
    }

    private List<SearchComicBean> getOriginList(SearchComicBean searchComicBean) {
        ArrayList arrayList = new ArrayList();
        searchComicBean.setChecked(Boolean.TRUE);
        arrayList.add(searchComicBean);
        List<ComicSourceBean> listE = DatabaseHelper.m26016switch().e();
        if (listE != null && listE.size() > 0) {
            List<SearchComicBean> listM26025extends = DatabaseHelper.m26016switch().m26025extends(searchComicBean);
            for (int i = 0; i < listE.size(); i++) {
                for (int i2 = 0; i2 < listM26025extends.size(); i2++) {
                    if (listE.get(i).getBookSourceUrl().equals(listM26025extends.get(i2).getTag())) {
                        arrayList.add(listM26025extends.get(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    private void initData() {
        String str;
        TextView textView = this.tvComicName;
        StringBuilder sb = new StringBuilder();
        sb.append(this.searchBean.getName());
        if (TextUtils.isEmpty(this.searchBean.getAuthor())) {
            str = "";
        } else {
            str = "(" + this.searchBean.getAuthor() + ")";
        }
        sb.append(str);
        textView.setText(sb.toString());
        this.originAdapter.refresh(getOriginList(this.searchBean));
        this.swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: android.support.v4.m81
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                this.f3858do.lambda$initData$0();
            }
        });
    }

    private void initView() {
        this.tvComicName = (TextView) findViewById(R.id.arg_res_0x7f09046f);
        this.rvOrigin = (RecyclerView) findViewById(R.id.arg_res_0x7f090378);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.arg_res_0x7f0903e7);
        this.swipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setColorSchemeResources(R.color.arg_res_0x7f0601c6, R.color.arg_res_0x7f0601c7, R.color.arg_res_0x7f0601c8, R.color.arg_res_0x7f0601c9);
        this.searchComicModel = new SearchComicModel(this.mContext, this);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.searchTime = jCurrentTimeMillis;
        this.searchComicModel.m26327protected(jCurrentTimeMillis);
        this.originAdapter = new OriginAdapter(this.mContext);
        this.rvOrigin.setLayoutManager(new LinearLayoutManager(this.mContext));
        this.rvOrigin.setAdapter(this.originAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$0() {
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

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreFinish(Boolean bool) {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreSearchBook(List<SearchComicBean> list) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getName().equals(this.searchBean.getName())) {
                if (list.get(i).getNoteUrl().equals(this.searchBean.getNoteUrl())) {
                    list.get(i).setChecked(Boolean.TRUE);
                }
                this.originAdapter.setOrigin(list.get(i));
                DatabaseHelper.m26016switch().o(list.get(i));
                return;
            }
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.arg_res_0x7f0c0076);
        initView();
        initData();
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        SearchComicModel searchComicModel = this.searchComicModel;
        if (searchComicModel != null) {
            searchComicModel.m26322abstract();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshFinish(Boolean bool) {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshSearchBook() {
        this.originAdapter.clearList();
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void searchBookError(Boolean bool) {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    public void setOnChooseOriginListener(ChooseOriginListener chooseOriginListener) {
        this.click = chooseOriginListener;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 17;
        attributes.width = -1;
        attributes.height = -1;
        getWindow().getDecorView().setPadding(50, 50, 50, 50);
        getWindow().setAttributes(attributes);
    }
}

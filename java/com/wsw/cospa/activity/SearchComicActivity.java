package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.b0;
import android.support.v4.b41;
import android.support.v4.bz1;
import android.support.v4.j10;
import android.support.v4.jh0;
import android.support.v4.m7;
import android.support.v4.o42;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.gaoneng.library.AutoScrollBackLayout;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.SearchComicActivity;
import com.wsw.cospa.activity.SearchSourceView;
import com.wsw.cospa.adapter.SearchBookshelfAdapter;
import com.wsw.cospa.adapter.SearchComicAdapter;
import com.wsw.cospa.adapter.SearchComicListAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.SearchComicModel;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.explosionfield.ExplosionField;
import com.wsw.cospa.widget.view.FlowAdapter;
import com.wsw.cospa.widget.view.FlowLayout;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import com.wsw.cospa.widget.view.SearchEditText;
import com.wsw.cospa.widget.view.refresh.JFengRefreshLayout;
import com.wsw.cospa.widget.view.refresh.JFengRefreshListener;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class SearchComicActivity extends BaseActivity implements SearchComicModel.OnSearchListener, View.OnClickListener, TextWatcher, TextView.OnEditorActionListener {

    /* renamed from: break, reason: not valid java name */
    private SearchComicListAdapter f21301break;

    /* renamed from: catch, reason: not valid java name */
    private SearchBookshelfAdapter f21302catch;

    /* renamed from: class, reason: not valid java name */
    private LinearLayoutManager f21303class;

    /* renamed from: const, reason: not valid java name */
    private GridLayoutManager f21304const;

    /* renamed from: default, reason: not valid java name */
    private boolean f21305default;

    @BindView(R.id.arg_res_0x7f090194)
    public SearchEditText et_search_comic;

    /* renamed from: extends, reason: not valid java name */
    private int f21306extends;

    @BindView(R.id.arg_res_0x7f0901ab)
    public FloatingActionButton fabSearchStop;

    /* renamed from: final, reason: not valid java name */
    private GridSpacingItemDecoration f21307final;

    /* renamed from: finally, reason: not valid java name */
    private ComicSourceBean f21308finally;

    /* renamed from: goto, reason: not valid java name */
    private SearchComicModel f21309goto;

    /* renamed from: import, reason: not valid java name */
    private Cthis f21310import;

    @BindView(R.id.arg_res_0x7f090236)
    public ImageView ivCleanHistory;

    @BindView(R.id.arg_res_0x7f09027a)
    public LinearLayout ll_comic_shelf;

    @BindView(R.id.arg_res_0x7f09027b)
    public LinearLayout ll_comic_source;

    @BindView(R.id.arg_res_0x7f09029f)
    public FloatingActionsMenu mFloatingActionsMenu;

    @BindView(R.id.arg_res_0x7f0902a0)
    public com.getbase.floatingactionbutton.FloatingActionButton mFloatingButton;

    @BindView(R.id.arg_res_0x7f0901d7)
    public FlowLayout mFlowLayout;

    @BindView(R.id.arg_res_0x7f0901d6)
    public LinearLayout mFlowView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902a6)
    public JFengRefreshLayout mRefreshLayout;

    /* renamed from: package, reason: not valid java name */
    private List<String> f21312package;

    /* renamed from: public, reason: not valid java name */
    private ExplosionField f21313public;

    @BindView(R.id.arg_res_0x7f09036f)
    public LinearLayout root_search_view;

    @BindView(R.id.arg_res_0x7f090384)
    public AutoScrollBackLayout scrollLayout;

    @BindView(R.id.arg_res_0x7f0903a2)
    public RecyclerView shelfRecyclerView;

    /* renamed from: super, reason: not valid java name */
    private long f21316super;

    @BindView(R.id.arg_res_0x7f090428)
    public Toolbar tbToolbar;

    /* renamed from: this, reason: not valid java name */
    private SearchComicAdapter f21318this;

    /* renamed from: throw, reason: not valid java name */
    private o42 f21319throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f21320throws;

    @BindView(R.id.arg_res_0x7f0904b4)
    public TextView tv_source_name;

    /* renamed from: while, reason: not valid java name */
    private String f21321while;

    /* renamed from: native, reason: not valid java name */
    private List<String> f21311native = new ArrayList();

    /* renamed from: return, reason: not valid java name */
    private int f21314return = 0;

    /* renamed from: static, reason: not valid java name */
    private int f21315static = 1;

    /* renamed from: switch, reason: not valid java name */
    private List<SearchComicBean> f21317switch = new ArrayList();

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$case, reason: invalid class name */
    public class Ccase implements TextWatcher {

        /* renamed from: com.wsw.cospa.activity.SearchComicActivity$case$do, reason: invalid class name */
        public class Cdo extends bz1<List<ComicInfoBean>> {
            public Cdo() {
            }

            @Override // io.reactivex.Observer
            public void onNext(@b41 List<ComicInfoBean> list) {
                SearchComicActivity.this.f21302catch.m25822new(list);
                SearchComicActivity.this.ll_comic_shelf.setVisibility(0);
                SearchComicActivity.this.mFlowView.setVisibility(8);
            }
        }

        /* renamed from: com.wsw.cospa.activity.SearchComicActivity$case$if, reason: invalid class name */
        public class Cif implements ObservableOnSubscribe<List<ComicInfoBean>> {

            /* renamed from: com.wsw.cospa.activity.SearchComicActivity$case$if$do, reason: invalid class name */
            public class Cdo implements Runnable {
                public Cdo() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SearchComicActivity.this.ll_comic_shelf.setVisibility(8);
                    SearchComicActivity.this.mFlowView.setVisibility(0);
                }
            }

            public Cif() {
            }

            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(@b41 ObservableEmitter<List<ComicInfoBean>> observableEmitter) throws Exception {
                List<ComicInfoBean> listO = com.wsw.cospa.dao.Cdo.o(SearchComicActivity.this.f21321while);
                if (listO == null || listO.size() <= 0) {
                    wi0.m9165try(new Cdo());
                } else {
                    observableEmitter.onNext(listO);
                    observableEmitter.onComplete();
                }
            }
        }

        public Ccase() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(SearchComicActivity.this.et_search_comic.getText().toString().trim())) {
                return;
            }
            SearchComicActivity.this.f21309goto.m26329transient();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchComicActivity searchComicActivity = SearchComicActivity.this;
            searchComicActivity.f21321while = searchComicActivity.et_search_comic.getText().toString().trim();
            if (SearchComicActivity.this.f21321while.length() > 0) {
                io.reactivex.Cnew.create(new Cif()).compose(b0.f302do).subscribe(new Cdo());
                return;
            }
            SearchComicActivity.this.mFlowView.setVisibility(0);
            SearchComicActivity.this.mRefreshLayout.setVisibility(8);
            SearchComicActivity.this.ll_comic_shelf.setVisibility(8);
            String[] strArrM5473try = SearchComicActivity.this.f21319throw.m5473try();
            if (strArrM5473try != null) {
                SearchComicActivity.this.f21311native = Arrays.asList(strArrM5473try);
                SearchComicActivity.this.f21310import.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$do, reason: invalid class name */
    public class Cdo implements SearchBookshelfAdapter.OnSearchComicListener {
        public Cdo() {
        }

        @Override // com.wsw.cospa.adapter.SearchBookshelfAdapter.OnSearchComicListener
        public void callback(ComicInfoBean comicInfoBean) {
            ComicDetailActivity.S(SearchComicActivity.this, true, comicInfoBean.getNoteUrl());
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$else, reason: invalid class name */
    public class Celse implements SearchEditText.onClearTextListener {
        public Celse() {
        }

        @Override // com.wsw.cospa.widget.view.SearchEditText.onClearTextListener
        public void onClearText() {
            SearchComicActivity.this.f21309goto.m26329transient();
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$for, reason: invalid class name */
    public class Cfor implements FloatingActionsMenu.OnFloatingActionsMenuUpdateListener {
        public Cfor() {
        }

        @Override // com.getbase.floatingactionbutton.FloatingActionsMenu.OnFloatingActionsMenuUpdateListener
        public void onMenuCollapsed() {
        }

        @Override // com.getbase.floatingactionbutton.FloatingActionsMenu.OnFloatingActionsMenuUpdateListener
        public void onMenuExpanded() {
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$goto, reason: invalid class name */
    public class Cgoto implements View.OnClickListener {
        public Cgoto() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchComicActivity searchComicActivity = SearchComicActivity.this;
            searchComicActivity.f(searchComicActivity.et_search_comic);
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchComicActivity.this.fabSearchStop.m13445class();
            SearchComicActivity.this.f21309goto.m26329transient();
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$new, reason: invalid class name */
    public class Cnew implements SearchSourceView.onSourceFilterListener {
        public Cnew() {
        }

        @Override // com.wsw.cospa.activity.SearchSourceView.onSourceFilterListener
        public void onChange(ComicSourceBean comicSourceBean) {
            if (comicSourceBean == null) {
                SearchComicActivity.this.tv_source_name.setText(wq.w0);
            } else {
                SearchComicActivity.this.f21308finally = comicSourceBean;
                SearchComicActivity.this.tv_source_name.setText(comicSourceBean.getBookSourceName());
            }
        }

        @Override // com.wsw.cospa.activity.SearchSourceView.onSourceFilterListener
        public void onDismiss() {
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$this, reason: invalid class name */
    public class Cthis extends FlowAdapter<String> {

        /* renamed from: com.wsw.cospa.activity.SearchComicActivity$this$do, reason: invalid class name */
        public class Cdo implements View.OnClickListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f21333do;

            public Cdo(int i) {
                this.f21333do = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String item = SearchComicActivity.this.f21310import.getItem(this.f21333do);
                SearchComicActivity.this.et_search_comic.setText(item);
                SearchComicActivity.this.f21321while = item;
                SearchComicActivity.this.h();
            }
        }

        public Cthis(List<String> list) {
            super(list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ boolean m25256if(TextView textView, int i, View view) {
            SearchComicActivity.this.f21313public.explode(textView);
            SearchComicActivity.this.f21319throw.m5471for(SearchComicActivity.this.f21310import.getItem(i));
            String[] strArrM5473try = SearchComicActivity.this.f21319throw.m5473try();
            if (strArrM5473try == null) {
                return true;
            }
            SearchComicActivity.this.f21311native = Arrays.asList(strArrM5473try);
            SearchComicActivity.this.f21310import.refresh(SearchComicActivity.this.f21311native);
            return true;
        }

        @Override // com.wsw.cospa.widget.view.FlowAdapter
        public View getView(final int i, FlowLayout flowLayout) {
            final TextView textView = (TextView) LayoutInflater.from(flowLayout.getContext()).inflate(R.layout.arg_res_0x7f0c007f, (ViewGroup) flowLayout, false);
            textView.setText(getItem(i));
            textView.setOnClickListener(new Cdo(i));
            textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.wsw.cospa.activity.strictfp
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f21506do.m25256if(textView, i, view);
                }
            });
            return textView;
        }
    }

    /* renamed from: com.wsw.cospa.activity.SearchComicActivity$try, reason: invalid class name */
    public class Ctry implements JFengRefreshListener {
        public Ctry() {
        }

        @Override // com.wsw.cospa.widget.view.refresh.JFengRefreshListener
        public void onLoad() {
            SearchComicActivity.this.f21309goto.m26323continue(SearchComicActivity.this.f21321while, SearchComicActivity.this.f21316super, Boolean.FALSE);
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
        public void onRefresh() {
            if (SearchComicActivity.this.f21309goto == null) {
                return;
            }
            SearchComicActivity.this.fabSearchStop.m13455switch();
            SearchComicModel searchComicModel = SearchComicActivity.this.f21309goto;
            SearchComicActivity searchComicActivity = SearchComicActivity.this;
            searchComicModel.m26324implements(searchComicActivity.tv_source_name, searchComicActivity.f21308finally);
            SearchComicActivity.this.f21309goto.m26325interface(1);
            SearchComicActivity.this.f21309goto.m26323continue(SearchComicActivity.this.f21321while, SearchComicActivity.this.f21316super, Boolean.TRUE);
            SearchComicActivity.this.mRefreshLayout.startRefresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        try {
            ComicDetailActivity.R(this, false, this.f21301break.m25846case(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i) {
        try {
            ComicDetailActivity.R(this, false, this.f21318this.m25834try(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i) {
        ComicDetailActivity.R(this, false, this.f21318this.m25834try(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(int i) {
        ComicDetailActivity.R(this, false, this.f21301break.m25846case(i));
    }

    private void e(boolean z) {
        if (z) {
            if (!this.mFlowView.isShown()) {
                this.mFlowView.setVisibility(0);
                this.ll_comic_shelf.setVisibility(8);
            }
            this.mRefreshLayout.setVisibility(8);
            return;
        }
        if (this.mFlowView.isShown()) {
            this.mFlowView.setVisibility(8);
            this.ll_comic_shelf.setVisibility(8);
        }
        this.mRefreshLayout.setVisibility(0);
        if (this.f21315static == 1) {
            this.f21301break.clearList();
        } else {
            this.f21318this.clearList();
        }
        this.mRecyclerView.scrollTo(0, 0);
    }

    public static void g(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SearchComicActivity.class);
        intent.putExtra("searchKey", str);
        context.startActivity(intent);
    }

    private void i() {
        this.mFloatingActionsMenu.m12417final();
        if (this.f21315static == 1) {
            this.f21318this = new SearchComicAdapter(this);
            if (this.mRecyclerView.getItemDecorationCount() <= 0) {
                this.mRecyclerView.addItemDecoration(this.f21307final);
            }
            this.mRecyclerView.setItemViewCacheSize(10);
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setHasFixedSize(true);
            this.f21318this.setHasStableIds(true);
            this.mRecyclerView.setLayoutManager(this.f21304const);
            this.mRecyclerView.setAdapter(this.f21318this);
            this.f21318this.refresh(this.f21317switch);
            this.f21318this.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.vs1
                @Override // com.wsw.cospa.listener.OnItemClickListener
                public final void onItemClick(int i) {
                    this.f7340do.c(i);
                }
            });
            v02.m8711if(this).m8714else(wq.f7633transient, 2);
            this.f21315static = 2;
            this.mFloatingButton.setIconDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f08011a));
            this.mFloatingButton.setTitle("列表模式");
            return;
        }
        this.f21301break = new SearchComicListAdapter(this);
        if (this.mRecyclerView.getItemDecorationCount() > 0) {
            this.mRecyclerView.removeItemDecoration(this.f21307final);
        }
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f21301break.setHasStableIds(true);
        this.mRecyclerView.setLayoutManager(this.f21303class);
        this.mRecyclerView.setAdapter(this.f21301break);
        this.f21301break.m25849final(this.f21321while, this.f21317switch);
        this.f21301break.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.ts1
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f6691do.d(i);
            }
        });
        v02.m8711if(this).m8714else(wq.f7633transient, 1);
        this.f21315static = 1;
        this.mFloatingButton.setIconDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f080117));
        this.mFloatingButton.setTitle("表格模式");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: implements, reason: not valid java name */
    public static /* synthetic */ void m25238implements(View view, int i, FlowLayout flowLayout) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public /* synthetic */ void m25240instanceof(View view) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
        SearchSourceView searchSourceView = new SearchSourceView(this, new Cnew());
        searchSourceView.m25272goto();
        searchSourceView.m25274native(this.tbToolbar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public /* synthetic */ boolean m25251synchronized(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3 && i != 0) {
            return false;
        }
        String strTrim = this.et_search_comic.getText().toString().trim();
        this.f21321while = strTrim;
        if (TextUtils.isEmpty(strTrim)) {
            return false;
        }
        this.f21314return = 1;
        h();
        return true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21309goto = new SearchComicModel(this, this);
        this.f21316super = System.currentTimeMillis();
        this.f21309goto.m26325interface(1);
        this.f21309goto.m26327protected(this.f21316super);
        this.mFlowLayout.setOnItemClickListener(new FlowLayout.OnItemClickListener() { // from class: android.support.v4.ws1
            @Override // com.wsw.cospa.widget.view.FlowLayout.OnItemClickListener
            public final void onItemClick(View view, int i, FlowLayout flowLayout) {
                SearchComicActivity.m25238implements(view, i, flowLayout);
            }
        });
        this.mFlowView.setVisibility(0);
        this.mRefreshLayout.setVisibility(8);
        this.ll_comic_shelf.setVisibility(8);
        o42 o42VarM5467new = o42.m5467new(this);
        this.f21319throw = o42VarM5467new;
        List<String> listAsList = Arrays.asList(o42VarM5467new.m5473try());
        this.f21311native = listAsList;
        Cthis cthis = new Cthis(listAsList);
        this.f21310import = cthis;
        this.mFlowLayout.setAdapter(cthis);
        this.f21312package = Cpackage.m27020for(v02.m8711if(this).m8719try(wq.H0, ""), String.class);
        if (TextUtils.isEmpty(getIntent().getStringExtra("searchKey"))) {
            return;
        }
        this.f21314return = 1;
        this.et_search_comic.setText(getIntent().getStringExtra("searchKey"));
        this.f21321while = getIntent().getStringExtra("searchKey");
        h();
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public Boolean checkIsExist(SearchComicBean searchComicBean) {
        return Boolean.FALSE;
    }

    public void f(EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.clearFocus();
        j10.m3657if(editText, true);
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public int getItemCount() {
        return 0;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    public void h() {
        this.fabSearchStop.m13455switch();
        this.et_search_comic.setFocusable(true);
        this.et_search_comic.setFocusableInTouchMode(true);
        this.et_search_comic.clearFocus();
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.et_search_comic.getWindowToken(), 2);
        j10.m3652do(this.et_search_comic);
        this.mRefreshLayout.startRefresh();
        this.mFlowView.setVisibility(8);
        this.mRefreshLayout.setVisibility(0);
        this.ll_comic_shelf.setVisibility(8);
        if (this.f21319throw.m5468case(this.f21321while)) {
            return;
        }
        this.f21319throw.m5469do(this.f21321while);
        String[] strArrM5473try = this.f21319throw.m5473try();
        if (strArrM5473try != null) {
            List<String> listAsList = Arrays.asList(strArrM5473try);
            this.f21311native = listAsList;
            this.f21310import.refresh(listAsList);
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreFinish(Boolean bool) {
        JFengRefreshLayout jFengRefreshLayout = this.mRefreshLayout;
        if (jFengRefreshLayout != null) {
            jFengRefreshLayout.finishLoading();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void loadMoreSearchBook(List<SearchComicBean> list) {
        ArrayList arrayList;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int i = 0;
                    if (this.f21320throws) {
                        arrayList = new ArrayList();
                        List<String> list2 = this.f21312package;
                        if (list2 == null || list2.size() <= 0) {
                            while (i < list.size()) {
                                String name = list.get(i).getName();
                                String author = list.get(i).getAuthor();
                                if (name.contains(this.f21321while) || author.contains(this.f21321while)) {
                                    arrayList.add(list.get(i));
                                }
                                i++;
                            }
                        } else {
                            while (i < list.size()) {
                                String name2 = list.get(i).getName();
                                String author2 = list.get(i).getAuthor();
                                if ((name2.contains(this.f21321while) || author2.contains(this.f21321while)) && !this.f21312package.contains(name2)) {
                                    arrayList.add(list.get(i));
                                }
                                i++;
                            }
                        }
                    } else {
                        List<String> list3 = this.f21312package;
                        if (list3 == null || list3.size() <= 0) {
                            arrayList = new ArrayList(list);
                        } else {
                            arrayList = new ArrayList();
                            while (i < list.size()) {
                                if (!this.f21312package.contains(list.get(i).getName())) {
                                    arrayList.add(list.get(i));
                                }
                                i++;
                            }
                        }
                    }
                    if (this.f21315static == 1) {
                        this.f21301break.m25850new(arrayList, this.f21321while);
                    } else {
                        this.f21318this.m25832new(arrayList, this.f21321while);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0041;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        j10.m3652do(this.et_search_comic);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.arg_res_0x7f090236) {
            if (id != R.id.arg_res_0x7f0902a0) {
                return;
            }
            if (this.f21315static == 1) {
                this.f21317switch = this.f21301break.getList();
            } else {
                this.f21317switch = this.f21318this.getList();
            }
            i();
            return;
        }
        o42 o42Var = this.f21319throw;
        if (o42Var != null) {
            o42Var.m5472if();
            v72.m8769if("清除成功");
            List<String> listAsList = Arrays.asList(this.f21319throw.m5473try());
            this.f21311native = listAsList;
            this.f21310import.refresh(listAsList);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d000f, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        SearchComicModel searchComicModel = this.f21309goto;
        if (searchComicModel != null) {
            searchComicModel.m26322abstract();
        }
        if (isDestroyed()) {
            return;
        }
        jh0.m3882do(this).m11057for();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onNewIntent(intent);
        setIntent(intent);
        mo24707this();
        if (TextUtils.isEmpty(getIntent().getStringExtra("searchKey"))) {
            return;
        }
        this.f21314return = 1;
        String stringExtra = getIntent().getStringExtra("searchKey");
        this.f21321while = stringExtra;
        this.et_search_comic.setText(stringExtra);
        h();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                return true;
            case R.id.arg_res_0x7f09006b /* 2131296363 */:
                ComicManagerActivity.A(this);
                break;
            case R.id.arg_res_0x7f090078 /* 2131296376 */:
                menuItem.setChecked(!menuItem.isChecked());
                v02.m8711if(this).m8712case(wq.M, menuItem.isChecked());
                this.f21320throws = v02.m8711if(this).m8713do(wq.M, false);
                break;
            case R.id.arg_res_0x7f090227 /* 2131296807 */:
                String strTrim = this.et_search_comic.getText().toString().trim();
                this.f21321while = strTrim;
                if (!TextUtils.isEmpty(strTrim)) {
                    this.f21314return = 1;
                    h();
                    return true;
                }
                break;
            case R.id.arg_res_0x7f090228 /* 2131296808 */:
            case R.id.arg_res_0x7f090229 /* 2131296809 */:
                menuItem.setChecked(true);
                if (this.f21315static == 1) {
                    this.f21317switch = this.f21301break.getList();
                } else {
                    this.f21317switch = this.f21318this.getList();
                }
                i();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        j10.m3652do(this.et_search_comic);
        super.onPause();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        this.f21320throws = v02.m8711if(this).m8713do(wq.M, false);
        menu.findItem(R.id.arg_res_0x7f090078).setChecked(this.f21320throws);
        int iM8715for = v02.m8711if(this).m8715for(wq.f7633transient, 1);
        this.f21315static = iM8715for;
        (iM8715for == 1 ? menu.findItem(R.id.arg_res_0x7f090229) : menu.findItem(R.id.arg_res_0x7f090228)).setChecked(true);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshFinish(Boolean bool) {
        JFengRefreshLayout jFengRefreshLayout = this.mRefreshLayout;
        if (jFengRefreshLayout != null) {
            jFengRefreshLayout.finishRefresh();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void refreshSearchBook() {
        this.f21315static = v02.m8711if(this).m8715for(wq.f7633transient, 1);
        this.f21317switch.clear();
        if (this.f21315static == 1) {
            this.f21301break.clearList();
        } else {
            this.f21318this.clearList();
        }
    }

    @Override // com.wsw.cospa.model.SearchComicModel.OnSearchListener
    public void searchBookError(Boolean bool) {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        this.scrollLayout.m12373this();
        getWindow().setSoftInputMode(3);
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.tbToolbar);
        this.f21313public = ExplosionField.attach2Window(this);
        this.f21320throws = v02.m8711if(this).m8713do(wq.M, false);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.f21303class = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.f21302catch = new SearchBookshelfAdapter(this);
        this.shelfRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.shelfRecyclerView.setAdapter(this.f21302catch);
        this.f21302catch.setOnSearchComicListener(new Cdo());
        this.fabSearchStop.m13445class();
        this.fabSearchStop.setOnClickListener(new Cif());
        boolean zM3662super = j10.m3662super(this);
        this.f21305default = zM3662super;
        if (zM3662super) {
            this.f21306extends = 5;
        } else {
            this.f21306extends = 3;
        }
        this.f21304const = new GridLayoutManager(this, this.f21306extends);
        this.f21307final = new GridSpacingItemDecoration(15);
        this.ivCleanHistory.setOnClickListener(this);
        this.mFloatingButton.setOnClickListener(this);
        this.mFloatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new Cfor());
        this.ll_comic_source.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.qs1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws NoSuchMethodException, Resources.NotFoundException, SecurityException {
                this.f5519do.m25240instanceof(view);
            }
        });
        this.mRefreshLayout.setRefreshDataView(this.mRecyclerView);
        this.mRefreshLayout.setOnRefreshListener((JFengRefreshListener) new Ctry());
        this.et_search_comic.addTextChangedListener(new Ccase());
        this.et_search_comic.setOnClearTextListener(new Celse());
        this.et_search_comic.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: android.support.v4.rs1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f5911do.m25251synchronized(textView, i, keyEvent);
            }
        });
        this.et_search_comic.setOnClickListener(new Cgoto());
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        recycledViewPool.setMaxRecycledViews(0, 10);
        this.mRecyclerView.setRecycledViewPool(recycledViewPool);
        int iM8715for = v02.m8711if(this).m8715for(wq.f7633transient, 1);
        this.f21315static = iM8715for;
        if (iM8715for == 1) {
            this.f21301break = new SearchComicListAdapter(this);
            this.mRecyclerView.setLayoutManager(this.f21303class);
            this.mRecyclerView.setItemViewCacheSize(10);
            this.mRecyclerView.setItemAnimator(null);
            this.f21301break.setHasStableIds(true);
            this.mRecyclerView.setHasFixedSize(true);
            this.mRecyclerView.setAdapter(this.f21301break);
            this.f21301break.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.ss1
                @Override // com.wsw.cospa.listener.OnItemClickListener
                public final void onItemClick(int i) {
                    this.f6242do.a(i);
                }
            });
            this.mFloatingButton.setIconDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f080117));
            this.mFloatingButton.setTitle("表格模式");
            return;
        }
        this.f21318this = new SearchComicAdapter(this);
        this.mRecyclerView.setLayoutManager(this.f21304const);
        this.mRecyclerView.addItemDecoration(this.f21307final);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.f21318this.setHasStableIds(true);
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setAdapter(this.f21318this);
        this.f21318this.setOnItemClickListener(new OnItemClickListener() { // from class: android.support.v4.us1
            @Override // com.wsw.cospa.listener.OnItemClickListener
            public final void onItemClick(int i) {
                this.f6977do.b(i);
            }
        });
        this.mFloatingButton.setIconDrawable(getResources().getDrawable(R.drawable.arg_res_0x7f08011a));
        this.mFloatingButton.setTitle("列表模式");
    }
}

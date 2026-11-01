package com.wsw.cospa.activity;

import android.content.Intent;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.y8;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.AddBookShelfActivity;
import com.wsw.cospa.adapter.AddBookShelfAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.listener.OnCheckedChangeListener;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.view.FixedTextInputEditText;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class AddBookShelfActivity extends BaseActivity implements RadioGroup.OnCheckedChangeListener, View.OnClickListener {

    /* renamed from: final, reason: not valid java name */
    public static final int f20838final = 10101;

    /* renamed from: super, reason: not valid java name */
    public static final int f20839super = 10102;

    @BindView(R.id.arg_res_0x7f0900f1)
    public CheckBox allCategoryCheck;

    @BindView(R.id.arg_res_0x7f09008c)
    public LinearLayout allCategoryLayout;

    /* renamed from: break, reason: not valid java name */
    private ComicShelfBean f20840break;

    /* renamed from: catch, reason: not valid java name */
    private ComicShelfGroupBean f20841catch;

    /* renamed from: class, reason: not valid java name */
    private List<ComicShelfGroupBean> f20842class;

    /* renamed from: const, reason: not valid java name */
    private AddBookShelfAdapter f20843const;

    @BindView(R.id.arg_res_0x7f090172)
    public FixedTextInputEditText etBookshelfName;

    /* renamed from: goto, reason: not valid java name */
    private boolean f20844goto;

    @BindView(R.id.arg_res_0x7f0901f5)
    public LinearLayout groupSortTip;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f090350)
    public AppCompatRadioButton rbGirdMode;

    @BindView(R.id.arg_res_0x7f090351)
    public AppCompatRadioButton rbListMode;

    @BindView(R.id.arg_res_0x7f090352)
    public AppCompatRadioButton rbSortDrag;

    @BindView(R.id.arg_res_0x7f090353)
    public AppCompatRadioButton rbSortTime;

    @BindView(R.id.arg_res_0x7f090362)
    public RadioGroup rgSortType;

    @BindView(R.id.arg_res_0x7f090363)
    public RadioGroup rgViewMode;

    @BindView(R.id.arg_res_0x7f090379)
    public LinearLayout savBookshelfView;

    @BindView(R.id.arg_res_0x7f0903a3)
    public RecyclerView shelfGroupList;

    /* renamed from: this, reason: not valid java name */
    private String f20845this;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    public interface DragListener {
        void onDragFinish();

        void onStartDrag(RecyclerView.ViewHolder viewHolder);
    }

    /* renamed from: com.wsw.cospa.activity.AddBookShelfActivity$do, reason: invalid class name */
    public class Cdo implements OnCheckedChangeListener {
        public Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public static /* synthetic */ void m24733for(ComicShelfGroupBean comicShelfGroupBean, boolean z, ObservableEmitter observableEmitter) throws Exception {
            comicShelfGroupBean.setEnable(z);
            com.wsw.cospa.dao.Cdo.m26093const(comicShelfGroupBean, false);
            observableEmitter.onNext(Boolean.TRUE);
            observableEmitter.onComplete();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public /* synthetic */ void m24735new(Boolean bool) throws Exception {
            Intent intent = new Intent();
            intent.putExtra("groupKey", AddBookShelfActivity.this.f20845this);
            AddBookShelfActivity.this.setResult(-1, intent);
        }

        @Override // com.wsw.cospa.listener.OnCheckedChangeListener
        public void onCheckedChanged(final ComicShelfGroupBean comicShelfGroupBean, final boolean z) {
            io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: com.wsw.cospa.activity.do
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    AddBookShelfActivity.Cdo.m24733for(comicShelfGroupBean, z, observableEmitter);
                }
            }).compose(b0.f302do).subscribe(new Consumer() { // from class: com.wsw.cospa.activity.if
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f21489do.m24735new((Boolean) obj);
                }
            });
        }

        @Override // com.wsw.cospa.listener.OnCheckedChangeListener
        public void onCheckedChanged(ComicSourceBean comicSourceBean, boolean z) {
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddBookShelfActivity$for, reason: invalid class name */
    public class Cfor extends bz1<ComicShelfBean> {
        public Cfor() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            AddBookShelfActivity.this.f20840break = comicShelfBean;
            if (AddBookShelfActivity.this.f20840break != null) {
                AddBookShelfActivity addBookShelfActivity = AddBookShelfActivity.this;
                addBookShelfActivity.f20841catch = com.wsw.cospa.dao.Cdo.i(addBookShelfActivity.f20840break);
                AddBookShelfActivity addBookShelfActivity2 = AddBookShelfActivity.this;
                addBookShelfActivity2.etBookshelfName.setText(addBookShelfActivity2.f20841catch.getGroupName());
                int viewId = AddBookShelfActivity.this.f20841catch.getViewId();
                int sortId = AddBookShelfActivity.this.f20841catch.getSortId();
                if (viewId == 1) {
                    AddBookShelfActivity.this.rbListMode.setChecked(true);
                    AddBookShelfActivity.this.rbGirdMode.setChecked(false);
                } else {
                    AddBookShelfActivity.this.rbGirdMode.setChecked(true);
                    AddBookShelfActivity.this.rbListMode.setChecked(false);
                }
                if (sortId == 1) {
                    AddBookShelfActivity.this.rbSortTime.setChecked(true);
                    AddBookShelfActivity.this.rbSortDrag.setChecked(false);
                } else {
                    AddBookShelfActivity.this.rbSortTime.setChecked(false);
                    AddBookShelfActivity.this.rbSortDrag.setChecked(true);
                }
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddBookShelfActivity$if, reason: invalid class name */
    public class Cif implements DragListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ItemTouchHelper f20848do;

        public Cif(ItemTouchHelper itemTouchHelper) {
            this.f20848do = itemTouchHelper;
        }

        @Override // com.wsw.cospa.activity.AddBookShelfActivity.DragListener
        public void onDragFinish() {
        }

        @Override // com.wsw.cospa.activity.AddBookShelfActivity.DragListener
        public void onStartDrag(RecyclerView.ViewHolder viewHolder) {
            this.f20848do.startDrag(viewHolder);
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddBookShelfActivity$new, reason: invalid class name */
    public class Cnew extends bz1<List<ComicShelfBean>> {
        public Cnew() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            AddBookShelfActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicShelfBean> list) {
            if (list != null && list.size() > 0) {
                v72.m8769if("不能删除有漫画的书架！");
                return;
            }
            com.wsw.cospa.dao.Cdo.m26108native(AddBookShelfActivity.this.f20841catch.getId());
            AddBookShelfActivity.this.setResult(-1);
            AddBookShelfActivity.this.finish();
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddBookShelfActivity$try, reason: invalid class name */
    public static class Ctry extends ItemTouchHelper.Callback {

        /* renamed from: do, reason: not valid java name */
        private AddBookShelfAdapter f20851do;

        public Ctry(AddBookShelfAdapter addBookShelfAdapter) {
            this.f20851do = addBookShelfAdapter;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            DragListener dragListener = this.f20851do.f21523new;
            if (dragListener != null) {
                dragListener.onDragFinish();
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return recyclerView.getLayoutManager() instanceof GridLayoutManager ? ItemTouchHelper.Callback.makeMovementFlags(15, 0) : ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.f20851do.m25441goto(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public /* synthetic */ void m24712abstract(boolean z, ObservableEmitter observableEmitter) throws Exception {
        v02.m8711if(this).m8712case(wq.f7617interface, z);
        observableEmitter.onNext(Boolean.TRUE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public /* synthetic */ void m24713continue(Boolean bool) throws Exception {
        Intent intent = new Intent();
        intent.putExtra("groupKey", this.f20845this);
        setResult(-1, intent);
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m24717implements(Fragment fragment, boolean z, String str) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) AddBookShelfActivity.class);
        intent.putExtra("isAdd", z);
        intent.putExtra("groupKey", str);
        fragment.startActivityForResult(intent, f20838final);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public /* synthetic */ void m24719interface(Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            super.onBackPressed();
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("groupKey", this.f20845this);
        setResult(-1, intent);
        super.onBackPressed();
    }

    /* renamed from: package, reason: not valid java name */
    private void m24721package() {
        ComicShelfGroupBean comicShelfGroupBean = this.f20841catch;
        if (comicShelfGroupBean != null) {
            ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26122throws(comicShelfGroupBean.getId().longValue()).subscribeOn(io.reactivex.schedulers.Cdo.m29772new()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Cnew());
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m24722protected(Fragment fragment, boolean z) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) AddBookShelfActivity.class);
        intent.putExtra("isAdd", z);
        fragment.startActivityForResult(intent, f20838final);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public /* synthetic */ void m24726strictfp(CompoundButton compoundButton, final boolean z) {
        if (this.allCategoryCheck.isPressed()) {
            ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.a0
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f0do.m24712abstract(z, observableEmitter);
                }
            }).subscribeOn(io.reactivex.schedulers.Cdo.m29774try()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.c0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f567do.m24713continue((Boolean) obj);
                }
            });
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m24729transient(Fragment fragment, boolean z, long j) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) AddBookShelfActivity.class);
        intent.putExtra("isAdd", z);
        intent.putExtra("groupId", j);
        fragment.startActivityForResult(intent, f20839super);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public /* synthetic */ void m24730volatile(ObservableEmitter observableEmitter) throws Exception {
        ArrayList arrayList = new ArrayList();
        AddBookShelfAdapter addBookShelfAdapter = this.f20843const;
        if (addBookShelfAdapter == null) {
            observableEmitter.onNext(Boolean.FALSE);
            observableEmitter.onComplete();
            return;
        }
        List<ComicShelfGroupBean> listM25442new = addBookShelfAdapter.m25442new();
        int size = listM25442new.size();
        for (int i = 0; i < size; i++) {
            ComicShelfGroupBean comicShelfGroupBean = listM25442new.get(i);
            try {
                if (comicShelfGroupBean.getGroupNumber() != i) {
                    comicShelfGroupBean.setGroupNumber(Integer.valueOf(i));
                    arrayList.add(comicShelfGroupBean);
                }
            } catch (Exception unused) {
                comicShelfGroupBean.setGroupNumber(Integer.valueOf(i));
                arrayList.add(comicShelfGroupBean);
            }
        }
        if (arrayList.isEmpty()) {
            observableEmitter.onNext(Boolean.FALSE);
            observableEmitter.onComplete();
        } else {
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3137else().insertOrReplaceInTx(arrayList);
            observableEmitter.onNext(Boolean.TRUE);
            observableEmitter.onComplete();
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        boolean booleanExtra = getIntent().getBooleanExtra("isAdd", true);
        this.f20844goto = booleanExtra;
        if (booleanExtra) {
            this.tvTitle.setText("新增书架");
            this.groupSortTip.setVisibility(0);
            this.allCategoryLayout.setVisibility(0);
            return;
        }
        this.tvTitle.setText("编辑书架");
        ComicShelfGroupBean comicShelfGroupBeanM26113public = com.wsw.cospa.dao.Cdo.m26113public(Long.valueOf(getIntent().getLongExtra("groupId", 0L)));
        this.f20841catch = comicShelfGroupBeanM26113public;
        if (comicShelfGroupBeanM26113public == null) {
            ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(getIntent().getStringExtra(wq.Cdo.f7669try)).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cfor());
            return;
        }
        this.etBookshelfName.setText(comicShelfGroupBeanM26113public.getGroupName());
        int viewId = this.f20841catch.getViewId();
        int sortId = this.f20841catch.getSortId();
        if (viewId == 1) {
            this.rbListMode.setChecked(true);
            this.rbGirdMode.setChecked(false);
        } else {
            this.rbGirdMode.setChecked(true);
            this.rbListMode.setChecked(false);
        }
        if (sortId == 1) {
            this.rbSortTime.setChecked(true);
            this.rbSortDrag.setChecked(false);
        } else {
            this.rbSortTime.setChecked(false);
            this.rbSortDrag.setChecked(true);
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c001d;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        j10.m3652do(this.etBookshelfName);
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.z
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f8380do.m24730volatile(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.d0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f903do.m24719interface((Boolean) obj);
            }
        });
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        if (radioGroup.getId() == this.rgViewMode.getId()) {
            StringBuilder sb = new StringBuilder();
            sb.append("onCheckedChanged  rgViewMode : ");
            sb.append(i);
            return;
        }
        if (radioGroup.getId() == this.rgSortType.getId()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCheckedChanged  rgSortType: ");
            sb2.append(i);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        int i;
        String str2;
        if (view.getId() != R.id.arg_res_0x7f090379) {
            return;
        }
        String strTrim = this.etBookshelfName.getText().toString().trim();
        int checkedRadioButtonId = this.rgViewMode.getCheckedRadioButtonId();
        int i2 = 2;
        if (checkedRadioButtonId == R.id.arg_res_0x7f090351) {
            str = "列表";
            i = 1;
        } else if (checkedRadioButtonId == R.id.arg_res_0x7f090350) {
            str = "网格";
            i = 2;
        } else {
            str = null;
            i = 0;
        }
        int checkedRadioButtonId2 = this.rgSortType.getCheckedRadioButtonId();
        if (checkedRadioButtonId2 == R.id.arg_res_0x7f090353) {
            str2 = "时间";
            i2 = 1;
        } else if (checkedRadioButtonId2 == R.id.arg_res_0x7f090352) {
            str2 = "拖拽";
        } else {
            str2 = null;
            i2 = 0;
        }
        if (!this.f20844goto) {
            if (TextUtils.isEmpty(strTrim)) {
                v72.m8769if("请输入书架名！");
                return;
            }
            this.f20841catch.setGroupName(strTrim);
            this.f20841catch.setViewId(i);
            this.f20841catch.setGroupView(str);
            this.f20841catch.setSortId(i2);
            this.f20841catch.setGroupSort(str2);
            this.f20841catch.setViewCheckedId(this.rgViewMode.getCheckedRadioButtonId());
            this.f20841catch.setSortCheckedId(this.rgSortType.getCheckedRadioButtonId());
            com.wsw.cospa.dao.Cdo.m26093const(this.f20841catch, this.f20844goto);
            setResult(-1);
            finish();
            return;
        }
        if (TextUtils.isEmpty(strTrim)) {
            v72.m8769if("请输入书架名！");
            return;
        }
        if (m24731private(strTrim)) {
            v72.m8769if("已存在同名书架！");
            return;
        }
        ComicShelfGroupBean comicShelfGroupBean = new ComicShelfGroupBean();
        comicShelfGroupBean.setId(null);
        comicShelfGroupBean.setGroupName(strTrim);
        comicShelfGroupBean.setViewId(i);
        comicShelfGroupBean.setGroupView(str);
        comicShelfGroupBean.setSortId(i2);
        comicShelfGroupBean.setGroupSort(str2);
        comicShelfGroupBean.setViewCheckedId(this.rgViewMode.getCheckedRadioButtonId());
        comicShelfGroupBean.setSortCheckedId(this.rgSortType.getCheckedRadioButtonId());
        comicShelfGroupBean.setEnable(true);
        com.wsw.cospa.dao.Cdo.m26093const(comicShelfGroupBean, this.f20844goto);
        setResult(-1);
        finish();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0000, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f09012c) {
            m24721package();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        for (int i = 0; i < menu.size(); i++) {
            if (menu.getItem(i).getItemId() == R.id.arg_res_0x7f09012c) {
                if (this.f20844goto) {
                    menu.getItem(i).setVisible(false);
                } else {
                    menu.getItem(i).setVisible(true);
                }
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m24731private(String str) {
        List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
        if (listH != null && listH.size() > 0) {
            Iterator<ComicShelfGroupBean> it = listH.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getGroupName())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.rgViewMode.setOnCheckedChangeListener(this);
        this.rgSortType.setOnCheckedChangeListener(this);
        this.savBookshelfView.setOnClickListener(this);
        String stringExtra = getIntent().getStringExtra("groupKey");
        this.f20845this = stringExtra;
        if (stringExtra != null && !stringExtra.isEmpty()) {
            this.f20842class = (List) y8.m9768for().m9770if(this.f20845this);
        }
        if (this.f20842class != null) {
            this.shelfGroupList.setLayoutManager(new LinearLayoutManager(this));
            AddBookShelfAdapter addBookShelfAdapter = new AddBookShelfAdapter(this);
            this.f20843const = addBookShelfAdapter;
            addBookShelfAdapter.m25439catch(true);
            this.shelfGroupList.setAdapter(this.f20843const);
            this.f20843const.refresh(this.f20842class);
            ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new Ctry(this.f20843const));
            itemTouchHelper.attachToRecyclerView(this.shelfGroupList);
            this.f20843const.setOnCheckedChangeListener(new Cdo());
            this.f20843const.m25440class(new Cif(itemTouchHelper));
            this.allCategoryCheck.setChecked(v02.m8711if(this).m8713do(wq.f7617interface, true));
            this.allCategoryCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: android.support.v4.y
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.f8066do.m24726strictfp(compoundButton, z);
                }
            });
        }
    }
}

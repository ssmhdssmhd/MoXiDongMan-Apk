package com.wsw.cospa.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.b0;
import android.support.v4.hm1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.wq;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.DownloadTaskAdapter;
import com.wsw.cospa.adapter.GroupManagerAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ComicGroupManagerActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: catch, reason: not valid java name */
    public static final int f21023catch = 10103;

    /* renamed from: break, reason: not valid java name */
    private ComicShelfGroupBean f21024break;

    /* renamed from: goto, reason: not valid java name */
    private GroupManagerAdapter f21025goto;

    @BindView(R.id.arg_res_0x7f090271)
    public LinearLayout ll_action_button;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private long f21026this;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    @BindView(R.id.arg_res_0x7f090477)
    public TextView tv_delete_comic;

    @BindView(R.id.arg_res_0x7f09049a)
    public TextView tv_move_shelf;

    @BindView(R.id.arg_res_0x7f0904ae)
    public TextView tv_select_comic;

    public interface DragListener {
        void onDragFinish();

        void onStartDrag(RecyclerView.ViewHolder viewHolder);
    }

    /* renamed from: com.wsw.cospa.activity.ComicGroupManagerActivity$do, reason: invalid class name */
    public class Cdo implements DownloadTaskAdapter.OnCheckedChangeListener {
        public Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m24932if(int i, boolean z) {
            if (ComicGroupManagerActivity.this.f21025goto != null) {
                ComicGroupManagerActivity.this.f21025goto.m25730new().get(i).setChecked(z);
                ComicGroupManagerActivity.this.f21025goto.notifyItemChanged(i);
            }
        }

        @Override // com.wsw.cospa.adapter.DownloadTaskAdapter.OnCheckedChangeListener
        public void onCheckedChanged(final int i, final boolean z) {
            if (ComicGroupManagerActivity.this.mRecyclerView.isComputingLayout()) {
                ComicGroupManagerActivity.this.mRecyclerView.post(new Runnable() { // from class: com.wsw.cospa.activity.native
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f21496do.m24932if(i, z);
                    }
                });
            } else if (ComicGroupManagerActivity.this.f21025goto != null) {
                ComicGroupManagerActivity.this.f21025goto.m25730new().get(i).setChecked(z);
                ComicGroupManagerActivity.this.f21025goto.notifyItemChanged(i);
            }
            ArrayList arrayList = new ArrayList();
            List<ComicShelfBean> listM25730new = ComicGroupManagerActivity.this.f21025goto.m25730new();
            for (ComicShelfBean comicShelfBean : listM25730new) {
                if (comicShelfBean.isChecked()) {
                    arrayList.add(comicShelfBean);
                }
            }
            if (arrayList.size() < listM25730new.size()) {
                ComicGroupManagerActivity.this.tv_select_comic.setText("全选");
            } else if (arrayList.size() >= listM25730new.size()) {
                ComicGroupManagerActivity.this.tv_select_comic.setText("取消全选");
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicGroupManagerActivity$for, reason: invalid class name */
    public class Cfor implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21028do;

        public Cfor(List list) {
            this.f21028do = list;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            for (int i = 0; i < this.f21028do.size(); i++) {
                ComicShelfBean comicShelfBean = (ComicShelfBean) this.f21028do.get(i);
                com.wsw.cospa.dao.Cdo.k(comicShelfBean);
                ComicGroupManagerActivity.this.f21025goto.m25726catch(comicShelfBean);
            }
            if (ComicGroupManagerActivity.this.f21025goto.m25730new().size() <= 0) {
                ComicGroupManagerActivity.this.f21025goto.m25732try();
                ComicGroupManagerActivity.this.ll_action_button.setVisibility(8);
            }
            hm1.m3062case().mo970if(new Object[0]);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicGroupManagerActivity$if, reason: invalid class name */
    public class Cif implements DragListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ItemTouchHelper f21030do;

        public Cif(ItemTouchHelper itemTouchHelper) {
            this.f21030do = itemTouchHelper;
        }

        @Override // com.wsw.cospa.activity.ComicGroupManagerActivity.DragListener
        public void onDragFinish() {
        }

        @Override // com.wsw.cospa.activity.ComicGroupManagerActivity.DragListener
        public void onStartDrag(RecyclerView.ViewHolder viewHolder) {
            this.f21030do.startDrag(viewHolder);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ComicGroupManagerActivity$new, reason: invalid class name */
    public static class Cnew extends ItemTouchHelper.Callback {

        /* renamed from: do, reason: not valid java name */
        private GroupManagerAdapter f21032do;

        public Cnew(GroupManagerAdapter groupManagerAdapter) {
            this.f21032do = groupManagerAdapter;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            DragListener dragListener = this.f21032do.f21745try;
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
            this.f21032do.m25729goto(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m24915extends(ObservableEmitter observableEmitter) throws Exception {
        ArrayList arrayList = new ArrayList();
        List<ComicShelfBean> listM25730new = this.f21025goto.m25730new();
        int size = listM25730new.size();
        for (int i = 0; i < size; i++) {
            ComicShelfBean comicShelfBean = listM25730new.get(i);
            if (comicShelfBean.getSerialNumber() != i) {
                comicShelfBean.setSerialNumber(Integer.valueOf(i));
                arrayList.add(comicShelfBean);
            }
        }
        if (!arrayList.isEmpty()) {
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3132case().insertOrReplaceInTx(arrayList);
        }
        observableEmitter.onNext(Boolean.TRUE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ void m24916finally(Boolean bool) throws Exception {
        Intent intent = new Intent();
        intent.putExtra("groupId", this.f21026this);
        setResult(-1, intent);
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public /* synthetic */ void m24919package(QMUIDialog.Cfor cfor, List list, List list2, DialogInterface dialogInterface, int i) {
        ComicShelfGroupBean comicShelfGroupBean = (ComicShelfGroupBean) list.get(cfor.a());
        for (int i2 = 0; i2 < list2.size(); i2++) {
            ComicShelfBean comicShelfBean = (ComicShelfBean) list2.get(i2);
            m24929switch(comicShelfBean, comicShelfGroupBean);
            this.f21025goto.m25726catch(comicShelfBean);
        }
        if (this.f21025goto.m25730new().size() <= 0) {
            this.f21025goto.m25732try();
            this.ll_action_button.setVisibility(8);
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public /* synthetic */ void m24920private(List list) throws Exception {
        this.f21025goto.refresh(list);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m24924strictfp(Context context, long j) {
        Intent intent = new Intent(context, (Class<?>) ComicGroupManagerActivity.class);
        intent.putExtra("groupId", j);
        context.startActivity(intent);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m24925volatile(Fragment fragment, long j) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) ComicGroupManagerActivity.class);
        intent.putExtra("groupId", j);
        fragment.startActivityForResult(intent, f21023catch);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m24926abstract(final List<ComicShelfBean> list) {
        List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        if (listH == null || listH.size() <= 0) {
            return;
        }
        for (int i = 0; i < listH.size(); i++) {
            ComicShelfGroupBean comicShelfGroupBean = listH.get(i);
            ComicShelfGroupBean comicShelfGroupBean2 = this.f21024break;
            if (comicShelfGroupBean2 == null) {
                arrayList.add(comicShelfGroupBean.getGroupName());
                arrayList2.add(comicShelfGroupBean);
            } else if (comicShelfGroupBean2.getId() != comicShelfGroupBean.getId()) {
                arrayList.add(comicShelfGroupBean.getGroupName());
                arrayList2.add(comicShelfGroupBean);
            }
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
        cfor.m24055volatile("选择书架");
        cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: android.support.v4.mn
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f3967do.m24919package(cfor, arrayList2, list, dialogInterface, i2);
            }
        });
        long j = this.f21026this;
        if (j > 0) {
            cfor.b((int) j);
        }
        cfor.m24043interface();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21025goto = new GroupManagerAdapter(this);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setAdapter(this.f21025goto);
        ComicShelfGroupBean comicShelfGroupBean = this.f21024break;
        if (comicShelfGroupBean == null || comicShelfGroupBean.getSortId() != 2) {
            this.f21025goto.m25727class(false);
        } else {
            this.f21025goto.m25727class(true);
        }
        this.f21025goto.setOnCheckedChangeListener(new Cdo());
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new Cnew(this.f21025goto));
        itemTouchHelper.attachToRecyclerView(this.mRecyclerView);
        this.f21025goto.m25728const(new Cif(itemTouchHelper));
        m24927continue();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m24927continue() {
        ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26095default(this.f21026this, this.f21026this > 0 ? this.f21024break.getSortId() : 0).subscribeOn(io.reactivex.schedulers.Cdo.m29772new()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.pn
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f5134do.m24920private((List) obj);
            }
        });
    }

    /* renamed from: default, reason: not valid java name */
    public void m24928default(List<ComicShelfBean> list) {
        DialogTool.o(this, new DialogTool.Cnew("温馨提示", null, "是否删除当前选中的漫画？"), new DialogTool.Ctry("确认", "取消"), new Cfor(list));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c002a;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        GroupManagerAdapter groupManagerAdapter = this.f21025goto;
        if (groupManagerAdapter != null) {
            groupManagerAdapter.m25732try();
        }
        m24930throws();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ArrayList arrayList = new ArrayList();
        List<ComicShelfBean> listM25730new = this.f21025goto.m25730new();
        for (ComicShelfBean comicShelfBean : listM25730new) {
            if (comicShelfBean.isChecked()) {
                arrayList.add(comicShelfBean);
            }
        }
        int id = view.getId();
        if (id == R.id.arg_res_0x7f090477) {
            m24928default(arrayList);
            return;
        }
        if (id == R.id.arg_res_0x7f09049a) {
            m24926abstract(arrayList);
            return;
        }
        if (id != R.id.arg_res_0x7f0904ae) {
            return;
        }
        if (arrayList.size() < listM25730new.size()) {
            for (int i = 0; i < listM25730new.size(); i++) {
                listM25730new.get(i).setChecked(true);
                this.f21025goto.notifyItemChanged(i);
            }
            return;
        }
        if (arrayList.size() >= listM25730new.size()) {
            for (int i2 = 0; i2 < listM25730new.size(); i2++) {
                listM25730new.get(i2).setChecked(false);
                this.f21025goto.notifyItemChanged(i2);
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m24929switch(ComicShelfBean comicShelfBean, ComicShelfGroupBean comicShelfGroupBean) {
        com.wsw.cospa.dao.Cdo.q(comicShelfBean, comicShelfGroupBean);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.refreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableRefresh(false);
        this.tv_select_comic.setOnClickListener(this);
        this.tv_delete_comic.setOnClickListener(this);
        this.tv_move_shelf.setOnClickListener(this);
        long longExtra = getIntent().getLongExtra("groupId", 0L);
        this.f21026this = longExtra;
        if (longExtra == 0) {
            this.tvTitle.setText(wq.w0);
            return;
        }
        ComicShelfGroupBean comicShelfGroupBeanM26113public = com.wsw.cospa.dao.Cdo.m26113public(Long.valueOf(longExtra));
        this.f21024break = comicShelfGroupBeanM26113public;
        this.tvTitle.setText(comicShelfGroupBeanM26113public.getGroupName());
    }

    /* renamed from: throws, reason: not valid java name */
    public void m24930throws() {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.nn
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f4272do.m24915extends(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.on
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f4686do.m24916finally((Boolean) obj);
            }
        });
    }
}

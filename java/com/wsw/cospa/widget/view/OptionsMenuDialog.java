package com.wsw.cospa.widget.view;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.cq;
import android.support.v4.hm1;
import android.support.v4.mp1;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.y8;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ChapterActivity;
import com.wsw.cospa.activity.ComicDetailActivity;
import com.wsw.cospa.activity.ComicGroupManagerActivity;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.Cdo;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.fragment.BookShelfFragment;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.widget.ChangeSourceDialog;
import com.wsw.cospa.widget.OriginChooseDialog;
import com.wsw.cospa.widget.view.OptionsMenuDialog;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class OptionsMenuDialog extends Dialog implements View.OnClickListener {
    public Disposable disposable;
    private long groupId;

    @BindView(R.id.arg_res_0x7f090243)
    public ImageView ivModeImage;
    private BaseActivity mActivity;
    private BookShelfFragment mContext;
    private int mShelfMode;
    private View mView;
    private ComicShelfBean shelfBean;
    private ComicShelfGroupBean shelfGroupBean;

    @BindView(R.id.arg_res_0x7f090467)
    public LinearLayout tvChangeSource;

    @BindView(R.id.arg_res_0x7f09046c)
    public LinearLayout tvClearShelf;

    @BindView(R.id.arg_res_0x7f09046f)
    public TextView tvComicName;

    @BindView(R.id.arg_res_0x7f090477)
    public LinearLayout tvDeleteComic;

    @BindView(R.id.arg_res_0x7f09047d)
    public LinearLayout tvDownloadComic;

    @BindView(R.id.arg_res_0x7f090498)
    public LinearLayout tvManagerComic;

    @BindView(R.id.arg_res_0x7f090499)
    public LinearLayout tvMoveComic;

    public OptionsMenuDialog(BookShelfFragment bookShelfFragment) {
        super(bookShelfFragment.getContext(), R.style.arg_res_0x7f120128);
        this.disposable = new cq();
        this.mContext = bookShelfFragment;
        this.mActivity = (BaseActivity) bookShelfFragment.getActivity();
    }

    private void changeSource() {
        ComicInfoBean comicInfoBean;
        SearchComicBean searchComicBeanM26024default = DatabaseHelper.m26016switch().m26024default(this.shelfBean.getNoteUrl());
        if (searchComicBeanM26024default == null && (comicInfoBean = this.shelfBean.getComicInfoBean()) != null) {
            searchComicBeanM26024default = new SearchComicBean();
            searchComicBeanM26024default.setAuthor(comicInfoBean.getAuthor());
            searchComicBeanM26024default.setCoverUrl(comicInfoBean.getCoverUrl());
            searchComicBeanM26024default.setIntroduce(comicInfoBean.getIntroduce());
            searchComicBeanM26024default.setName(comicInfoBean.getName());
            searchComicBeanM26024default.setKind(comicInfoBean.getKind());
            searchComicBeanM26024default.setNoteUrl(comicInfoBean.getNoteUrl());
            searchComicBeanM26024default.setOrigin(comicInfoBean.getOrigin());
            searchComicBeanM26024default.setTag(comicInfoBean.getTag());
        }
        if (searchComicBeanM26024default == null || TextUtils.isEmpty(searchComicBeanM26024default.getName())) {
            return;
        }
        dismiss();
        int i = 0;
        boolean zM8713do = v02.m8711if(this.mActivity).m8713do("systemMode", false);
        int i2 = CartoonApplication.m24690do().getResources().getConfiguration().uiMode & 48;
        if (!zM8713do ? v02.m8711if(this.mActivity).m8713do("nightTheme", false) : i2 == 32) {
            i = 1;
        }
        final ChangeSourceDialog changeSourceDialog = new ChangeSourceDialog(this.mActivity, i, searchComicBeanM26024default);
        changeSourceDialog.setOnChooseOriginListener(new OriginChooseDialog.ChooseOriginListener() { // from class: android.support.v4.i81
            @Override // com.wsw.cospa.widget.OriginChooseDialog.ChooseOriginListener
            public final void onChooseOrigin(SearchComicBean searchComicBean) {
                this.f2646do.lambda$changeSource$2(changeSourceDialog, searchComicBean);
            }
        });
        changeSourceDialog.show();
    }

    private void clearShelf() {
        if (this.disposable == null) {
            this.disposable = new cq();
        }
        long groupId = this.shelfBean.getGroupId();
        if (groupId > 0) {
            ((ObservableSubscribeProxy) Cdo.m26095default(groupId, this.shelfGroupBean.getSortId()).compose(b0.f302do).as(mp1.m4975do(this.mActivity))).subscribe(new bz1<List<ComicShelfBean>>() { // from class: com.wsw.cospa.widget.view.OptionsMenuDialog.1
                @Override // io.reactivex.Observer
                public void onNext(List<ComicShelfBean> list) {
                    for (final ComicShelfBean comicShelfBean : list) {
                        Ccase.m26722this().m26725else().execute(new Runnable() { // from class: com.wsw.cospa.widget.view.OptionsMenuDialog.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Cdo.k(comicShelfBean);
                            }
                        });
                    }
                    hm1.m3062case().mo970if(new Object[0]);
                }
            });
        } else {
            ((ObservableSubscribeProxy) Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.j81
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    OptionsMenuDialog.lambda$clearShelf$1(observableEmitter);
                }
            }).subscribeOn(io.reactivex.schedulers.Cdo.m29768else()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this.mActivity))).subscribe(new bz1<Boolean>() { // from class: com.wsw.cospa.widget.view.OptionsMenuDialog.2
                @Override // android.support.v4.bz1, io.reactivex.Observer
                public void onError(Throwable th) {
                    v72.m8769if("书架清空失败");
                    OptionsMenuDialog.this.dismiss();
                    Disposable disposable = OptionsMenuDialog.this.disposable;
                    if (disposable == null || disposable.isDisposed()) {
                        return;
                    }
                    OptionsMenuDialog.this.disposable.dispose();
                    OptionsMenuDialog.this.disposable = null;
                }

                @Override // android.support.v4.bz1, io.reactivex.Observer
                public void onSubscribe(Disposable disposable) {
                    super.onSubscribe(disposable);
                    OptionsMenuDialog.this.disposable = disposable;
                }

                @Override // io.reactivex.Observer
                public void onNext(Boolean bool) {
                    hm1.m3062case().mo970if(new Object[0]);
                    OptionsMenuDialog.this.dismiss();
                    Disposable disposable = OptionsMenuDialog.this.disposable;
                    if (disposable == null || disposable.isDisposed()) {
                        return;
                    }
                    OptionsMenuDialog.this.disposable.dispose();
                    OptionsMenuDialog.this.disposable = null;
                }
            });
        }
    }

    private void deleteComic() {
        if (this.shelfBean != null) {
            dismiss();
            DialogTool.o(this.mActivity, new DialogTool.Cnew("温馨提示", null, "是否将 " + this.shelfBean.getComicInfoBean().getName() + " 移除书架？"), new DialogTool.Ctry("确认", "取消"), new DialogTool.DialogOptCb() { // from class: com.wsw.cospa.widget.view.OptionsMenuDialog.3
                @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
                public void onBack() {
                }

                @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
                public void onCancel() {
                }

                @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
                public void onConfirm() {
                    Ccase.m26722this().m26725else().execute(new Runnable() { // from class: com.wsw.cospa.widget.view.OptionsMenuDialog.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Cdo.k(OptionsMenuDialog.this.shelfBean);
                        }
                    });
                    hm1.m3062case().mo970if(new Object[0]);
                }
            });
        }
    }

    private void downloadComic() {
        if (this.shelfBean != null) {
            y8.m9768for().m9771new(wq.Cdo.f7652if, this.shelfBean);
            ChapterActivity.m24819interface(this.mActivity);
            dismiss();
        }
    }

    private void initButtomSheet() {
        this.tvComicName.setText(this.shelfBean.getComicInfoBean().getName());
        setCanceledOnTouchOutside(true);
        Window window = getWindow();
        window.setGravity(80);
        window.setWindowAnimations(R.style.arg_res_0x7f12035e);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
    }

    private void initData() {
        this.ivModeImage.setOnClickListener(this);
        this.tvClearShelf.setOnClickListener(this);
        this.tvChangeSource.setOnClickListener(this);
        this.tvDownloadComic.setOnClickListener(this);
        this.tvDeleteComic.setOnClickListener(this);
        this.tvManagerComic.setOnClickListener(this);
        this.tvMoveComic.setOnClickListener(this);
        this.shelfGroupBean = Cdo.i(this.shelfBean);
        long groupId = this.shelfBean.getGroupId();
        this.groupId = groupId;
        if (groupId > 0) {
            this.mShelfMode = this.shelfGroupBean.getViewId();
        } else {
            this.mShelfMode = v02.m8711if(this.mActivity).m8715for(CartoonApplication.f20823this, 1);
        }
        if (this.mShelfMode == 1) {
            this.ivModeImage.setImageResource(R.drawable.arg_res_0x7f0800e6);
        } else {
            this.ivModeImage.setImageResource(R.drawable.arg_res_0x7f0800e7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeSource$2(ChangeSourceDialog changeSourceDialog, SearchComicBean searchComicBean) {
        changeSourceDialog.dismiss();
        dismiss();
        Intent intent = new Intent(this.mActivity, (Class<?>) ComicDetailActivity.class);
        intent.putExtra(wq.Cdo.f7656new, false);
        intent.putExtra(wq.Cdo.f7650for, searchComicBean);
        this.mContext.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$clearShelf$1(ObservableEmitter observableEmitter) throws Exception {
        Cdo.m26121throw();
        observableEmitter.onNext(Boolean.TRUE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$0(DialogInterface dialogInterface, int i) {
        clearShelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectBookShelfGroup$3(QMUIDialog.Cfor cfor, List list, DialogInterface dialogInterface, int i) {
        addBookshelf((ComicShelfGroupBean) list.get(cfor.a()));
        dialogInterface.dismiss();
    }

    private void switchMode() {
        if (this.groupId > 0) {
            this.mShelfMode = this.shelfGroupBean.getViewId();
        } else {
            this.mShelfMode = v02.m8711if(this.mActivity).m8715for(CartoonApplication.f20823this, 1);
        }
        if (this.mShelfMode == 1) {
            this.ivModeImage.setImageResource(R.drawable.arg_res_0x7f0800e7);
            this.mContext.w();
        } else {
            this.ivModeImage.setImageResource(R.drawable.arg_res_0x7f0800e6);
            this.mContext.w();
        }
    }

    public void addBookshelf(ComicShelfGroupBean comicShelfGroupBean) {
        Cdo.q(this.shelfBean, comicShelfGroupBean);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arg_res_0x7f090243 /* 2131296835 */:
                switchMode();
                break;
            case R.id.arg_res_0x7f090467 /* 2131297383 */:
                changeSource();
                break;
            case R.id.arg_res_0x7f09046c /* 2131297388 */:
                new AlertDialog.Builder(this.mActivity).setTitle("温馨提示").setMessage("是否删除所有漫画？").setNegativeButton(R.string.arg_res_0x7f110039, (DialogInterface.OnClickListener) null).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: android.support.v4.g81
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f2080do.lambda$onClick$0(dialogInterface, i);
                    }
                }).show();
                dismiss();
                break;
            case R.id.arg_res_0x7f090477 /* 2131297399 */:
                deleteComic();
                break;
            case R.id.arg_res_0x7f09047d /* 2131297405 */:
                downloadComic();
                break;
            case R.id.arg_res_0x7f090498 /* 2131297432 */:
                ComicGroupManagerActivity.m24925volatile(this.mContext, this.groupId);
                dismiss();
                break;
            case R.id.arg_res_0x7f090499 /* 2131297433 */:
                selectBookShelfGroup();
                break;
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) throws NoSuchMethodException, SecurityException {
        super.onCreate(bundle);
        View viewInflate = LayoutInflater.from(this.mActivity).inflate(R.layout.arg_res_0x7f0c00ea, (ViewGroup) null, false);
        this.mView = viewInflate;
        setContentView(viewInflate);
        ButterKnife.m10352case(this, this.mView);
        initButtomSheet();
        initData();
    }

    public void selectBookShelfGroup() {
        List<ComicShelfGroupBean> listH = Cdo.h();
        long groupId = this.shelfBean.getGroupId();
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        if (listH == null || listH.size() <= 0) {
            return;
        }
        for (int i = 0; i < listH.size(); i++) {
            ComicShelfGroupBean comicShelfGroupBean = listH.get(i);
            ComicShelfGroupBean comicShelfGroupBean2 = this.shelfGroupBean;
            if (comicShelfGroupBean2 == null) {
                arrayList.add(comicShelfGroupBean.getGroupName());
                arrayList2.add(comicShelfGroupBean);
            } else if (comicShelfGroupBean2.getId() != comicShelfGroupBean.getId()) {
                arrayList.add(comicShelfGroupBean.getGroupName());
                arrayList2.add(comicShelfGroupBean);
            }
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this.mActivity);
        cfor.m24055volatile("选择书架");
        cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: android.support.v4.h81
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f2343do.lambda$selectBookShelfGroup$3(cfor, arrayList2, dialogInterface, i2);
            }
        });
        if (groupId > 0) {
            cfor.b((int) groupId);
        }
        cfor.m24043interface();
    }

    public OptionsMenuDialog(BookShelfFragment bookShelfFragment, ComicShelfBean comicShelfBean) {
        super(bookShelfFragment.getContext(), R.style.arg_res_0x7f120128);
        this.disposable = new cq();
        this.mContext = bookShelfFragment;
        this.mActivity = (BaseActivity) bookShelfFragment.getActivity();
        this.shelfBean = comicShelfBean;
    }
}

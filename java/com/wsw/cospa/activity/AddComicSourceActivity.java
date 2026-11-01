package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.fz;
import android.support.v4.j10;
import android.support.v4.jz1;
import android.support.v4.k0;
import android.support.v4.ki1;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.rd1;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.xh1;
import android.text.Editable;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import androidx.core.widget.NestedScrollView;
import butterknife.BindView;
import com.alibaba.fastjson.JSON;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.GsonBuilder;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBar;
import com.h6ah4i.android.widget.verticalseekbar.VerticalSeekBarWrapper;
import com.tbruyelle.rxpermissions2.RxPermissions;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.uber.autodispose.SingleSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.Cwhile;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.widget.KeyboardToolPop;
import com.wsw.cospa.widget.ScrollBindHelper;
import com.wsw.cospa.widget.TextInputSpinner;
import com.wsw.cospa.widget.view.FixedTextInputEditText;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes2.dex */
public class AddComicSourceActivity extends BaseActivity {

    /* renamed from: default, reason: not valid java name */
    public static final int f20853default = 100;

    /* renamed from: import, reason: not valid java name */
    public static final String f20854import = "title_text";

    /* renamed from: native, reason: not valid java name */
    public static final String f20855native = "comic_source";

    /* renamed from: public, reason: not valid java name */
    public static final String f20856public = "comic_source_position";

    /* renamed from: return, reason: not valid java name */
    public static final String f20857return = "添加图源";

    /* renamed from: static, reason: not valid java name */
    public static final String f20858static = "编辑图源";

    /* renamed from: switch, reason: not valid java name */
    public static final int f20859switch = 101;

    /* renamed from: throws, reason: not valid java name */
    public static final int f20860throws = 102;

    @BindView(R.id.arg_res_0x7f090082)
    public VerticalSeekBar addComicSeekBarMainScrollThumb;

    @BindView(R.id.arg_res_0x7f090084)
    public VerticalSeekBarWrapper addComicSeekBarWrapper;

    /* renamed from: break, reason: not valid java name */
    private KeyboardToolPop f20861break;

    /* renamed from: class, reason: not valid java name */
    private Celse f20863class;

    /* renamed from: const, reason: not valid java name */
    private int f20864const;

    @BindView(R.id.arg_res_0x7f09016d)
    public FixedTextInputEditText etBookDelayTime;

    @BindView(R.id.arg_res_0x7f09016e)
    public TextInputSpinner etBookSingleThread;

    @BindView(R.id.arg_res_0x7f09016f)
    public FixedTextInputEditText etBookSourceRemark;

    @BindView(R.id.arg_res_0x7f090170)
    public TextInputSpinner etBookSourceType;

    @BindView(R.id.arg_res_0x7f090171)
    public FixedTextInputEditText etBookSourceUrl;

    @BindView(R.id.arg_res_0x7f09016c)
    public FixedTextInputEditText etHttpUserAgent;

    @BindView(R.id.arg_res_0x7f090181)
    public FixedTextInputEditText etRuleBookAuthor;

    @BindView(R.id.arg_res_0x7f090182)
    public FixedTextInputEditText etRuleBookContent;

    @BindView(R.id.arg_res_0x7f090183)
    public FixedTextInputEditText etRuleBookContentDecoder;

    @BindView(R.id.arg_res_0x7f090184)
    public FixedTextInputEditText etRuleBookKind;

    @BindView(R.id.arg_res_0x7f090185)
    public FixedTextInputEditText etRuleBookLastChapter;

    @BindView(R.id.arg_res_0x7f090186)
    public FixedTextInputEditText etRuleBookName;

    @BindView(R.id.arg_res_0x7f090187)
    public FixedTextInputEditText etRuleChapterId;

    @BindView(R.id.arg_res_0x7f090188)
    public FixedTextInputEditText etRuleChapterList;

    @BindView(R.id.arg_res_0x7f090189)
    public FixedTextInputEditText etRuleChapterName;

    @BindView(R.id.arg_res_0x7f09018a)
    public FixedTextInputEditText etRuleChapterParentId;

    @BindView(R.id.arg_res_0x7f09018b)
    public FixedTextInputEditText etRuleChapterParentName;

    @BindView(R.id.arg_res_0x7f09018c)
    public FixedTextInputEditText etRuleChapterUrl;

    @BindView(R.id.arg_res_0x7f09018d)
    public FixedTextInputEditText etRuleChapterUrlNext;

    @BindView(R.id.arg_res_0x7f09018e)
    public FixedTextInputEditText etRuleContentUrl;

    @BindView(R.id.arg_res_0x7f09018f)
    public FixedTextInputEditText etRuleContentUrlNext;

    @BindView(R.id.arg_res_0x7f090190)
    public FixedTextInputEditText etRuleCoverUrl;

    @BindView(R.id.arg_res_0x7f090191)
    public FixedTextInputEditText etRuleFindUrl;

    @BindView(R.id.arg_res_0x7f090192)
    public FixedTextInputEditText etRuleIntroduce;

    @BindView(R.id.arg_res_0x7f090193)
    public FixedTextInputEditText etSearchAuthor;

    @BindView(R.id.arg_res_0x7f090195)
    public FixedTextInputEditText etSearchCover;

    @BindView(R.id.arg_res_0x7f090196)
    public FixedTextInputEditText etSearchKind;

    @BindView(R.id.arg_res_0x7f090197)
    public FixedTextInputEditText etSearchLastChapter;

    @BindView(R.id.arg_res_0x7f090198)
    public FixedTextInputEditText etSearchList;

    @BindView(R.id.arg_res_0x7f090199)
    public FixedTextInputEditText etSearchName;

    @BindView(R.id.arg_res_0x7f09019a)
    public FixedTextInputEditText etSearchNoteUrl;

    @BindView(R.id.arg_res_0x7f09019b)
    public FixedTextInputEditText etSearchUrl;

    @BindView(R.id.arg_res_0x7f09019c)
    public FixedTextInputEditText etSearchUrlNext;

    @BindView(R.id.arg_res_0x7f09019d)
    public FixedTextInputEditText etSourceGroup;

    @BindView(R.id.arg_res_0x7f09019e)
    public FixedTextInputEditText etSourceName;

    @BindView(R.id.arg_res_0x7f090177)
    public FixedTextInputEditText etloginUrlResult;

    /* renamed from: final, reason: not valid java name */
    private int f20865final;

    @BindView(R.id.arg_res_0x7f090299)
    public AppBarLayout mAppBarLayout;

    @BindView(R.id.arg_res_0x7f0902a7)
    public NestedScrollView mScrollView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09036e)
    public RelativeLayout rootView;

    /* renamed from: super, reason: not valid java name */
    private boolean f20867super;

    /* renamed from: this, reason: not valid java name */
    private ComicSourceBean f20868this;

    /* renamed from: throw, reason: not valid java name */
    private xh1 f20869throw;

    @BindView(R.id.arg_res_0x7f090176)
    public FixedTextInputEditText tieLoginUrl;

    /* renamed from: while, reason: not valid java name */
    private RxPermissions f20870while;

    /* renamed from: goto, reason: not valid java name */
    private String f20866goto = f20857return;

    /* renamed from: catch, reason: not valid java name */
    private boolean f20862catch = false;

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$case, reason: invalid class name */
    public class Ccase implements DialogTool.DialogOptCb {
        public Ccase() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
            AddComicSourceActivity.this.finish();
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$do, reason: invalid class name */
    public class Cdo implements SingleObserver<Bitmap> {
        public Cdo() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(Bitmap bitmap) throws IOException {
            try {
                File file = new File(wq.f7623public);
                if (!file.exists()) {
                    file.mkdir();
                }
                File file2 = new File(file, AddComicSourceActivity.this.m24751strictfp() + rd1.f5753if);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                file2.setReadable(true, false);
                Uri uriForFile = FileProvider.getUriForFile(AddComicSourceActivity.this, AddComicSourceActivity.this.getPackageName() + ".fileprovider", file2);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setFlags(268435456);
                intent.putExtra("android.intent.extra.STREAM", uriForFile);
                intent.setType("image/png");
                AddComicSourceActivity.this.startActivity(Intent.createChooser(intent, "分享图源"));
            } catch (Exception e) {
                v72.m8769if(e.getLocalizedMessage());
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            v72.m8769if(th.getLocalizedMessage());
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            AddComicSourceActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$else, reason: invalid class name */
    public class Celse implements ViewTreeObserver.OnGlobalLayoutListener {
        private Celse() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public /* synthetic */ void m24761for() {
            AddComicSourceActivity.this.mScrollView.scrollBy(0, 100);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public /* synthetic */ void m24763new() {
            if (AddComicSourceActivity.this.mScrollView == null || r0.getChildAt(0).getMeasuredHeight() - 100 <= AddComicSourceActivity.this.mScrollView.getScrollY() + AddComicSourceActivity.this.mScrollView.getHeight()) {
                return;
            }
            AddComicSourceActivity.this.mScrollView.scrollBy(0, -100);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NestedScrollView nestedScrollView;
            try {
                Rect rect = new Rect();
                AddComicSourceActivity.this.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                int iM3663this = j10.m3663this(AddComicSourceActivity.this);
                int i = iM3663this - rect.bottom;
                boolean z = AddComicSourceActivity.this.f20862catch;
                if (Math.abs(i) > iM3663this / 5) {
                    AddComicSourceActivity.this.f20862catch = true;
                    AddComicSourceActivity.this.mScrollView.setPadding(0, 0, 0, 100);
                    AddComicSourceActivity.this.e();
                    if (!z && (nestedScrollView = AddComicSourceActivity.this.mScrollView) != null) {
                        nestedScrollView.post(new Runnable() { // from class: com.wsw.cospa.activity.new
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f21499do.m24761for();
                            }
                        });
                    }
                } else {
                    AddComicSourceActivity.this.f20862catch = false;
                    AddComicSourceActivity.this.mScrollView.setPadding(0, 0, 0, 0);
                    if (z) {
                        AddComicSourceActivity.this.m24737continue();
                        AddComicSourceActivity.this.mScrollView.post(new Runnable() { // from class: com.wsw.cospa.activity.for
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f21487do.m24763new();
                            }
                        });
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public /* synthetic */ Celse(AddComicSourceActivity addComicSourceActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$for, reason: invalid class name */
    public class Cfor extends bz1<String> {
        public Cfor() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(String str) throws JSONException {
            try {
                if (l22.m4579while(str)) {
                    Object objNextValue = new JSONTokener(str).nextValue();
                    if (objNextValue instanceof JSONArray) {
                        AddComicSourceActivity.this.m24758volatile(str);
                    } else if (objNextValue instanceof JSONObject) {
                        AddComicSourceActivity.this.b((ComicSourceBean) JSON.parseObject(str, ComicSourceBean.class));
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onComplete() {
            super.onComplete();
            AddComicSourceActivity.this.f20869throw.dismiss();
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            AddComicSourceActivity.this.f20869throw.dismiss();
            v72.m8769if(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            AddComicSourceActivity.this.f21908do.add(disposable);
            AddComicSourceActivity.this.f20869throw.show();
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$if, reason: invalid class name */
    public class Cif extends bz1<List<ComicSourceBean>> {
        public Cif() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            AddComicSourceActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ComicSourceBean> list) {
            if (list.size() <= 0) {
                v72.m8769if("格式不对");
            } else {
                v72.m8769if(String.format("导入成功%d个图源", Integer.valueOf(list.size())));
                AddComicSourceActivity.this.finish();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$new, reason: invalid class name */
    public class Cnew implements ObservableOnSubscribe<String> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f20876do;

        public Cnew(String str) {
            this.f20876do = str;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<String> observableEmitter) throws Exception {
            observableEmitter.onNext(fz.m2489do(this.f20876do));
            observableEmitter.onComplete();
        }
    }

    /* renamed from: com.wsw.cospa.activity.AddComicSourceActivity$try, reason: invalid class name */
    public class Ctry extends bz1<ComicSourceBean> {
        public Ctry() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicSourceBean comicSourceBean) {
            AddComicSourceActivity addComicSourceActivity = AddComicSourceActivity.this;
            addComicSourceActivity.f20868this = addComicSourceActivity.m24751strictfp();
            v72.m8769if("保存成功");
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            super.onError(th);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            AddComicSourceActivity.this.f21908do.add(disposable);
        }
    }

    private void a() throws JSONException {
        try {
            ClipData primaryClip = ((ClipboardManager) getSystemService("clipboard")).getPrimaryClip();
            if (primaryClip != null) {
                String string = primaryClip.getItemAt(0).getText().toString();
                if (l22.m4579while(string)) {
                    Object objNextValue = new JSONTokener(string).nextValue();
                    if (objNextValue instanceof JSONArray) {
                        m24758volatile(string);
                    } else if (objNextValue instanceof JSONObject) {
                        b((ComicSourceBean) JSON.parseObject(string, ComicSourceBean.class));
                    }
                } else {
                    ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new Cnew(string)).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cfor());
                }
            }
        } catch (Exception unused) {
            v72.m8769if("格式错误");
        }
    }

    private void c() {
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.j0
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f2944do.m24755transient(singleEmitter);
            }
        }).m4151goto(k0.f3244do).m4155new(mp1.m4975do(this))).subscribe(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public void m24737continue() {
        KeyboardToolPop keyboardToolPop = this.f20861break;
        if (keyboardToolPop == null || !keyboardToolPop.isShowing()) {
            return;
        }
        this.f20861break.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        KeyboardToolPop keyboardToolPop;
        if (isFinishing()) {
            return;
        }
        KeyboardToolPop keyboardToolPop2 = this.f20861break;
        if ((keyboardToolPop2 == null || !keyboardToolPop2.isShowing()) && (keyboardToolPop = this.f20861break) != null) {
            keyboardToolPop.showAtLocation(this.rootView, 80, 0, 0);
        }
    }

    public static void f(PopupWindow popupWindow, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i < 24) {
            popupWindow.showAsDropDown(view);
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (i >= 25) {
            popupWindow.setHeight((((WindowManager) popupWindow.getContentView().getContext().getSystemService("window")).getDefaultDisplay().getHeight() - iArr[1]) - view.getHeight());
        }
        popupWindow.showAtLocation(view, 0, 0, iArr[1] + view.getHeight());
    }

    public static void g(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) AddComicSourceActivity.class);
        intent.putExtra(f20854import, str);
        context.startActivity(intent);
    }

    public static void h(Activity activity, String str) {
        Intent intent = new Intent(activity, (Class<?>) AddComicSourceActivity.class);
        intent.putExtra(f20854import, str);
        activity.startActivityForResult(intent, 101);
    }

    public static void i(Activity activity, String str, ComicSourceBean comicSourceBean) {
        Intent intent = new Intent(activity, (Class<?>) AddComicSourceActivity.class);
        intent.putExtra(f20854import, str);
        intent.putExtra("comic_source", comicSourceBean);
        activity.startActivityForResult(intent, 102);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: implements, reason: not valid java name */
    public /* synthetic */ void m24741implements(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            try {
                ComicSourceBean comicSourceBeanM24751strictfp = m24751strictfp();
                if (comicSourceBeanM24751strictfp == null) {
                    v72.m8769if("请先选中图源！");
                    return;
                }
                String str = comicSourceBeanM24751strictfp.getBookSourceName() + "_share_source_" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
                String str2 = wq.f7623public;
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String strM27019do = Cpackage.m27019do(comicSourceBeanM24751strictfp);
                FileOutputStream fileOutputStream = new FileOutputStream(str2 + str);
                fileOutputStream.write(fz.m2490if(strM27019do).getBytes());
                fileOutputStream.close();
                File file2 = new File(str2 + str);
                Intent intent = new Intent("android.intent.action.SEND");
                if (Build.VERSION.SDK_INT >= 24) {
                    Uri uriForFile = FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", file2);
                    grantUriPermission(getPackageName(), uriForFile, 3);
                    intent.setFlags(268435456);
                    intent.addFlags(3);
                    intent.putExtra("android.intent.extra.STREAM", uriForFile);
                } else {
                    intent.setFlags(268435456);
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file2));
                }
                intent.setType("text/*");
                startActivity(Intent.createChooser(intent, "分享图源"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public void m24743interface(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        View viewFindFocus = getWindow().getDecorView().findFocus();
        if (viewFindFocus instanceof EditText) {
            EditText editText = (EditText) viewFindFocus;
            int selectionStart = editText.getSelectionStart();
            int selectionEnd = editText.getSelectionEnd();
            Editable editableText = editText.getEditableText();
            if (selectionStart < 0 || selectionStart >= editableText.length()) {
                editableText.append((CharSequence) str);
            } else {
                editableText.replace(selectionStart, selectionEnd, str);
            }
        }
    }

    private String j(Editable editable) {
        if (editable == null) {
            return null;
        }
        return k(editable.toString());
    }

    private String k(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("(^\\s+|\\s+$)", "");
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m24746private() {
        if (this.f20868this == null) {
            this.f20868this = new ComicSourceBean();
        }
        if (m24751strictfp().equals(this.f20868this)) {
            return false;
        }
        DialogTool.o(this, new DialogTool.Cnew("提示", "", "你还未保存修改的数据，是否继续编辑"), new DialogTool.Ctry("是", "否"), new Ccase());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public /* synthetic */ void m24747protected(ObservableEmitter observableEmitter) throws Exception {
        ComicSourceBean comicSourceBeanM24751strictfp = m24751strictfp();
        if (this.f20868this != null && !Objects.equals(comicSourceBeanM24751strictfp.getBookSourceUrl(), this.f20868this.getBookSourceUrl())) {
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3139goto().deleteInTx(this.f20868this);
        }
        com.wsw.cospa.model.Cdo.m26360default(comicSourceBeanM24751strictfp);
        com.wsw.cospa.model.Cdo.c();
        observableEmitter.onNext(comicSourceBeanM24751strictfp);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public ComicSourceBean m24751strictfp() {
        ComicSourceBean comicSourceBean = new ComicSourceBean();
        comicSourceBean.setBookSourceType(j(this.etBookSourceType.getText()));
        comicSourceBean.setBookSingleThread(j(this.etBookSingleThread.getText()));
        comicSourceBean.setBookDelayTime(j(this.etBookDelayTime.getText()));
        comicSourceBean.setBookSourceName(j(this.etSourceName.getText()));
        comicSourceBean.setLoginUrl(j(this.tieLoginUrl.getText()));
        comicSourceBean.setLoginUrlResult(j(this.etloginUrlResult.getText()));
        comicSourceBean.setBookSourceUrl(j(this.etBookSourceUrl.getText()));
        comicSourceBean.setSourceRemark(j(this.etBookSourceRemark.getText()));
        comicSourceBean.setBookSourceGroup(j(this.etSourceGroup.getText()));
        comicSourceBean.setRuleBookAuthor(j(this.etRuleBookAuthor.getText()));
        comicSourceBean.setRuleBookContent(j(this.etRuleBookContent.getText()));
        comicSourceBean.setRuleBookContentDecoder(j(this.etRuleBookContentDecoder.getText()));
        comicSourceBean.setRuleBookName(j(this.etRuleBookName.getText()));
        comicSourceBean.setRuleChapterList(j(this.etRuleChapterList.getText()));
        comicSourceBean.setRuleChapterName(j(this.etRuleChapterName.getText()));
        comicSourceBean.setRuleChapterId(j(this.etRuleChapterId.getText()));
        comicSourceBean.setRuleChapterUrl(j(this.etRuleChapterUrl.getText()));
        comicSourceBean.setRuleChapterUrlNext(j(this.etRuleChapterUrlNext.getText()));
        comicSourceBean.setRuleChapterParentId(j(this.etRuleChapterParentId.getText()));
        comicSourceBean.setRuleChapterParentName(j(this.etRuleChapterParentName.getText()));
        comicSourceBean.setRuleContentUrl(j(this.etRuleContentUrl.getText()));
        comicSourceBean.setRuleCoverUrl(j(this.etRuleCoverUrl.getText()));
        comicSourceBean.setRuleIntroduce(j(this.etRuleIntroduce.getText()));
        comicSourceBean.setRuleSearchAuthor(j(this.etSearchAuthor.getText()));
        comicSourceBean.setRuleSearchCoverUrl(j(this.etSearchCover.getText()));
        comicSourceBean.setRuleSearchKind(j(this.etSearchKind.getText()));
        comicSourceBean.setRuleSearchLastChapter(j(this.etSearchLastChapter.getText()));
        comicSourceBean.setRuleSearchList(j(this.etSearchList.getText()));
        comicSourceBean.setRuleSearchUrlNext(j(this.etSearchUrlNext.getText()));
        comicSourceBean.setRuleSearchName(j(this.etSearchName.getText()));
        comicSourceBean.setRuleSearchNoteUrl(j(this.etSearchNoteUrl.getText()));
        comicSourceBean.setRuleSearchUrl(j(this.etSearchUrl.getText()));
        comicSourceBean.setHttpUserAgent(j(this.etHttpUserAgent.getText()));
        comicSourceBean.setRuleFindUrl(j(this.etRuleFindUrl.getText()));
        comicSourceBean.setRuleContentUrlNext(j(this.etRuleContentUrlNext.getText()));
        comicSourceBean.setRuleBookUrlPattern("");
        comicSourceBean.setRuleBookKind(j(this.etRuleBookKind.getText()));
        comicSourceBean.setRuleBookLastChapter(j(this.etRuleBookLastChapter.getText()));
        comicSourceBean.setEnable(true);
        comicSourceBean.setEnable(this.f20867super);
        comicSourceBean.setSerialNumber(this.f20864const);
        comicSourceBean.setWeight(this.f20865final);
        return comicSourceBean;
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m24753synchronized() {
        j10.m3652do(this.etSourceName);
        if (TextUtils.isEmpty(j(this.etSourceName.getText())) || TextUtils.isEmpty(j(this.etBookSourceUrl.getText()))) {
            v72.m8769if("图源名称和URL不能为空");
        } else {
            ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.i0
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f2573do.m24747protected(observableEmitter);
                }
            }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Ctry());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public /* synthetic */ void m24755transient(SingleEmitter singleEmitter) throws Exception {
        try {
            singleEmitter.onSuccess(ki1.m4411do(new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(m24751strictfp()), 400, 400));
        } catch (Exception e) {
            singleEmitter.onError(e);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m24756abstract(Activity activity, float f) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = f;
        activity.getWindow().addFlags(2);
        activity.getWindow().setAttributes(attributes);
    }

    public void b(ComicSourceBean comicSourceBean) {
        if (comicSourceBean == null) {
            return;
        }
        this.etBookSourceType.setText(k(comicSourceBean.getBookSourceType()));
        String strK = k(comicSourceBean.getBookSingleThread());
        if (!TextUtils.isEmpty(strK)) {
            this.etBookSingleThread.setText(strK);
        }
        String strK2 = k(comicSourceBean.getBookDelayTime());
        if (!TextUtils.isEmpty(strK2)) {
            this.etBookDelayTime.setText(strK2);
        }
        this.etSourceName.setText(k(comicSourceBean.getBookSourceName()));
        this.etBookSourceUrl.setText(k(comicSourceBean.getBookSourceUrl()));
        this.etBookSourceRemark.setText(k(comicSourceBean.getSourceRemark()));
        this.etSourceGroup.setText(k(comicSourceBean.getBookSourceGroup()));
        this.tieLoginUrl.setText(k(comicSourceBean.getLoginUrl()));
        this.etloginUrlResult.setText(k(comicSourceBean.getLoginUrlResult()));
        this.etRuleBookAuthor.setText(k(comicSourceBean.getRuleBookAuthor()));
        this.etRuleBookContent.setText(k(comicSourceBean.getRuleBookContent()));
        this.etRuleBookContentDecoder.setText(k(comicSourceBean.getRuleBookContentDecoder()));
        this.etRuleBookName.setText(k(comicSourceBean.getRuleBookName()));
        this.etRuleChapterList.setText(k(comicSourceBean.getRuleChapterList()));
        this.etRuleChapterName.setText(k(comicSourceBean.getRuleChapterName()));
        this.etRuleChapterId.setText(k(comicSourceBean.getRuleChapterId()));
        this.etRuleChapterUrl.setText(k(comicSourceBean.getRuleChapterUrl()));
        this.etRuleChapterUrlNext.setText(k(comicSourceBean.getRuleChapterUrlNext()));
        this.etRuleChapterParentId.setText(k(comicSourceBean.getRuleChapterParentId()));
        this.etRuleChapterParentName.setText(k(comicSourceBean.getRuleChapterParentName()));
        this.etRuleContentUrl.setText(k(comicSourceBean.getRuleContentUrl()));
        this.etRuleCoverUrl.setText(k(comicSourceBean.getRuleCoverUrl()));
        this.etRuleIntroduce.setText(k(comicSourceBean.getRuleIntroduce()));
        this.etSearchAuthor.setText(k(comicSourceBean.getRuleSearchAuthor()));
        this.etSearchCover.setText(k(comicSourceBean.getRuleSearchCoverUrl()));
        this.etSearchKind.setText(k(comicSourceBean.getRuleSearchKind()));
        this.etSearchLastChapter.setText(k(comicSourceBean.getRuleSearchLastChapter()));
        this.etSearchList.setText(k(comicSourceBean.getRuleSearchList()));
        this.etSearchUrlNext.setText(k(comicSourceBean.getRuleSearchUrlNext()));
        this.etSearchName.setText(k(comicSourceBean.getRuleSearchName()));
        this.etSearchNoteUrl.setText(k(comicSourceBean.getRuleSearchNoteUrl()));
        this.etSearchUrl.setText(k(comicSourceBean.getRuleSearchUrl()));
        this.etHttpUserAgent.setText(k(comicSourceBean.getHttpUserAgent()));
        this.etRuleContentUrlNext.setText(k(comicSourceBean.getRuleContentUrlNext()));
        this.etRuleFindUrl.setText(k(comicSourceBean.getRuleFindUrl()));
        this.etRuleBookKind.setText(k(comicSourceBean.getRuleBookKind()));
        this.etRuleBookLastChapter.setText(k(comicSourceBean.getRuleBookLastChapter()));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        String stringExtra = getIntent().getStringExtra(f20854import);
        this.f20866goto = stringExtra;
        Csynchronized.m27101try(this, this.mToolbar, stringExtra);
        if (f20858static.equals(this.f20866goto)) {
            ComicSourceBean comicSourceBean = (ComicSourceBean) getIntent().getParcelableExtra("comic_source");
            this.f20868this = comicSourceBean;
            if (comicSourceBean != null) {
                this.f20864const = comicSourceBean.getSerialNumber();
                this.f20867super = this.f20868this.getEnable();
                this.f20865final = this.f20868this.getWeight();
            }
            b(this.f20868this);
        }
    }

    public void d() {
        this.f21908do.add(((ObservableSubscribeProxy) this.f20870while.m24545while("android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE").as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.l0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f3513do.m24741implements((Boolean) obj);
            }
        }));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m24757instanceof() {
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        if (f20858static.equals(this.f20866goto)) {
            clipboardManager.setPrimaryClip(ClipData.newPlainText(this.f20868this.getBookSourceName(), fz.m2490if(Cpackage.m27019do(this.f20868this))));
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c001e;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10 && i2 == -1) {
            String stringExtra = intent.getStringExtra(wq.Cdo.f7667throw);
            int intExtra = intent.getIntExtra(wq.Cdo.f7649finally, -1);
            if (intExtra == 4) {
                ComicSourceBean comicSourceBean = (ComicSourceBean) intent.getParcelableExtra("comic_source");
                if (comicSourceBean != null) {
                    b(comicSourceBean);
                    return;
                }
                return;
            }
            if (intExtra == 1) {
                this.etRuleBookContent.setText(stringExtra);
            } else if (intExtra == 2) {
                this.etRuleChapterList.setText(stringExtra);
            } else if (intExtra == 3) {
                this.etRuleFindUrl.setText(stringExtra);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        j10.m3652do(this.etSourceName);
        if (m24746private()) {
            return;
        }
        setResult(-1);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d000a, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws JSONException, IOException {
        String bookSourceUrl;
        String bookSourceUrl2;
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f090087) {
            m24753synchronized();
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f09031f) {
            a();
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f09011c) {
            m24757instanceof();
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f090127) {
            if (TextUtils.isEmpty(m24751strictfp().getBookSourceUrl())) {
                v72.m8769if("当前源没有配置域名地址!");
            } else {
                SourceDebugActivity.m25291abstract(this, m24751strictfp().getBookSourceUrl());
            }
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f090295) {
            Cwhile.m27176for(this, m24751strictfp());
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f0901a9) {
            Cdefault.m26753case(m24751strictfp());
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f09039e) {
            d();
        } else if (menuItem.getItemId() == R.id.arg_res_0x7f090360) {
            ComicSourceBean comicSourceBeanM24751strictfp = m24751strictfp();
            if (comicSourceBeanM24751strictfp != null) {
                EncryptComicActivity.m25018return(this, 4, comicSourceBeanM24751strictfp);
            }
        } else {
            String ruleChapterList = "";
            if (menuItem.getItemId() == R.id.arg_res_0x7f090163) {
                ComicSourceBean comicSourceBeanM24751strictfp2 = m24751strictfp();
                if (comicSourceBeanM24751strictfp2 != null) {
                    ruleChapterList = comicSourceBeanM24751strictfp2.getRuleBookContent();
                    bookSourceUrl2 = comicSourceBeanM24751strictfp2.getBookSourceUrl();
                } else {
                    bookSourceUrl2 = "";
                }
                EncryptComicActivity.m25019static(this, 1, ruleChapterList, bookSourceUrl2);
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f090162) {
                ComicSourceBean comicSourceBeanM24751strictfp3 = m24751strictfp();
                if (comicSourceBeanM24751strictfp3 != null) {
                    ruleChapterList = comicSourceBeanM24751strictfp3.getRuleChapterList();
                    bookSourceUrl = comicSourceBeanM24751strictfp3.getBookSourceUrl();
                } else {
                    bookSourceUrl = "";
                }
                EncryptComicActivity.m25019static(this, 2, ruleChapterList, bookSourceUrl);
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f090313) {
                ComicSourceBean comicSourceBeanM24751strictfp4 = m24751strictfp();
                if (comicSourceBeanM24751strictfp4 == null || TextUtils.isEmpty(comicSourceBeanM24751strictfp4.getBookSourceUrl())) {
                    v72.m8769if("请输入图源地址后重试");
                } else {
                    WebViewActivity.a(this, comicSourceBeanM24751strictfp4.getBookSourceName(), comicSourceBeanM24751strictfp4.getBookSourceUrl(), true);
                }
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        for (int i = 0; i < menu.size(); i++) {
            switch (menu.getItem(i).getItemId()) {
                case R.id.arg_res_0x7f090127 /* 2131296551 */:
                    if (f20858static.equals(this.f20866goto)) {
                        menu.getItem(i).setVisible(true);
                        break;
                    } else {
                        menu.getItem(i).setVisible(false);
                        break;
                    }
                case R.id.arg_res_0x7f090162 /* 2131296610 */:
                case R.id.arg_res_0x7f090163 /* 2131296611 */:
                    menu.getItem(i).setVisible(false);
                    break;
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        this.f20870while = new RxPermissions(this);
        ScrollBindHelper.bind(this.addComicSeekBarMainScrollThumb, this.mScrollView);
        this.f20861break = new KeyboardToolPop(this, new KeyboardToolPop.OnClickListener() { // from class: android.support.v4.h0
            @Override // com.wsw.cospa.widget.KeyboardToolPop.OnClickListener
            public final void click(String str) {
                this.f2285do.m24743interface(str);
            }
        });
        ViewTreeObserver viewTreeObserver = getWindow().getDecorView().getViewTreeObserver();
        Celse celse = new Celse(this, null);
        this.f20863class = celse;
        viewTreeObserver.addOnGlobalLayoutListener(celse);
        this.f20869throw = new xh1.Cdo(this).m9514for(1).m9516new("正在导入图源！").m9513do();
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m24758volatile(String str) {
        ((ObservableSubscribeProxy) com.wsw.cospa.model.Cdo.m26374transient(str).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cif());
    }
}

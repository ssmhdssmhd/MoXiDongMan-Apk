package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.am2;
import android.support.v4.bb0;
import android.support.v4.cq;
import android.support.v4.jz1;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.nm1;
import android.support.v4.oa0;
import android.support.v4.on0;
import android.support.v4.p12;
import android.support.v4.sj2;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.ButtonBarLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.uber.autodispose.SingleSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.FileSelectorAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.FileSnapshot;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.event.RefreshLocalFileMessageObserver;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Csynchronized;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/* loaded from: classes2.dex */
public class FileSelectorActivity extends BaseActivity implements FileFilter, FileSelectorAdapter.OnItemClickListener, View.OnClickListener, FileSelectorAdapter.OnItemCheckedListener, RefreshLocalFileMessageObserver {

    /* renamed from: package, reason: not valid java name */
    private static final int f21104package = 10001;

    /* renamed from: private, reason: not valid java name */
    public static final /* synthetic */ boolean f21105private = false;

    @BindView(R.id.arg_res_0x7f0900a0)
    public AppCompatButton backButton;

    /* renamed from: break, reason: not valid java name */
    private boolean f21106break;

    @BindView(R.id.arg_res_0x7f0900c8)
    public TextView btnContinueReading;

    @BindView(R.id.arg_res_0x7f0900dd)
    public AppCompatButton cancelButton;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21107catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f21108class;

    @BindView(R.id.arg_res_0x7f09010f)
    public AppCompatButton confirmButton;

    /* renamed from: const, reason: not valid java name */
    private boolean f21109const;

    /* renamed from: default, reason: not valid java name */
    private RipeFile f21110default;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: extends, reason: not valid java name */
    private RipeFile f21111extends;

    /* renamed from: goto, reason: not valid java name */
    private List<String> f21114goto;

    @BindView(R.id.arg_res_0x7f09027d)
    public LinearLayout llCurrentPosition;

    @BindView(R.id.arg_res_0x7f09029b)
    public ButtonBarLayout mButtonBar;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mIndicatorRoot;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: return, reason: not valid java name */
    private Disposable f21118return;

    /* renamed from: static, reason: not valid java name */
    private FileSelectorAdapter f21119static;

    /* renamed from: super, reason: not valid java name */
    private String f21120super;

    /* renamed from: switch, reason: not valid java name */
    private LinearLayoutManager f21121switch;

    /* renamed from: this, reason: not valid java name */
    private boolean f21122this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f21123throw;

    /* renamed from: throws, reason: not valid java name */
    private ZipFile f21124throws;

    @BindView(R.id.arg_res_0x7f090474)
    public TextView tvCurrentPath;

    @BindView(R.id.arg_res_0x7f090475)
    public TextView tvCurrentPosition;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    /* renamed from: while, reason: not valid java name */
    private FileSnapshot f21125while;

    /* renamed from: final, reason: not valid java name */
    private int f21112final = 0;

    /* renamed from: import, reason: not valid java name */
    private final Stack<FileSnapshot> f21115import = new Stack<>();

    /* renamed from: native, reason: not valid java name */
    private final Comparator f21116native = Collator.getInstance(Locale.CHINA);

    /* renamed from: public, reason: not valid java name */
    private final cq f21117public = new cq();

    /* renamed from: finally, reason: not valid java name */
    public boolean f21113finally = true;

    /* renamed from: com.wsw.cospa.activity.FileSelectorActivity$case, reason: invalid class name */
    public class Ccase implements Comparator<ZipEntry> {
        private Ccase() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(ZipEntry zipEntry, ZipEntry zipEntry2) {
            zipEntry.getName();
            zipEntry2.getName();
            return FileSelectorActivity.this.m25039protected(zipEntry.getName()).compareTo(FileSelectorActivity.this.m25039protected(zipEntry2.getName()));
        }

        public /* synthetic */ Ccase(FileSelectorActivity fileSelectorActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.FileSelectorActivity$do, reason: invalid class name */
    public class Cdo implements SingleObserver<FileSnapshot> {
        public Cdo() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(FileSnapshot fileSnapshot) {
            FileSelectorActivity.this.hideProgress();
            FileSelectorActivity.this.m25038private(fileSnapshot, true);
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            FileSelectorActivity.this.hideProgress();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            FileSelectorActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.FileSelectorActivity$for, reason: invalid class name */
    public class Cfor implements SingleObserver<FileSnapshot> {
        public Cfor() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(FileSnapshot fileSnapshot) {
            FileSelectorActivity.this.m25038private(fileSnapshot, true);
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            FileSelectorActivity.this.hideProgress();
            FileSelectorActivity.this.f21117public.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.FileSelectorActivity$if, reason: invalid class name */
    public class Cif implements SingleObserver<FileSnapshot> {
        public Cif() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(FileSnapshot fileSnapshot) {
            FileSelectorActivity.this.hideProgress();
            FileSelectorActivity.this.m25038private(fileSnapshot, false);
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            FileSelectorActivity.this.hideProgress();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            FileSelectorActivity.this.f21117public.add(FileSelectorActivity.this.f21118return = disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.FileSelectorActivity$new, reason: invalid class name */
    public class Cnew implements Comparator<RipeFile> {

        /* renamed from: do, reason: not valid java name */
        public int f21130do;

        public Cnew(int i) {
            this.f21130do = i;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(RipeFile ripeFile, RipeFile ripeFile2) {
            File file = ripeFile.getFile();
            File file2 = ripeFile2.getFile();
            if (file.isDirectory() && file2.isFile()) {
                return -1;
            }
            if (file2.isDirectory() && file.isFile()) {
                return 1;
            }
            int i = this.f21130do;
            return i == 0 ? FileSelectorActivity.this.m25039protected(file.getName()).compareTo(FileSelectorActivity.this.m25039protected(file2.getName())) : i == 1 ? FileSelectorActivity.this.m25039protected(file2.getName()).compareTo(FileSelectorActivity.this.m25039protected(file.getName())) : i == 2 ? Long.compare(file.lastModified(), file2.lastModified()) : i == 3 ? Long.compare(file2.lastModified(), file.lastModified()) : i == 4 ? Long.compare(file.length(), file2.length()) : FileSelectorActivity.this.m25039protected(file.getName()).compareTo(FileSelectorActivity.this.m25039protected(file2.getName()));
        }
    }

    /* renamed from: com.wsw.cospa.activity.FileSelectorActivity$try, reason: invalid class name */
    public static class Ctry implements Comparator<RipeFile> {
        /* renamed from: break, reason: not valid java name */
        private boolean m25048break(String str) throws NumberFormatException {
            try {
                Double.valueOf(str);
                return true;
            } catch (NumberFormatException unused) {
                return false;
            }
        }

        /* renamed from: case, reason: not valid java name */
        private String m25049case(String str) {
            StringBuilder sb = new StringBuilder();
            if (str != null) {
                if (m25053else(str)) {
                    return str;
                }
                if (Character.isDigit(str.charAt(0))) {
                    for (int i = 0; i < str.length() && Character.isDigit(str.charAt(i)); i++) {
                        sb.append(str.charAt(i));
                    }
                } else {
                    sb.append(str.charAt(0));
                }
            }
            return sb.toString();
        }

        /* renamed from: catch, reason: not valid java name */
        private boolean m25050catch(String str) {
            return str.matches("[^A-Za-z0-9]");
        }

        /* renamed from: class, reason: not valid java name */
        private boolean m25051class(String str) {
            return str.toUpperCase(Locale.ROOT).equals(str);
        }

        /* renamed from: const, reason: not valid java name */
        public static Ctry m25052const() {
            return new Ctry();
        }

        /* renamed from: else, reason: not valid java name */
        private boolean m25053else(String str) {
            return str.matches("[0-9]((.)[0-9]*)");
        }

        /* renamed from: final, reason: not valid java name */
        private String m25054final(String str) {
            return m25056goto(str) ? str.replace(",", "") : str;
        }

        /* renamed from: for, reason: not valid java name */
        private int m25055for(String str, String str2) {
            int iCompareToIgnoreCase = str.compareToIgnoreCase(str2);
            if (iCompareToIgnoreCase != 0) {
                return iCompareToIgnoreCase;
            }
            int iCompareTo = str.compareTo(str2);
            return iCompareTo == 0 ? iCompareTo : (m25051class(str) && m25051class(str2)) ? iCompareTo : m25051class(str) ? 1 : -1;
        }

        /* renamed from: goto, reason: not valid java name */
        private boolean m25056goto(String str) {
            return str.matches("[0-9]((,)[0-9]*)*(\\.[0-9]*)?");
        }

        /* renamed from: if, reason: not valid java name */
        private int m25057if(String str, String str2) throws NumberFormatException {
            String strM25059super = m25059super(str);
            String strM25059super2 = m25059super(str2);
            boolean zM25048break = m25048break(strM25059super);
            boolean zM25048break2 = m25048break(strM25059super2);
            boolean zM25050catch = m25050catch(strM25059super);
            boolean zM25050catch2 = m25050catch(strM25059super2);
            if (zM25048break && zM25048break2) {
                return Double.valueOf(strM25059super).compareTo(Double.valueOf(strM25059super2));
            }
            if (zM25050catch && zM25050catch2) {
                return m25055for(strM25059super, strM25059super2);
            }
            if (zM25048break && zM25050catch2) {
                return -1;
            }
            if (zM25050catch && zM25048break2) {
                return 1;
            }
            if (zM25048break || zM25050catch) {
                return -1;
            }
            if (zM25048break2 || zM25050catch2) {
                return 1;
            }
            return m25055for(strM25059super, strM25059super2);
        }

        /* renamed from: new, reason: not valid java name */
        private int m25058new(RipeFile ripeFile, RipeFile ripeFile2) throws NumberFormatException {
            String strM25049case = m25049case(ripeFile.getName());
            String strM25049case2 = m25049case(ripeFile2.getName());
            String strM25061try = m25061try(strM25049case, ripeFile.getName());
            String strM25061try2 = m25061try(strM25049case2, ripeFile2.getName());
            int iM25057if = m25057if(m25059super(strM25049case), m25059super(strM25049case2));
            return iM25057if == 0 ? (m25060this(strM25061try) || m25060this(strM25061try2)) ? compare(ripeFile, ripeFile2) : m25055for(strM25049case, strM25049case2) : iM25057if;
        }

        /* renamed from: super, reason: not valid java name */
        private String m25059super(String str) {
            int i;
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < str.length(); i2++) {
                if ((str.charAt(i2) != '0' && sb.length() == 0) || sb.length() > 0) {
                    sb.append(str.charAt(i2));
                } else if (i2 == str.length() - 1 || ((i = i2 + 1) < str.length() && !Character.isDigit(str.charAt(i)))) {
                    sb.append(str.charAt(i2));
                }
            }
            return sb.toString();
        }

        /* renamed from: this, reason: not valid java name */
        private boolean m25060this(String str) {
            return (str == null || str.length() == 0) ? false : true;
        }

        /* renamed from: try, reason: not valid java name */
        private String m25061try(String str, String str2) {
            return (str.equals("") || str2.equals("")) ? !str.equals("") ? str : str2 : str.charAt(0) == str2.charAt(0) ? m25061try(str.substring(1), str2.substring(1)) : str2;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(RipeFile ripeFile, RipeFile ripeFile2) {
            return (m25060this(ripeFile.getName()) && m25060this(ripeFile2.getName())) ? m25058new(ripeFile, ripeFile2) : ripeFile.getName().length() == 0 ? -1 : 1;
        }
    }

    public static void a(Activity activity, boolean z, boolean z2, boolean z3, boolean z4, String[] strArr, boolean z5) {
        Intent intent = new Intent(activity, (Class<?>) FileSelectorActivity.class);
        intent.putExtra("isShowImage", z);
        intent.putExtra("isSingleChoice", z2);
        intent.putExtra("checkBookAdded", z3);
        intent.putExtra("isImage", z4);
        intent.putStringArrayListExtra("suffixes", new ArrayList<>(Arrays.asList(strArr)));
        intent.putExtra("isShowButton", z5);
        activity.startActivityForResult(intent, 10001);
    }

    public static void b(Fragment fragment, boolean z, boolean z2, boolean z3, boolean z4, String[] strArr, boolean z5) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) FileSelectorActivity.class);
        intent.putExtra("isShowImage", z);
        intent.putExtra("isSingleChoice", z2);
        intent.putExtra("checkBookAdded", z3);
        intent.putExtra("isImage", z4);
        intent.putStringArrayListExtra("suffixes", new ArrayList<>(Arrays.asList(strArr)));
        intent.putExtra("isShowButton", z5);
        fragment.startActivityForResult(intent, 10001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public /* synthetic */ void m25021default(RipeFile ripeFile, int i, SingleEmitter singleEmitter) throws Exception {
        FileSnapshot fileSnapshotM25023finally = m25023finally(ripeFile);
        if (fileSnapshotM25023finally == null) {
            singleEmitter.onError(new Exception("snapshot push failed!"));
            return;
        }
        this.f21125while.setScrollOffset(i);
        this.f21115import.push(this.f21125while);
        this.f21125while = fileSnapshotM25023finally;
        singleEmitter.onSuccess(fileSnapshotM25023finally);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m25022extends(SingleEmitter singleEmitter) throws Exception {
        RipeFile ripeFile = (RipeFile) getIntent().getParcelableExtra("ripeFile");
        this.f21111extends = ripeFile;
        if (ripeFile == null) {
            try {
                List list = (List) com.wsw.cospa.utils.Cdo.m26783for(this).m26791const(this.f21120super);
                if (list == null || list.isEmpty()) {
                    this.f21125while = m25028package();
                } else {
                    this.f21115import.addAll(list);
                    FileSnapshot fileSnapshotPop = this.f21115import.pop();
                    FileSnapshot fileSnapshotM25023finally = m25023finally(fileSnapshotPop.getParent());
                    this.f21125while = fileSnapshotM25023finally;
                    if (fileSnapshotM25023finally != null) {
                        fileSnapshotM25023finally.setScrollOffset(fileSnapshotPop.getScrollOffset());
                    } else {
                        this.f21125while = this.f21115import.pop();
                    }
                }
            } catch (Exception unused) {
            }
        } else {
            this.f21125while = m25023finally(ripeFile);
        }
        FileSnapshot fileSnapshot = this.f21125while;
        if (fileSnapshot != null) {
            singleEmitter.onSuccess(fileSnapshot);
        } else {
            singleEmitter.onError(new Exception("file load failed!"));
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private FileSnapshot m25023finally(RipeFile ripeFile) {
        if (ripeFile == null || !ripeFile.exists() || !ripeFile.isDirectory()) {
            return null;
        }
        File[] fileArrListFiles = ripeFile.getFile().listFiles(this);
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            FileSnapshot fileSnapshot = new FileSnapshot();
            fileSnapshot.setParent(ripeFile);
            return fileSnapshot;
        }
        FileSnapshot fileSnapshot2 = new FileSnapshot();
        fileSnapshot2.setParent(ripeFile);
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            RipeFile ripeFile2 = new RipeFile();
            ripeFile2.setFile(file);
            RipeFile ripeFile3 = this.f21111extends;
            if (ripeFile3 != null && !TextUtils.isEmpty(ripeFile3.getPath())) {
                ripeFile2.setRootPath(this.f21111extends.getPath());
            }
            ripeFile2.setIsDirectory(Boolean.valueOf(file.isDirectory()));
            ripeFile2.setSuffix(Cdefault.m26755class(file));
            arrayList.add(ripeFile2);
        }
        m25024implements(arrayList, this.f21112final);
        fileSnapshot2.setFiles(arrayList);
        return fileSnapshot2;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m25024implements(List<RipeFile> list, int i) {
        if (list != null) {
            Collections.sort(list, new Cnew(i));
            this.f21123throw = false;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m25026instanceof(Activity activity, boolean z, RipeFile ripeFile, boolean z2, boolean z3, boolean z4, String[] strArr, boolean z5) {
        Intent intent = new Intent(activity, (Class<?>) FileSelectorActivity.class);
        intent.putExtra("isShowImage", z);
        intent.putExtra("isSingleChoice", z2);
        intent.putExtra("checkBookAdded", z3);
        intent.putExtra("ripeFile", ripeFile);
        intent.putExtra("isImage", z4);
        intent.putStringArrayListExtra("suffixes", new ArrayList<>(Arrays.asList(strArr)));
        intent.putExtra("isShowButton", z5);
        activity.startActivityForResult(intent, 10001);
    }

    /* renamed from: package, reason: not valid java name */
    private FileSnapshot m25028package() throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException {
        ArrayList<String> arrayListM26778while = Cdefault.m26778while(this);
        if (arrayListM26778while == null) {
            return null;
        }
        FileSnapshot fileSnapshot = new FileSnapshot();
        RipeFile ripeFile = new RipeFile();
        ripeFile.setPath(on0.f4694final);
        fileSnapshot.setParent(ripeFile);
        ArrayList arrayList = new ArrayList();
        for (String str : arrayListM26778while) {
            RipeFile ripeFile2 = new RipeFile();
            ripeFile2.setFile(new File(str));
            arrayList.add(ripeFile2);
        }
        fileSnapshot.setFiles(arrayList);
        return fileSnapshot;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m25032synchronized(Activity activity, boolean z, boolean z2, boolean z3, boolean z4, String[] strArr) {
        Intent intent = new Intent(activity, (Class<?>) FileSelectorActivity.class);
        intent.putExtra("isShowImage", z);
        intent.putExtra("isSingleChoice", z2);
        intent.putExtra("checkBookAdded", z3);
        intent.putExtra("isImage", z4);
        intent.putStringArrayListExtra("suffixes", new ArrayList<>(Arrays.asList(strArr)));
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m25033throws(SingleEmitter singleEmitter) throws Exception {
        if (this.f21115import.empty()) {
            return;
        }
        FileSnapshot fileSnapshotPop = this.f21115import.pop();
        this.f21125while = fileSnapshotPop;
        if (fileSnapshotPop == null) {
            singleEmitter.onError(new Exception("snapshot pop failed!"));
            return;
        }
        if (this.f21123throw) {
            m25024implements(fileSnapshotPop.getFiles(), this.f21112final);
        }
        singleEmitter.onSuccess(this.f21125while);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m25034transient(List<ZipEntry> list) {
        if (list != null) {
            Collections.sort(list, new Ccase(this, null));
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m25035abstract() {
        hideProgress();
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.va0
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f7130do.m25033throws(singleEmitter);
            }
        }).h0(io.reactivex.schedulers.Cdo.m29768else()).Q(io.reactivex.android.schedulers.Cdo.m29358for()).m4155new(mp1.m4975do(this))).subscribe(new Cfor());
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        String name = file.getName();
        boolean zM8713do = v02.m8711if(this).m8713do(wq.z, true);
        if (name.startsWith(".") && zM8713do) {
            return false;
        }
        if (!file.isDirectory() && this.f21108class) {
            return this.f21114goto.contains(bb0.m499if(name).toLowerCase());
        }
        return true;
    }

    public void c() {
        showProgress();
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.ua0
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f6811do.m25022extends(singleEmitter);
            }
        }).h0(io.reactivex.schedulers.Cdo.m29768else()).Q(io.reactivex.android.schedulers.Cdo.m29358for()).m4155new(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21121switch = new LinearLayoutManager(this);
        this.f21119static = new FileSelectorAdapter(this, this.f21108class, this.f21122this, this.f21106break, this.f21107catch);
        this.mRecyclerView.setLayoutManager(this.f21121switch);
        this.mRecyclerView.setAdapter(this.f21119static);
        this.f21119static.setOnItemClickListener(this);
        this.f21119static.setOnItemCheckedListener(this);
        if (this.f21109const) {
            this.mButtonBar.setVisibility(0);
            this.tvTitle.setText("选择文件夹");
        } else {
            this.mButtonBar.setVisibility(8);
            RipeFile ripeFile = (RipeFile) getIntent().getParcelableExtra("ripeFile");
            this.f21111extends = ripeFile;
            if (ripeFile != null) {
                this.tvTitle.setText(ripeFile.getName());
            }
        }
        this.backButton.setText("返回");
        this.cancelButton.setText("取消");
        this.confirmButton.setText("确定");
        this.backButton.setOnClickListener(this);
        this.cancelButton.setOnClickListener(this);
        this.confirmButton.setOnClickListener(this);
        this.llCurrentPosition.setOnClickListener(this);
        c();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m25036continue(final RipeFile ripeFile, final int i) {
        showProgress();
        Disposable disposable = this.f21118return;
        if (disposable != null) {
            this.f21117public.remove(disposable);
        }
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.wa0
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f7429do.m25021default(ripeFile, i, singleEmitter);
            }
        }).h0(io.reactivex.schedulers.Cdo.m29768else()).Q(io.reactivex.android.schedulers.Cdo.m29358for()).m4155new(mp1.m4975do(this))).subscribe(new Cif());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    public void hideProgress() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }

    /* renamed from: interface, reason: not valid java name */
    public Comparator<RipeFile> m25037interface(int i) {
        if (this.f21112final != i) {
            this.f21112final = i;
            this.f21123throw = true;
        }
        return new Cnew(i);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0032;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 10001 && intent != null) {
            getContentResolver().takePersistableUriPermission(intent.getData(), intent.getFlags() & 3);
            if (Build.VERSION.SDK_INT >= 21) {
                am2.m286new(getContentResolver());
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f21115import.empty()) {
            super.onBackPressed();
        } else {
            m25035abstract();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onClick(View view) {
        boolean z = true;
        switch (view.getId()) {
            case R.id.arg_res_0x7f0900a0 /* 2131296416 */:
                m25035abstract();
                break;
            case R.id.arg_res_0x7f0900dd /* 2131296477 */:
                finish();
                break;
            case R.id.arg_res_0x7f09010f /* 2131296527 */:
                if (this.f21122this) {
                    Parcelable parcelableM25671case = this.f21119static.m25671case();
                    if (parcelableM25671case == null) {
                        z = false;
                    } else {
                        Intent intent = new Intent();
                        intent.putExtra(wq.Cdo.f7655native, parcelableM25671case);
                        intent.putExtra("isSingleChoice", true);
                        setResult(-1, intent);
                        finish();
                    }
                } else {
                    ArrayList<RipeFile> arrayListM25674else = this.f21119static.m25674else();
                    if (!arrayListM25674else.isEmpty()) {
                        Intent intent2 = new Intent();
                        intent2.putExtra(wq.Cdo.f7655native, arrayListM25674else);
                        intent2.putExtra("isSingleChoice", false);
                        setResult(-1, intent2);
                        finish();
                    }
                }
                if (!z) {
                    v72.m8769if("请选择文件");
                    break;
                }
                break;
            case R.id.arg_res_0x7f09027d /* 2131296893 */:
                try {
                    RipeFile ripeFile = this.f21110default;
                    LocalPreviewActivity.D0(this, ripeFile, Integer.valueOf(ripeFile.getIndexPape()), true);
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0008, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        FileSnapshot fileSnapshot;
        super.onDestroy();
        if (!this.f21115import.empty() && (fileSnapshot = this.f21125while) != null) {
            fileSnapshot.setScrollOffset(m25041switch());
            this.f21115import.push(this.f21125while);
        }
        cq cqVar = this.f21908do;
        if (cqVar != null && !cqVar.isDisposed()) {
            this.f21908do.dispose();
            this.f21908do.m995if();
            this.f21908do = null;
        }
        nm1.m5277case().m9006new(this);
    }

    @Override // com.wsw.cospa.adapter.FileSelectorAdapter.OnItemCheckedListener
    public void onItemChecked(RipeFile ripeFile, boolean z, int i) {
        int size = this.f21119static.m25674else().size();
        if (size == 0) {
            this.confirmButton.setText("确定");
        } else {
            this.confirmButton.setText(String.format(Locale.getDefault(), "%s(%d)", "确定", Integer.valueOf(size)));
        }
    }

    @Override // com.wsw.cospa.adapter.FileSelectorAdapter.OnItemClickListener
    public void onItemClick(View view, RipeFile ripeFile, int i) {
        this.f21113finally = false;
        if (ripeFile.isDirectory()) {
            m25036continue(ripeFile, this.mRecyclerView.computeVerticalScrollOffset());
            this.confirmButton.setText("确定");
        } else if (bb0.m500new(ripeFile.getPath())) {
            ZipFileManagerActivity.y0(this, ripeFile, Integer.valueOf(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int i = 0;
        if (itemId == 16908332) {
            onBackPressed();
        } else {
            if (itemId != R.id.arg_res_0x7f09007b) {
                switch (itemId) {
                    case R.id.arg_res_0x7f09022a /* 2131296810 */:
                        i = 2;
                        break;
                    case R.id.arg_res_0x7f09022b /* 2131296811 */:
                        i = 3;
                        break;
                    case R.id.arg_res_0x7f09022c /* 2131296812 */:
                        i = 4;
                        break;
                    case R.id.arg_res_0x7f09022d /* 2131296813 */:
                        i = 5;
                        break;
                    case R.id.arg_res_0x7f09022f /* 2131296815 */:
                        i = 1;
                        break;
                }
                if (i != -1) {
                    menuItem.setChecked(true);
                    this.f21119static.m25677import(m25037interface(i));
                }
                return super.onOptionsItemSelected(menuItem);
            }
            this.f21119static.m25679throw();
            int size = this.f21119static.m25674else().size();
            if (size == 0) {
                this.confirmButton.setText("确定");
            } else {
                this.confirmButton.setText(String.format(Locale.getDefault(), "%s(%d)", "确定", Integer.valueOf(size)));
            }
        }
        i = -1;
        if (i != -1) {
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.wsw.cospa.event.RefreshLocalFileMessageObserver
    public void onRefreshFileMessage(RipeFile ripeFile) {
        if (ripeFile != null) {
            try {
                this.f21110default = ripeFile;
                if (ripeFile == null || TextUtils.isEmpty(ripeFile.getCurrPagePath())) {
                    this.llCurrentPosition.setVisibility(8);
                } else {
                    this.tvCurrentPosition.setText(this.f21110default.getCurrPagePath());
                    this.llCurrentPosition.setVisibility(0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m25038private(FileSnapshot fileSnapshot, boolean z) {
        try {
            this.f21110default = fileSnapshot.getParent();
            this.f21119static.m25681while(fileSnapshot.getFiles());
            this.tvCurrentPath.setText(this.f21110default.getPath());
            int i = 0;
            if (this.f21108class) {
                RipeFile ripeFileLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3133catch().load(this.f21110default.getPath());
                this.f21110default = ripeFileLoad;
                if (ripeFileLoad == null || TextUtils.isEmpty(ripeFileLoad.getCurrPagePath())) {
                    this.llCurrentPosition.setVisibility(8);
                } else {
                    this.tvCurrentPosition.setText(this.f21110default.getCurrPagePath());
                    this.llCurrentPosition.setVisibility(0);
                }
            } else {
                this.llCurrentPosition.setVisibility(8);
            }
            if (z) {
                this.mRecyclerView.scrollBy(0, fileSnapshot.getScrollOffset() - this.mRecyclerView.computeVerticalScrollOffset());
            } else {
                this.mRecyclerView.scrollToPosition(0);
            }
            this.tvTitle.setText(this.f21110default.getName());
            AppCompatButton appCompatButton = this.backButton;
            if (this.f21115import.empty()) {
                i = 4;
            }
            appCompatButton.setVisibility(i);
            this.confirmButton.setText("确定");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public String m25039protected(String str) {
        Matcher matcher = Pattern.compile("\\d+").matcher(str);
        return matcher.find() ? l22.m4553case("%04d", Long.valueOf(Long.valueOf(matcher.group(0)).longValue())) : str;
    }

    public void showProgress() {
        this.mIndicatorView.setVisibility(0);
        this.mRecyclerView.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public List<ZipEntry> m25040strictfp(String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        try {
            this.f21124throws = new ZipFile(str);
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            Enumeration<? extends ZipEntry> enumerationEntries = this.f21124throws.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (zipEntryNextElement.isDirectory()) {
                    System.err.println("dir file - " + zipEntryNextElement.getName());
                } else {
                    System.err.println("file - " + zipEntryNextElement.getName() + " : " + zipEntryNextElement.getSize() + " bytes");
                    long size = zipEntryNextElement.getSize();
                    String strM499if = bb0.m499if(zipEntryNextElement.getName());
                    System.err.println("后缀名 ： " + strM499if);
                    if ((size > 0 && ("png".equalsIgnoreCase(strM499if) || "jpg".equalsIgnoreCase(strM499if) || "webp".equalsIgnoreCase(strM499if))) || "gif".equalsIgnoreCase(strM499if)) {
                        arrayList.add(zipEntryNextElement);
                    }
                }
            }
            zipInputStream.closeEntry();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: switch, reason: not valid java name */
    public int m25041switch() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            return 0;
        }
        return recyclerView.computeVerticalScrollOffset();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        nm1.m5277case().m9005for(this);
        Intent intent = getIntent();
        this.f21108class = intent.getBooleanExtra("isShowImage", false);
        this.f21122this = intent.getBooleanExtra("isSingleChoice", false);
        this.f21106break = intent.getBooleanExtra("checkBookAdded", false);
        this.f21107catch = intent.getBooleanExtra("isImage", false);
        this.f21109const = intent.getBooleanExtra("isShowButton", false);
        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("suffixes");
        this.f21114goto = stringArrayListExtra;
        this.f21120super = l22.m4572static(",", stringArrayListExtra);
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m25042volatile(String str) {
        try {
            str.replaceAll("\\\\", on0.f4694final);
            sj2 sj2Var = new sj2(str);
            if (sj2Var.m7428abstract()) {
                List<oa0> listM7454switch = sj2Var.m7454switch();
                List<File> listM7436extends = sj2Var.m7436extends();
                System.err.println(listM7454switch.size());
                System.err.println(listM7436extends.size());
                for (oa0 oa0Var : listM7454switch) {
                    String strM8069catch = oa0Var.m8069catch();
                    if (strM8069catch.endsWith(on0.f4694final) || strM8069catch.endsWith("\\\\") || strM8069catch.endsWith("\\")) {
                        System.err.println(wq.f7618native + strM8069catch);
                    } else {
                        sj2Var.m7456throws(oa0Var);
                        System.err.println(wq.f7618native + strM8069catch);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

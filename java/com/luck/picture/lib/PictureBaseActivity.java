package com.luck.picture.lib;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.support.v4.cx;
import android.support.v4.dm0;
import android.support.v4.j20;
import android.support.v4.od1;
import android.support.v4.pd1;
import android.support.v4.ps1;
import android.support.v4.rd1;
import android.support.v4.v9;
import android.support.v4.x4;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.luck.picture.lib.compress.Cnew;
import com.luck.picture.lib.compress.OnCompressListener;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.EventEntity;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.rxbus2.Cif;
import com.yalantis.ucrop.Cdo;
import com.yalantis.ucrop.Cif;
import io.reactivex.Cfor;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class PictureBaseActivity extends FragmentActivity {

    /* renamed from: break, reason: not valid java name */
    public pd1 f18426break;

    /* renamed from: case, reason: not valid java name */
    public int f18427case;

    /* renamed from: catch, reason: not valid java name */
    public pd1 f18428catch;

    /* renamed from: class, reason: not valid java name */
    public List<LocalMedia> f18429class;

    /* renamed from: do, reason: not valid java name */
    public Context f18430do;

    /* renamed from: else, reason: not valid java name */
    public String f18431else;

    /* renamed from: for, reason: not valid java name */
    public boolean f18432for;

    /* renamed from: goto, reason: not valid java name */
    public String f18433goto;

    /* renamed from: if, reason: not valid java name */
    public PictureSelectionConfig f18434if;

    /* renamed from: new, reason: not valid java name */
    public boolean f18435new;

    /* renamed from: this, reason: not valid java name */
    public String f18436this;

    /* renamed from: try, reason: not valid java name */
    public int f18437try;

    /* renamed from: com.luck.picture.lib.PictureBaseActivity$do, reason: invalid class name */
    public class Cdo implements OnCompressListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f18438do;

        public Cdo(List list) {
            this.f18438do = list;
        }

        @Override // com.luck.picture.lib.compress.OnCompressListener
        public void onError(Throwable th) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23270this(new EventEntity(od1.f4575throw));
            PictureBaseActivity.this.mo22868import(this.f18438do);
        }

        @Override // com.luck.picture.lib.compress.OnCompressListener
        public void onStart() {
        }

        @Override // com.luck.picture.lib.compress.OnCompressListener
        public void onSuccess(List<LocalMedia> list) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23270this(new EventEntity(od1.f4575throw));
            PictureBaseActivity.this.mo22868import(list);
        }
    }

    /* renamed from: com.luck.picture.lib.PictureBaseActivity$if, reason: invalid class name */
    public class Cif extends Cif.Cnew<List<LocalMedia>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f18440do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ List f18441for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f18442if;

        public Cif(boolean z, boolean z2, List list) {
            this.f18440do = z;
            this.f18442if = z2;
            this.f18441for = list;
        }

        @Override // com.luck.picture.lib.rxbus2.Cif.Cnew
        @NonNull
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<LocalMedia> mo22879do(Object... objArr) throws IOException {
            if (!this.f18440do || this.f18442if) {
                return this.f18441for;
            }
            int size = this.f18441for.size();
            for (int i = 0; i < size; i++) {
                LocalMedia localMedia = (LocalMedia) this.f18441for.get(i);
                if (localMedia != null && !TextUtils.isEmpty(localMedia.m23084case())) {
                    if (localMedia.m23083break()) {
                        localMedia.m23097public(localMedia.m23088do());
                    } else if (localMedia.m23085catch()) {
                        localMedia.m23097public(localMedia.m23093if());
                    } else {
                        String str = com.luck.picture.lib.tools.Cdo.m23297const(PictureBaseActivity.this.getApplicationContext()) + File.separator + System.currentTimeMillis() + rd1.m6917new(localMedia.m23084case());
                        v9.m8800if(v9.m8799do(PictureBaseActivity.this.getApplicationContext(), Uri.parse(localMedia.m23084case())), str);
                        localMedia.m23097public(str);
                    }
                }
            }
            return this.f18441for;
        }

        @Override // com.luck.picture.lib.rxbus2.Cif.Cnew
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public void mo22881try(List<LocalMedia> list) {
            super.mo22881try(list);
            PictureBaseActivity.this.m22859case();
            PictureBaseActivity pictureBaseActivity = PictureBaseActivity.this;
            PictureSelectionConfig pictureSelectionConfig = pictureBaseActivity.f18434if;
            if (pictureSelectionConfig.f18689if && pictureSelectionConfig.f18683else == 2 && pictureBaseActivity.f18429class != null) {
                list.addAll(list.size() > 0 ? list.size() - 1 : 0, PictureBaseActivity.this.f18429class);
            }
            PictureBaseActivity.this.setResult(-1, com.luck.picture.lib.Cif.m23124const(list));
            PictureBaseActivity.this.m22866for();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public void m22857while(List<LocalMedia> list, List<File> list2) {
        if (list2.size() == list.size()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String path = list2.get(i).getPath();
                LocalMedia localMedia = list.get(i);
                boolean z = !TextUtils.isEmpty(path) && rd1.m6913goto(path);
                localMedia.m23090final(!z);
                if (z) {
                    path = "";
                }
                localMedia.m23087const(path);
            }
        }
        com.luck.picture.lib.rxbus2.Cdo.m23256else().m23270this(new EventEntity(od1.f4575throw));
        mo22868import(list);
    }

    /* renamed from: super, reason: not valid java name */
    private void m22855super() {
        this.f18433goto = this.f18434if.f18687for;
        this.f18432for = x4.m9388do(this, R.attr.picture_statusFontColor);
        this.f18435new = x4.m9388do(this, R.attr.picture_style_numComplete);
        this.f18434if.f18680continue = x4.m9388do(this, R.attr.picture_style_checkNumMode);
        this.f18437try = x4.m9390if(this, R.attr.colorPrimary);
        this.f18427case = x4.m9390if(this, R.attr.colorPrimaryDark);
        List<LocalMedia> list = this.f18434if.e;
        this.f18429class = list;
        if (list == null) {
            this.f18429class = new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public /* synthetic */ List m22856throw(List list) throws Exception {
        List<File> listM23017const = Cnew.m22997import(this.f18430do).m23025static(list).m23021finally(this.f18434if.f18695new).m23020final(this.f18434if.f18703super).m23017const();
        return listM23017const == null ? new ArrayList() : listM23017const;
    }

    /* renamed from: break, reason: not valid java name */
    public LocalMediaFolder m22858break(String str, List<LocalMediaFolder> list) {
        File parentFile = new File(str).getParentFile();
        for (LocalMediaFolder localMediaFolder : list) {
            if (localMediaFolder.m23120try().equals(parentFile.getName())) {
                return localMediaFolder;
            }
        }
        LocalMediaFolder localMediaFolder2 = new LocalMediaFolder();
        localMediaFolder2.m23111const(parentFile.getName());
        localMediaFolder2.m23114final(parentFile.getAbsolutePath());
        localMediaFolder2.m23107break(str);
        list.add(localMediaFolder2);
        return localMediaFolder2;
    }

    /* renamed from: case, reason: not valid java name */
    public void m22859case() {
        pd1 pd1Var;
        try {
            if (isFinishing() || (pd1Var = this.f18428catch) == null || !pd1Var.isShowing()) {
                return;
            }
            this.f18428catch.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public int m22860catch(boolean z) {
        try {
            Cursor cursorQuery = getContentResolver().query(z ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI : MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "_data like ?", new String[]{com.luck.picture.lib.tools.Cdo.m23293break(this) + "%"}, "_id DESC");
            if (!cursorQuery.moveToFirst()) {
                return -1;
            }
            int i = cursorQuery.getInt(z ? cursorQuery.getColumnIndex("_id") : cursorQuery.getColumnIndex("_id"));
            int iM1062if = cx.m1062if(cursorQuery.getLong(z ? cursorQuery.getColumnIndex("duration") : cursorQuery.getColumnIndex("date_added")));
            cursorQuery.close();
            if (iM1062if <= 30) {
                return i;
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m22861const(List<LocalMedia> list) {
        if (this.f18434if.f18681default) {
            m22870new(list);
        } else {
            mo22868import(list);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m22862default(String str) throws Resources.NotFoundException {
        Cdo.C0236do c0236do = new Cdo.C0236do();
        int iM9390if = x4.m9390if(this, R.attr.picture_crop_toolbar_bg);
        int iM9390if2 = x4.m9390if(this, R.attr.picture_crop_status_color);
        int iM9390if3 = x4.m9390if(this, R.attr.picture_crop_title_color);
        c0236do.m27385continue(iM9390if);
        c0236do.m27400package(iM9390if2);
        c0236do.m27397interface(iM9390if3);
        c0236do.m27413try(this.f18434if.f18698protected);
        c0236do.m27389extends(this.f18434if.f18709transient);
        c0236do.m27391finally(this.f18434if.f18690implements);
        c0236do.m27410throw(this.f18434if.d);
        c0236do.m27386default(this.f18434if.a);
        c0236do.m27411throws(this.f18434if.f18705synchronized);
        c0236do.m27388else(this.f18434if.f18677catch);
        c0236do.m27396import(this.f18434if.f18692instanceof);
        c0236do.m27415while(this.f18434if.f18693interface);
        boolean zM6913goto = rd1.m6913goto(str);
        String strM6917new = rd1.m6917new(str);
        Uri uriFromFile = (zM6913goto || ps1.m6218do()) ? Uri.parse(str) : Uri.fromFile(new File(str));
        com.yalantis.ucrop.Cdo cdoM27364else = com.yalantis.ucrop.Cdo.m27364else(uriFromFile, Uri.fromFile(new File(com.luck.picture.lib.tools.Cdo.m23297const(this), System.currentTimeMillis() + strM6917new)));
        PictureSelectionConfig pictureSelectionConfig = this.f18434if;
        com.yalantis.ucrop.Cdo cdoM27375super = cdoM27364else.m27375super((float) pictureSelectionConfig.f18694native, (float) pictureSelectionConfig.f18699public);
        PictureSelectionConfig pictureSelectionConfig2 = this.f18434if;
        cdoM27375super.m27377throw(pictureSelectionConfig2.f18701static, pictureSelectionConfig2.f18704switch).m27378while(c0236do).m27373goto(this);
    }

    /* renamed from: else, reason: not valid java name */
    public void m22863else() {
        try {
            pd1 pd1Var = this.f18426break;
            if (pd1Var == null || !pd1Var.isShowing()) {
                return;
            }
            this.f18426break.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void m22864extends(ArrayList<String> arrayList) throws Resources.NotFoundException {
        Cif.Cdo cdo = new Cif.Cdo();
        int iM9390if = x4.m9390if(this, R.attr.picture_crop_toolbar_bg);
        int iM9390if2 = x4.m9390if(this, R.attr.picture_crop_status_color);
        int iM9390if3 = x4.m9390if(this, R.attr.picture_crop_title_color);
        cdo.m27439continue(iM9390if);
        cdo.m27454package(iM9390if2);
        cdo.m27451interface(iM9390if3);
        cdo.m27467try(this.f18434if.f18698protected);
        cdo.m27443extends(this.f18434if.f18709transient);
        cdo.m27464throw(this.f18434if.d);
        cdo.m27445finally(this.f18434if.f18690implements);
        cdo.m27440default(this.f18434if.a);
        cdo.m27465throws(this.f18434if.f18705synchronized);
        cdo.m27450import(true);
        cdo.m27442else(this.f18434if.f18677catch);
        cdo.m27444final(arrayList);
        cdo.m27469while(this.f18434if.f18693interface);
        String str = arrayList.size() > 0 ? arrayList.get(0) : "";
        boolean zM6913goto = rd1.m6913goto(str);
        String strM6917new = rd1.m6917new(str);
        Uri uriFromFile = (zM6913goto || ps1.m6218do()) ? Uri.parse(str) : Uri.fromFile(new File(str));
        com.yalantis.ucrop.Cif cifM27418else = com.yalantis.ucrop.Cif.m27418else(uriFromFile, Uri.fromFile(new File(com.luck.picture.lib.tools.Cdo.m23297const(this), System.currentTimeMillis() + strM6917new)));
        PictureSelectionConfig pictureSelectionConfig = this.f18434if;
        com.yalantis.ucrop.Cif cifM27429super = cifM27418else.m27429super((float) pictureSelectionConfig.f18694native, (float) pictureSelectionConfig.f18699public);
        PictureSelectionConfig pictureSelectionConfig2 = this.f18434if;
        cifM27429super.m27431throw(pictureSelectionConfig2.f18701static, pictureSelectionConfig2.f18704switch).m27432while(cdo).m27427goto(this);
    }

    /* renamed from: final, reason: not valid java name */
    public void m22865final() {
        dm0.m1409if(this, this.f18427case, this.f18437try, this.f18432for);
    }

    /* renamed from: for, reason: not valid java name */
    public void m22866for() {
        finish();
        if (this.f18434if.f18689if) {
            overridePendingTransition(0, R.anim.fade_out);
        } else {
            overridePendingTransition(0, R.anim.a3);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public String m22867goto(Uri uri) {
        try {
            Cursor cursorQuery = getContentResolver().query(uri, null, null, null, null);
            cursorQuery.moveToFirst();
            return cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void mo22868import(List<LocalMedia> list) {
        boolean zM6218do = ps1.m6218do();
        boolean zM6907class = rd1.m6907class((list == null || list.size() <= 0) ? "" : list.get(0).m23089else());
        if (zM6218do && !zM6907class) {
            m22872return();
        }
        com.luck.picture.lib.rxbus2.Cif.m23284else(new Cif(zM6218do, zM6907class, list));
    }

    @Override // android.app.Activity
    public boolean isImmersive() {
        return true;
    }

    /* renamed from: native, reason: not valid java name */
    public void m22869native(int i, boolean z) {
        try {
            getContentResolver().delete(z ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI : MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_id=?", new String[]{Long.toString(i)});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m22870new(final List<LocalMedia> list) {
        m22872return();
        if (this.f18434if.c) {
            Cfor.D2(list).t3(io.reactivex.schedulers.Cdo.m29772new()).S2(new Function() { // from class: android.support.v4.nd1
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f4177do.m22856throw((List) obj);
                }
            }).t3(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Consumer() { // from class: android.support.v4.md1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f3886do.m22857while(list, (List) obj);
                }
            });
        } else {
            Cnew.m22997import(this).m23025static(list).m23020final(this.f18434if.f18703super).m23021finally(this.f18434if.f18695new).m23029throws(new Cdo(list)).m23026super();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.f18434if = (PictureSelectionConfig) bundle.getParcelable(od1.f4553class);
            this.f18431else = bundle.getString(od1.f4574this);
            this.f18436this = bundle.getString(od1.f4550break);
        } else {
            this.f18434if = PictureSelectionConfig.m23033if();
        }
        setTheme(this.f18434if.f18676case);
        super.onCreate(bundle);
        this.f18430do = this;
        m22855super();
        if (isImmersive()) {
            m22865final();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m22859case();
        m22863else();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(od1.f4574this, this.f18431else);
        bundle.putString(od1.f4550break, this.f18436this);
        bundle.putParcelable(od1.f4553class, this.f18434if);
    }

    /* renamed from: public, reason: not valid java name */
    public void m22871public(int i, File file) {
        if (i > 0) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 2;
                com.luck.picture.lib.tools.Cdo.m23311switch(com.luck.picture.lib.tools.Cdo.m23309static(i, BitmapFactory.decodeFile(file.getAbsolutePath(), options)), file);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m22872return() {
        if (isFinishing()) {
            return;
        }
        m22859case();
        pd1 pd1Var = new pd1(this);
        this.f18428catch = pd1Var;
        pd1Var.show();
    }

    /* renamed from: static, reason: not valid java name */
    public void m22873static() {
        if (isFinishing()) {
            return;
        }
        m22863else();
        pd1 pd1Var = new pd1(this);
        this.f18426break = pd1Var;
        pd1Var.show();
    }

    /* renamed from: switch, reason: not valid java name */
    public void m22874switch(Class cls, Bundle bundle) {
        if (j20.m3667do()) {
            return;
        }
        Intent intent = new Intent();
        intent.setClass(this, cls);
        intent.putExtras(bundle);
        startActivity(intent);
    }

    /* renamed from: this, reason: not valid java name */
    public String m22875this(Intent intent) {
        boolean z = Build.VERSION.SDK_INT <= 19;
        if (intent == null || this.f18434if.f18682do != rd1.m6918super()) {
            return "";
        }
        try {
            Uri data = intent.getData();
            return z ? data.getPath() : m22867goto(data);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void m22876throws(Class cls, Bundle bundle, int i) {
        if (j20.m3667do()) {
            return;
        }
        Intent intent = new Intent();
        intent.setClass(this, cls);
        intent.putExtras(bundle);
        startActivityForResult(intent, i);
    }

    /* renamed from: try, reason: not valid java name */
    public void m22877try(List<LocalMediaFolder> list) {
        if (list.size() == 0) {
            LocalMediaFolder localMediaFolder = new LocalMediaFolder();
            localMediaFolder.m23111const(getString(this.f18434if.f18682do == rd1.m6918super() ? R.string.picture_all_audio : R.string.picture_camera_roll));
            localMediaFolder.m23114final("");
            localMediaFolder.m23107break("");
            list.add(localMediaFolder);
        }
    }
}

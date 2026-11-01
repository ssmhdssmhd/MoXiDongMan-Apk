package com.luck.picture.lib;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.j20;
import android.support.v4.od1;
import android.support.v4.rd1;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.luck.picture.lib.entity.LocalMedia;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.luck.picture.lib.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final WeakReference<Activity> f18752do;

    /* renamed from: if, reason: not valid java name */
    private final WeakReference<Fragment> f18753if;

    private Cif(Activity activity) {
        this(activity, null);
    }

    /* renamed from: break, reason: not valid java name */
    public static List<LocalMedia> m23123break(Bundle bundle) {
        return bundle != null ? (List) bundle.getSerializable(od1.f4577try) : new ArrayList();
    }

    /* renamed from: const, reason: not valid java name */
    public static Intent m23124const(List<LocalMedia> list) {
        return new Intent().putExtra(od1.f4563if, (Serializable) list);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m23125do(Activity activity) {
        return new Cif(activity);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m23126final(Bundle bundle, List<LocalMedia> list) {
        bundle.putSerializable(od1.f4577try, (Serializable) list);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m23127if(Fragment fragment) {
        return new Cif(fragment);
    }

    /* renamed from: this, reason: not valid java name */
    public static List<LocalMedia> m23128this(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent == null) {
            return arrayList;
        }
        List<LocalMedia> list = (List) intent.getSerializableExtra(od1.f4563if);
        return list == null ? new ArrayList() : list;
    }

    /* renamed from: case, reason: not valid java name */
    public void m23129case(String str) {
        if (j20.m3667do()) {
            return;
        }
        Intent intent = new Intent(m23132else(), (Class<?>) PictureVideoPlayActivity.class);
        intent.putExtra("video_path", str);
        m23132else().startActivity(intent);
    }

    /* renamed from: catch, reason: not valid java name */
    public Cdo m23130catch(int i) {
        return new Cdo(this, i, true);
    }

    /* renamed from: class, reason: not valid java name */
    public Cdo m23131class(int i) {
        return new Cdo(this, i);
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    public Activity m23132else() {
        return this.f18752do.get();
    }

    /* renamed from: for, reason: not valid java name */
    public void m23133for(String str) {
        if (j20.m3667do()) {
            return;
        }
        Intent intent = new Intent(m23132else(), (Class<?>) PicturePlayAudioActivity.class);
        intent.putExtra("audio_path", str);
        m23132else().startActivity(intent);
        m23132else().overridePendingTransition(R.anim.a5, 0);
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public Fragment m23134goto() {
        WeakReference<Fragment> weakReference = this.f18753if;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public void m23135new(int i, String str, List<LocalMedia> list) {
        if (j20.m3667do()) {
            return;
        }
        Intent intent = new Intent(m23132else(), (Class<?>) PictureExternalPreviewActivity.class);
        intent.putExtra(od1.f4566new, (Serializable) list);
        intent.putExtra(od1.f4551case, i);
        intent.putExtra(od1.f4562goto, str);
        m23132else().startActivity(intent);
        m23132else().overridePendingTransition(R.anim.a5, 0);
    }

    /* renamed from: super, reason: not valid java name */
    public Cdo m23136super(int i) {
        return new Cdo(this, rd1.m6920throw()).m23058implements(i);
    }

    /* renamed from: try, reason: not valid java name */
    public void m23137try(int i, List<LocalMedia> list) {
        if (j20.m3667do()) {
            return;
        }
        Intent intent = new Intent(m23132else(), (Class<?>) PictureExternalPreviewActivity.class);
        intent.putExtra(od1.f4566new, (Serializable) list);
        intent.putExtra(od1.f4551case, i);
        m23132else().startActivity(intent);
        m23132else().overridePendingTransition(R.anim.a5, 0);
    }

    private Cif(Fragment fragment) {
        this(fragment.getActivity(), fragment);
    }

    private Cif(Activity activity, Fragment fragment) {
        this.f18752do = new WeakReference<>(activity);
        this.f18753if = new WeakReference<>(fragment);
    }
}

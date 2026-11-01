package com.luck.picture.lib;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.j20;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.StyleRes;
import androidx.fragment.app.Fragment;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: com.luck.picture.lib.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private PictureSelectionConfig f18727do;

    /* renamed from: if, reason: not valid java name */
    private Cif f18728if;

    public Cdo(Cif cif, int i) {
        this.f18728if = cif;
        PictureSelectionConfig pictureSelectionConfigM23031do = PictureSelectionConfig.m23031do();
        this.f18727do = pictureSelectionConfigM23031do;
        pictureSelectionConfigM23031do.f18682do = i;
    }

    public Cdo a(int i) {
        this.f18727do.f18675break = i;
        return this;
    }

    /* renamed from: abstract, reason: not valid java name */
    public Cdo m23042abstract(List<LocalMedia> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f18727do.e = list;
        return this;
    }

    public Cdo b(int i, int i2) {
        PictureSelectionConfig pictureSelectionConfig = this.f18727do;
        pictureSelectionConfig.f18694native = i;
        pictureSelectionConfig.f18699public = i2;
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public Cdo m23043break(@IntRange(from = 100) int i, @IntRange(from = 100) int i2) {
        PictureSelectionConfig pictureSelectionConfig = this.f18727do;
        pictureSelectionConfig.f18712while = i;
        pictureSelectionConfig.f18691import = i2;
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public Cdo m23044case(boolean z) {
        this.f18727do.f18711volatile = z;
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cdo m23045catch(boolean z) {
        this.f18727do.f18692instanceof = z;
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public Cdo m23046class(String str) {
        this.f18727do.f18710try = str;
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Cdo m23047const(int i) {
        this.f18727do.f18707throw = i;
        return this;
    }

    /* renamed from: continue, reason: not valid java name */
    public Cdo m23048continue(int i) {
        this.f18727do.f18683else = i;
        return this;
    }

    /* renamed from: default, reason: not valid java name */
    public Cdo m23049default(boolean z) {
        this.f18727do.f18696package = z;
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Cdo m23050do(boolean z) {
        this.f18727do.f18698protected = z;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Cdo m23051else(boolean z) {
        this.f18727do.f18674abstract = z;
        return this;
    }

    /* renamed from: extends, reason: not valid java name */
    public Cdo m23052extends(boolean z) {
        this.f18727do.f18697private = z;
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Cdo m23053final(boolean z) {
        this.f18727do.f18684extends = z;
        return this;
    }

    /* renamed from: finally, reason: not valid java name */
    public Cdo m23054finally(int i) {
        this.f18727do.f18685final = i;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public Cdo m23055for(String str) {
        this.f18727do.f18695new = str;
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23056goto(int i) {
        Activity activityM23132else;
        if (j20.m3667do() || (activityM23132else = this.f18728if.m23132else()) == null) {
            return;
        }
        Intent intent = new Intent(activityM23132else, (Class<?>) PictureSelectorActivity.class);
        Fragment fragmentM23134goto = this.f18728if.m23134goto();
        if (fragmentM23134goto != null) {
            fragmentM23134goto.startActivityForResult(intent, i);
        } else {
            activityM23132else.startActivityForResult(intent, i);
        }
        activityM23132else.overridePendingTransition(R.anim.a5, 0);
    }

    /* renamed from: if, reason: not valid java name */
    public Cdo m23057if(boolean z) {
        this.f18727do.f18681default = z;
        return this;
    }

    /* renamed from: implements, reason: not valid java name */
    public Cdo m23058implements(@StyleRes int i) {
        this.f18727do.f18676case = i;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public Cdo m23059import(int i) {
        this.f18727do.f18688goto = i;
        return this;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public Cdo m23060instanceof(int i) {
        this.f18727do.f18678class = i * 1000;
        return this;
    }

    /* renamed from: interface, reason: not valid java name */
    public Cdo m23061interface(boolean z) {
        this.f18727do.f18690implements = z;
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Cdo m23062native(int i) {
        this.f18727do.f18706this = i;
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo m23063new(int i) {
        this.f18727do.f18677catch = i;
        return this;
    }

    /* renamed from: package, reason: not valid java name */
    public Cdo m23064package(boolean z) {
        this.f18727do.f18705synchronized = z;
        return this;
    }

    /* renamed from: private, reason: not valid java name */
    public Cdo m23065private(boolean z) {
        this.f18727do.a = z;
        return this;
    }

    /* renamed from: protected, reason: not valid java name */
    public Cdo m23066protected(@FloatRange(from = 0.10000000149011612d) float f) {
        this.f18727do.f18700return = f;
        return this;
    }

    /* renamed from: public, reason: not valid java name */
    public Cdo m23067public(int i) {
        this.f18727do.f18703super = i;
        return this;
    }

    /* renamed from: return, reason: not valid java name */
    public Cdo m23068return(boolean z) {
        this.f18727do.f18702strictfp = z;
        return this;
    }

    /* renamed from: static, reason: not valid java name */
    public void m23069static(int i, String str, List<LocalMedia> list) {
        Cif cif = this.f18728if;
        Objects.requireNonNull(cif, "This PictureSelector is Null");
        cif.m23135new(i, str, list);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Cdo m23070strictfp(String str) {
        this.f18727do.f18687for = str;
        return this;
    }

    /* renamed from: super, reason: not valid java name */
    public Cdo m23071super(boolean z) {
        this.f18727do.d = z;
        return this;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m23072switch(int i, List<LocalMedia> list) {
        Cif cif = this.f18728if;
        Objects.requireNonNull(cif, "This PictureSelector is Null");
        cif.m23137try(i, list);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public Cdo m23073synchronized(int i) {
        this.f18727do.f18679const = i * 1000;
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public Cdo m23074this(boolean z) {
        this.f18727do.f18693interface = z;
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cdo m23075throw(boolean z) {
        this.f18727do.f18686finally = z;
        return this;
    }

    /* renamed from: throws, reason: not valid java name */
    public Cdo m23076throws(boolean z) {
        this.f18727do.b = z;
        return this;
    }

    /* renamed from: transient, reason: not valid java name */
    public Cdo m23077transient(boolean z) {
        this.f18727do.c = z;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Cdo m23078try(int i, int i2) {
        PictureSelectionConfig pictureSelectionConfig = this.f18727do;
        pictureSelectionConfig.f18701static = i;
        pictureSelectionConfig.f18704switch = i2;
        return this;
    }

    /* renamed from: volatile, reason: not valid java name */
    public Cdo m23079volatile(boolean z) {
        this.f18727do.f18709transient = z;
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public Cdo m23080while(boolean z) {
        this.f18727do.f18708throws = z;
        return this;
    }

    public Cdo(Cif cif, int i, boolean z) {
        this.f18728if = cif;
        PictureSelectionConfig pictureSelectionConfigM23031do = PictureSelectionConfig.m23031do();
        this.f18727do = pictureSelectionConfigM23031do;
        pictureSelectionConfigM23031do.f18689if = z;
        pictureSelectionConfigM23031do.f18682do = i;
    }
}

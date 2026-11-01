package com.luck.picture.lib.config;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.StyleRes;
import com.luck.picture.lib.R;
import com.luck.picture.lib.entity.LocalMedia;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class PictureSelectionConfig implements Parcelable {
    public static final Parcelable.Creator<PictureSelectionConfig> CREATOR = new Cdo();
    public boolean a;

    /* renamed from: abstract, reason: not valid java name */
    public boolean f18674abstract;
    public boolean b;

    /* renamed from: break, reason: not valid java name */
    public int f18675break;
    public boolean c;

    /* renamed from: case, reason: not valid java name */
    @StyleRes
    public int f18676case;

    /* renamed from: catch, reason: not valid java name */
    public int f18677catch;

    /* renamed from: class, reason: not valid java name */
    public int f18678class;

    /* renamed from: const, reason: not valid java name */
    public int f18679const;

    /* renamed from: continue, reason: not valid java name */
    public boolean f18680continue;
    public boolean d;

    /* renamed from: default, reason: not valid java name */
    public boolean f18681default;

    /* renamed from: do, reason: not valid java name */
    public int f18682do;
    public List<LocalMedia> e;

    /* renamed from: else, reason: not valid java name */
    public int f18683else;

    /* renamed from: extends, reason: not valid java name */
    public boolean f18684extends;

    /* renamed from: final, reason: not valid java name */
    public int f18685final;

    /* renamed from: finally, reason: not valid java name */
    public boolean f18686finally;

    /* renamed from: for, reason: not valid java name */
    public String f18687for;

    /* renamed from: goto, reason: not valid java name */
    public int f18688goto;

    /* renamed from: if, reason: not valid java name */
    public boolean f18689if;

    /* renamed from: implements, reason: not valid java name */
    public boolean f18690implements;

    /* renamed from: import, reason: not valid java name */
    public int f18691import;

    /* renamed from: instanceof, reason: not valid java name */
    public boolean f18692instanceof;

    /* renamed from: interface, reason: not valid java name */
    public boolean f18693interface;

    /* renamed from: native, reason: not valid java name */
    public int f18694native;

    /* renamed from: new, reason: not valid java name */
    public String f18695new;

    /* renamed from: package, reason: not valid java name */
    public boolean f18696package;

    /* renamed from: private, reason: not valid java name */
    public boolean f18697private;

    /* renamed from: protected, reason: not valid java name */
    public boolean f18698protected;

    /* renamed from: public, reason: not valid java name */
    public int f18699public;

    /* renamed from: return, reason: not valid java name */
    public float f18700return;

    /* renamed from: static, reason: not valid java name */
    public int f18701static;

    /* renamed from: strictfp, reason: not valid java name */
    public boolean f18702strictfp;

    /* renamed from: super, reason: not valid java name */
    public int f18703super;

    /* renamed from: switch, reason: not valid java name */
    public int f18704switch;

    /* renamed from: synchronized, reason: not valid java name */
    public boolean f18705synchronized;

    /* renamed from: this, reason: not valid java name */
    public int f18706this;

    /* renamed from: throw, reason: not valid java name */
    public int f18707throw;

    /* renamed from: throws, reason: not valid java name */
    public boolean f18708throws;

    /* renamed from: transient, reason: not valid java name */
    public boolean f18709transient;

    /* renamed from: try, reason: not valid java name */
    public String f18710try;

    /* renamed from: volatile, reason: not valid java name */
    public boolean f18711volatile;

    /* renamed from: while, reason: not valid java name */
    public int f18712while;

    /* renamed from: com.luck.picture.lib.config.PictureSelectionConfig$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<PictureSelectionConfig> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public PictureSelectionConfig createFromParcel(Parcel parcel) {
            return new PictureSelectionConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public PictureSelectionConfig[] newArray(int i) {
            return new PictureSelectionConfig[i];
        }
    }

    /* renamed from: com.luck.picture.lib.config.PictureSelectionConfig$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private static final PictureSelectionConfig f18713do = new PictureSelectionConfig();

        private Cif() {
        }
    }

    public PictureSelectionConfig() {
    }

    /* renamed from: do, reason: not valid java name */
    public static PictureSelectionConfig m23031do() {
        PictureSelectionConfig pictureSelectionConfigM23033if = m23033if();
        pictureSelectionConfigM23033if.m23032for();
        return pictureSelectionConfigM23033if;
    }

    /* renamed from: for, reason: not valid java name */
    private void m23032for() {
        this.f18682do = 1;
        this.f18689if = false;
        this.f18676case = R.style.picture_default_style;
        this.f18683else = 2;
        this.f18688goto = 9;
        this.f18706this = 0;
        this.f18675break = 1;
        this.f18677catch = 90;
        this.f18678class = 0;
        this.f18679const = 0;
        this.f18685final = 60;
        this.f18703super = 100;
        this.f18707throw = 4;
        this.f18712while = 0;
        this.f18691import = 0;
        this.f18681default = false;
        this.f18694native = 0;
        this.f18699public = 0;
        this.f18701static = 0;
        this.f18704switch = 0;
        this.f18684extends = true;
        this.f18686finally = false;
        this.f18696package = true;
        this.f18697private = true;
        this.f18674abstract = true;
        this.f18680continue = false;
        this.f18702strictfp = false;
        this.f18711volatile = false;
        this.f18693interface = false;
        this.f18698protected = false;
        this.f18709transient = true;
        this.f18690implements = true;
        this.f18692instanceof = true;
        this.f18705synchronized = true;
        this.a = true;
        this.b = false;
        this.c = true;
        this.f18708throws = true;
        this.d = true;
        this.f18687for = "";
        this.f18695new = "";
        this.f18710try = ".JPEG";
        this.f18700return = 0.5f;
        this.e = new ArrayList();
    }

    /* renamed from: if, reason: not valid java name */
    public static PictureSelectionConfig m23033if() {
        return Cif.f18713do;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f18682do);
        parcel.writeByte(this.f18689if ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f18687for);
        parcel.writeString(this.f18695new);
        parcel.writeString(this.f18710try);
        parcel.writeInt(this.f18676case);
        parcel.writeInt(this.f18683else);
        parcel.writeInt(this.f18688goto);
        parcel.writeInt(this.f18706this);
        parcel.writeInt(this.f18675break);
        parcel.writeInt(this.f18677catch);
        parcel.writeInt(this.f18678class);
        parcel.writeInt(this.f18679const);
        parcel.writeInt(this.f18685final);
        parcel.writeInt(this.f18703super);
        parcel.writeInt(this.f18707throw);
        parcel.writeInt(this.f18712while);
        parcel.writeInt(this.f18691import);
        parcel.writeInt(this.f18694native);
        parcel.writeInt(this.f18699public);
        parcel.writeFloat(this.f18700return);
        parcel.writeInt(this.f18701static);
        parcel.writeInt(this.f18704switch);
        parcel.writeByte(this.f18708throws ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18681default ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18684extends ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18686finally ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18696package ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18697private ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18674abstract ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18680continue ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18702strictfp ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18711volatile ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18693interface ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18698protected ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18709transient ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18690implements ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18692instanceof ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18705synchronized ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.a ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.e);
    }

    public PictureSelectionConfig(Parcel parcel) {
        this.f18682do = parcel.readInt();
        this.f18689if = parcel.readByte() != 0;
        this.f18687for = parcel.readString();
        this.f18695new = parcel.readString();
        this.f18710try = parcel.readString();
        this.f18676case = parcel.readInt();
        this.f18683else = parcel.readInt();
        this.f18688goto = parcel.readInt();
        this.f18706this = parcel.readInt();
        this.f18675break = parcel.readInt();
        this.f18677catch = parcel.readInt();
        this.f18678class = parcel.readInt();
        this.f18679const = parcel.readInt();
        this.f18685final = parcel.readInt();
        this.f18703super = parcel.readInt();
        this.f18707throw = parcel.readInt();
        this.f18712while = parcel.readInt();
        this.f18691import = parcel.readInt();
        this.f18694native = parcel.readInt();
        this.f18699public = parcel.readInt();
        this.f18700return = parcel.readFloat();
        this.f18701static = parcel.readInt();
        this.f18704switch = parcel.readInt();
        this.f18708throws = parcel.readByte() != 0;
        this.f18681default = parcel.readByte() != 0;
        this.f18684extends = parcel.readByte() != 0;
        this.f18686finally = parcel.readByte() != 0;
        this.f18696package = parcel.readByte() != 0;
        this.f18697private = parcel.readByte() != 0;
        this.f18674abstract = parcel.readByte() != 0;
        this.f18680continue = parcel.readByte() != 0;
        this.f18702strictfp = parcel.readByte() != 0;
        this.f18711volatile = parcel.readByte() != 0;
        this.f18693interface = parcel.readByte() != 0;
        this.f18698protected = parcel.readByte() != 0;
        this.f18709transient = parcel.readByte() != 0;
        this.f18690implements = parcel.readByte() != 0;
        this.f18692instanceof = parcel.readByte() != 0;
        this.f18705synchronized = parcel.readByte() != 0;
        this.a = parcel.readByte() != 0;
        this.b = parcel.readByte() != 0;
        this.c = parcel.readByte() != 0;
        this.d = parcel.readByte() != 0;
        this.e = parcel.createTypedArrayList(LocalMedia.CREATOR);
    }
}

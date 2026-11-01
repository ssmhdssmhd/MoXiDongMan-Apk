package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.c30;
import android.support.v4.f81;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.util.List;

/* renamed from: com.bumptech.glide.load.resource.drawable.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements ResourceDecoder<Uri, Drawable> {

    /* renamed from: case, reason: not valid java name */
    private static final int f10187case = 1;

    /* renamed from: else, reason: not valid java name */
    private static final int f10188else = 1;

    /* renamed from: for, reason: not valid java name */
    private static final int f10189for = 0;

    /* renamed from: goto, reason: not valid java name */
    private static final int f10190goto = 0;

    /* renamed from: if, reason: not valid java name */
    private static final String f10191if = "android";

    /* renamed from: new, reason: not valid java name */
    private static final int f10192new = 2;

    /* renamed from: try, reason: not valid java name */
    private static final int f10193try = 0;

    /* renamed from: do, reason: not valid java name */
    private final Context f10194do;

    public Cif(Context context) {
        this.f10194do = context.getApplicationContext();
    }

    @DrawableRes
    /* renamed from: for, reason: not valid java name */
    private int m11784for(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e);
        }
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private Context m11785if(Uri uri, String str) {
        if (str.equals(this.f10194do.getPackageName())) {
            return this.f10194do;
        }
        try {
            return this.f10194do.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.f10194do.getPackageName())) {
                return this.f10194do;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    @DrawableRes
    /* renamed from: new, reason: not valid java name */
    private int m11786new(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        String authority = uri.getAuthority();
        String str = pathSegments.get(0);
        String str2 = pathSegments.get(1);
        int identifier = context.getResources().getIdentifier(str2, str, authority);
        if (identifier == 0) {
            identifier = Resources.getSystem().getIdentifier(str2, str, f10191if);
        }
        if (identifier != 0) {
            return identifier;
        }
        throw new IllegalArgumentException("Failed to find resource id for: " + uri);
    }

    @DrawableRes
    /* renamed from: try, reason: not valid java name */
    private int m11787try(Context context, Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            return m11786new(context, uri);
        }
        if (pathSegments.size() == 1) {
            return m11784for(uri);
        }
        throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull Uri uri, @NonNull f81 f81Var) {
        return uri.getScheme().equals("android.resource");
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<Drawable> decode(@NonNull Uri uri, int i, int i2, @NonNull f81 f81Var) {
        Context contextM11785if = m11785if(uri, uri.getAuthority());
        return Cdo.m11781if(c30.m727if(this.f10194do, contextM11785if, m11787try(contextM11785if, uri)));
    }
}

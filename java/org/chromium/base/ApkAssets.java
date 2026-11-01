package org.chromium.base;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.support.v4.lo0;
import android.text.TextUtils;
import java.io.IOException;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
/* loaded from: classes3.dex */
public class ApkAssets {

    /* renamed from: do, reason: not valid java name */
    private static final String f32919do = "ApkAssets";

    @CalledByNative
    public static long[] open(String str, String str2) throws IOException {
        AssetFileDescriptor assetFileDescriptorOpenNonAssetFd = null;
        try {
            try {
                Context contextM37273case = Ctry.m37273case();
                if (!TextUtils.isEmpty(str2) && BundleUtils.m36744else(contextM37273case, str2)) {
                    contextM37273case = BundleUtils.m36743do(contextM37273case, str2);
                }
                assetFileDescriptorOpenNonAssetFd = contextM37273case.getAssets().openNonAssetFd(str);
                long[] jArr = {assetFileDescriptorOpenNonAssetFd.getParcelFileDescriptor().detachFd(), assetFileDescriptorOpenNonAssetFd.getStartOffset(), assetFileDescriptorOpenNonAssetFd.getLength()};
                try {
                    assetFileDescriptorOpenNonAssetFd.close();
                } catch (IOException unused) {
                }
                return jArr;
            } catch (IOException e) {
                if (!e.getMessage().equals("") && !e.getMessage().equals(str)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error while loading asset ");
                    sb.append(str);
                    sb.append(": ");
                    sb.append(e);
                }
                long[] jArr2 = {-1, -1, -1};
                if (assetFileDescriptorOpenNonAssetFd != null) {
                    try {
                        assetFileDescriptorOpenNonAssetFd.close();
                    } catch (IOException unused2) {
                    }
                }
                return jArr2;
            }
        } catch (Throwable th) {
            if (assetFileDescriptorOpenNonAssetFd != null) {
                try {
                    assetFileDescriptorOpenNonAssetFd.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }
}

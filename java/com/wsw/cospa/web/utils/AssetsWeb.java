package com.wsw.cospa.web.utils;

import android.content.res.AssetManager;
import android.text.TextUtils;
import com.wsw.cospa.CartoonApplication;
import fi.iki.elonen.NanoHTTPD;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class AssetsWeb {
    private AssetManager assetManager;
    private String rootPath;

    public AssetsWeb(String str) {
        this.rootPath = "web";
        if (!TextUtils.isEmpty(str)) {
            this.rootPath = str;
        }
        this.assetManager = CartoonApplication.m24693try().getAssets();
    }

    private String getMimeType(String str) {
        String strSubstring = str.substring(str.lastIndexOf("."));
        return (strSubstring.equalsIgnoreCase(".html") || strSubstring.equalsIgnoreCase(".htm")) ? NanoHTTPD.MIME_HTML : strSubstring.equalsIgnoreCase(".js") ? "text/javascript" : strSubstring.equalsIgnoreCase(".css") ? "text/css" : strSubstring.equalsIgnoreCase(".ico") ? "image/x-icon" : NanoHTTPD.MIME_HTML;
    }

    public NanoHTTPD.Response getResponse(String str) throws IOException {
        String strReplaceAll = (this.rootPath + str).replaceAll("/+", File.separator);
        return NanoHTTPD.newChunkedResponse(NanoHTTPD.Response.Cfor.OK, getMimeType(strReplaceAll), this.assetManager.open(strReplaceAll));
    }
}

package com.wsw.cospa.web;

import com.google.gson.Gson;
import com.wsw.cospa.bean.ComicSourceBean;
import fi.iki.elonen.NanoHTTPD;
import java.util.List;

/* loaded from: classes2.dex */
public class ShareServer extends NanoHTTPD {
    private Callback callback;

    public interface Callback {
        List<ComicSourceBean> getSources();
    }

    public ShareServer(int i, Callback callback) {
        super(i);
        this.callback = callback;
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession iHTTPSession) {
        return NanoHTTPD.newFixedLengthResponse(new Gson().toJson(this.callback.getSources()));
    }
}

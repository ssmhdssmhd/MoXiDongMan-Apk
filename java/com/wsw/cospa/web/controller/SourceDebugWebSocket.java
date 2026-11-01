package com.wsw.cospa.web.controller;

import android.support.v4.bz1;
import android.support.v4.cq;
import android.support.v4.fp1;
import android.support.v4.l22;
import android.support.v4.p42;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.hwangjr.rxbus.RxBus;
import com.hwangjr.rxbus.annotation.Subscribe;
import com.hwangjr.rxbus.annotation.Tag;
import com.hwangjr.rxbus.thread.EventThread;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.model.Debug;
import fi.iki.elonen.Cdo;
import fi.iki.elonen.NanoHTTPD;
import io.reactivex.Cnew;
import io.reactivex.disposables.Disposable;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class SourceDebugWebSocket extends Cdo.Cfor {
    public static Type MAP_STRING = new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.web.controller.SourceDebugWebSocket.1
    }.getType();
    private cq compositeDisposable;

    public SourceDebugWebSocket(NanoHTTPD.IHTTPSession iHTTPSession) {
        super(iHTTPSession);
    }

    @Override // fi.iki.elonen.Cdo.Cfor
    public void onClose(Cdo.Ctry.EnumC0239do enumC0239do, String str, boolean z) {
        RxBus.get().unregister(this);
        this.compositeDisposable.dispose();
        Debug.f22270for = null;
    }

    @Override // fi.iki.elonen.Cdo.Cfor
    public void onException(IOException iOException) {
        Debug.f22270for = null;
    }

    @Override // fi.iki.elonen.Cdo.Cfor
    public void onMessage(Cdo.Ctry ctry) {
        if (l22.m4570public(ctry.m27620else())) {
            Map map = (Map) new Gson().fromJson(ctry.m27620else(), MAP_STRING);
            String str = (String) map.get(p42.f4845if);
            String str2 = (String) map.get("key");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Debug.m26280final(str, str2, this.compositeDisposable, null);
                return;
            }
            try {
                send(CartoonApplication.m24693try().getString(R.string.arg_res_0x7f11003a));
                close(Cdo.Ctry.EnumC0239do.NormalClosure, "调试结束", false);
            } catch (IOException unused) {
            }
        }
    }

    @Override // fi.iki.elonen.Cdo.Cfor
    public void onOpen() {
        RxBus.get().register(this);
        this.compositeDisposable = new cq();
        Cnew.interval(10L, 10L, TimeUnit.SECONDS).observeOn(io.reactivex.schedulers.Cdo.m29772new()).subscribe(new bz1<Long>() { // from class: com.wsw.cospa.web.controller.SourceDebugWebSocket.2
            @Override // android.support.v4.bz1, io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                SourceDebugWebSocket.this.compositeDisposable.add(disposable);
            }

            @Override // io.reactivex.Observer
            public void onNext(Long l) {
                try {
                    SourceDebugWebSocket.this.ping(new byte[]{l.byteValue()});
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // fi.iki.elonen.Cdo.Cfor
    public void onPong(Cdo.Ctry ctry) {
    }

    @Subscribe(tags = {@Tag(fp1.f1933extends)}, thread = EventThread.EXECUTOR)
    public void printDebugLog(String str) {
        try {
            send(str);
            if (str.equals("finish")) {
                close(Cdo.Ctry.EnumC0239do.NormalClosure, "调试结束", false);
                Debug.f22270for = null;
            }
        } catch (IOException unused) {
            Debug.f22270for = null;
        }
    }
}

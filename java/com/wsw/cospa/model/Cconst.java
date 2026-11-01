package com.wsw.cospa.model;

import android.support.v4.wq;
import android.support.v4.y8;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.model.Cconst;
import com.wsw.cospa.utils.Cwhile;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeUrl;
import com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import retrofit2.Response;

/* renamed from: com.wsw.cospa.model.const, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cconst extends com.wsw.cospa.model.impl.Cif implements IStationBookModel {

    /* renamed from: break, reason: not valid java name */
    private AnalyzeUrl f22313break;

    /* renamed from: case, reason: not valid java name */
    private String f22314case;

    /* renamed from: else, reason: not valid java name */
    private ComicSourceBean f22315else;

    /* renamed from: goto, reason: not valid java name */
    private Map<String, String> f22316goto = AnalyzeHeaders.getMap(null);

    /* renamed from: this, reason: not valid java name */
    private Ctry f22317this;

    /* renamed from: try, reason: not valid java name */
    private String f22318try;

    /* renamed from: com.wsw.cospa.model.const$do, reason: invalid class name */
    public class Cdo extends TypeToken<Map<String, String>> {
        public Cdo() {
        }
    }

    /* renamed from: com.wsw.cospa.model.const$for, reason: invalid class name */
    public class Cfor extends TypeToken<Map<String, String>> {
        public Cfor() {
        }
    }

    /* renamed from: com.wsw.cospa.model.const$if, reason: invalid class name */
    public class Cif extends TypeToken<Map<String, String>> {
        public Cif() {
        }
    }

    /* renamed from: com.wsw.cospa.model.const$new, reason: invalid class name */
    public class Cnew extends TypeToken<Map<String, String>> {
        public Cnew() {
        }
    }

    private Cconst(String str) {
        this.f22318try = str;
        try {
            this.f22314case = new URL(str).getHost();
        } catch (MalformedURLException e) {
            e.printStackTrace();
            this.f22314case = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void A(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource D(Cgoto cgoto, Response response) throws Exception {
        return cgoto.m26402if(response, this.f22313break.getVariableMap(), this.f22313break.getHeaderMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    public static Cconst g(String str) {
        return new Cconst(str);
    }

    private Boolean h() {
        if (this.f22315else != null) {
            return Boolean.TRUE;
        }
        ComicSourceBean comicSourceBeanM27177goto = Cwhile.m27177goto(this.f22318try);
        if (comicSourceBeanM27177goto == null) {
            return Boolean.FALSE;
        }
        this.f22315else = comicSourceBeanM27177goto;
        this.f22314case = comicSourceBeanM27177goto.getBookSourceName();
        this.f22316goto = AnalyzeHeaders.getMap(this.f22315else);
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Response response, ComicSourceBean comicSourceBean, ObservableEmitter observableEmitter) throws Exception {
        okhttp3.Response responseNetworkResponse = response.raw().networkResponse();
        String string = responseNetworkResponse != null ? responseNetworkResponse.request().url().toString() : response.raw().request().url().toString();
        if (TextUtils.isEmpty((CharSequence) response.body())) {
            observableEmitter.onNext(Boolean.FALSE);
            observableEmitter.onComplete();
        }
        new ArrayList();
        AnalyzeRule analyzeRule = new AnalyzeRule();
        Map<String, List<String>> multimap = response.headers().toMultimap();
        Gson gsonCreate = new GsonBuilder().disableHtmlEscaping().create();
        analyzeRule.setContent(gsonCreate.toJson(multimap), response.body(), string);
        String string2 = analyzeRule.getString(comicSourceBean.getLoginUrlResult(), false);
        HashMap map = new HashMap();
        for (String str : string2.split("\n")) {
            map.put(str.split("::")[0], str.split("::")[1]);
        }
        CookieBean cookieBeanLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3142this().load(comicSourceBean.getBookSourceUrl());
        if (cookieBeanLoad != null) {
            cookieBeanLoad.setVariable(map);
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3142this().insertOrReplace(cookieBeanLoad);
        } else {
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3142this().insertOrReplace(new CookieBean(comicSourceBean.getBookSourceUrl(), gsonCreate.toJson(map)));
        }
        observableEmitter.onNext(Boolean.TRUE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ObservableSource j(final ComicSourceBean comicSourceBean, final Response response) throws Exception {
        return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.jy
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cconst.i(response, comicSourceBean, observableEmitter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(Boolean.FALSE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(Boolean.FALSE);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ArrayList());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource p(Cgoto cgoto, Response response) throws Exception {
        return cgoto.m26402if(response, this.f22313break.getVariableMap(), this.f22313break.getHeaderMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(new ComicContentBean());
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource r(Response response) throws Exception {
        return m26443public(response, this.f22318try, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource s(ChapterListBean chapterListBean, Response response) throws Exception {
        String json = new GsonBuilder().disableHtmlEscaping().create().toJson(response.headers().toMultimap());
        Ctry ctryM26489case = Ctry.m26489case(this.f22318try, this.f22315else);
        this.f22317this = ctryM26489case;
        return ctryM26489case.m26494for(json, (String) response.body(), chapterListBean, this.f22316goto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource t(Response response) throws Exception {
        return m26443public(response, this.f22318try, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource u(Ccase ccase, ComicShelfBean comicShelfBean, Response response) throws Exception {
        if (response != null) {
            y8.m9768for().m9771new(this.f22313break.getUrl() + this.f22313break.getQueryMap() + this.f22313break.getHeaderMap() + this.f22313break.getBody(), response);
        }
        return ccase.m26339if(new GsonBuilder().disableHtmlEscaping().create().toJson(response.headers().toMultimap()), (String) response.body(), comicShelfBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(ComicShelfBean comicShelfBean, ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onError(new Throwable(String.format("%s没有找到图源配置", comicShelfBean.getComicInfoBean().getName())));
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(Response response, ObservableEmitter observableEmitter) throws Exception {
        y8.m9768for().m9769do(this.f22313break.getUrl() + this.f22313break.getQueryMap() + this.f22313break.getHeaderMap() + this.f22313break.getBody());
        m26444return(response, this.f22318try, true);
        observableEmitter.onNext(response);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource x(com.wsw.cospa.model.Cnew cnew, ComicShelfBean comicShelfBean, Object obj) throws Exception {
        Response response = (Response) obj;
        return cnew.m26455for(new GsonBuilder().disableHtmlEscaping().create().toJson(response.headers().toMultimap()), (String) response.body(), comicShelfBean, this.f22316goto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource y(Response response) throws Exception {
        return m26443public(response, this.f22318try, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ObservableSource z(com.wsw.cospa.model.Cnew cnew, ComicShelfBean comicShelfBean, Response response) throws Exception {
        return cnew.m26455for(new GsonBuilder().disableHtmlEscaping().create().toJson(response.headers().toMultimap()), (String) response.body(), comicShelfBean, this.f22316goto);
    }

    @Override // com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel
    public io.reactivex.Cnew<Boolean> AppSourcelogin(final ComicSourceBean comicSourceBean) {
        try {
            AnalyzeUrl analyzeUrl = new AnalyzeUrl(comicSourceBean.getLoginUrl(), "", null, this.f22316goto);
            this.f22313break = analyzeUrl;
            return analyzeUrl.getHost() == null ? io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ly
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.l(observableEmitter);
                }
            }) : m26439catch(this.f22313break).flatMap(new Function() { // from class: android.support.v4.cy
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return Cconst.j(comicSourceBean, (Response) obj);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.my
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.k(observableEmitter);
                }
            });
        }
    }

    public void f() {
        Ctry ctry = this.f22317this;
        if (ctry != null) {
            ctry.m26495try();
            this.f22317this = null;
        }
        this.f22313break = null;
    }

    @Override // com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel
    public io.reactivex.Cnew<List<SearchComicBean>> findBook(String str, int i, Map<String, String> map, String str2) {
        if (!h().booleanValue() || TextUtils.isEmpty(this.f22315else.getRuleSearchUrl())) {
            return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.zx
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.m(observableEmitter);
                }
            });
        }
        final Cgoto cgoto = new Cgoto(this.f22318try, this.f22314case, this.f22315else);
        try {
            if (this.f22316goto != null && (map == null || !map.containsKey(wq.m0))) {
                String json = new GsonBuilder().disableHtmlEscaping().create().toJson(this.f22316goto);
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put(wq.m0, json);
            }
            Map<String, String> map2 = map;
            if (i == 1) {
                this.f22313break = new AnalyzeUrl(str, "", Integer.valueOf(i), this.f22316goto, map2);
            } else if (str2 != null && !str2.trim().isEmpty()) {
                this.f22313break = new AnalyzeUrl(str2, "", Integer.valueOf(i), this.f22316goto, map2);
            } else {
                if (!str.contains("searchPage")) {
                    return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.by
                        @Override // io.reactivex.ObservableOnSubscribe
                        public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                            Cconst.n(observableEmitter);
                        }
                    });
                }
                this.f22313break = new AnalyzeUrl(str, "", Integer.valueOf(i), this.f22316goto, map2);
            }
            return this.f22313break.getHost() == null ? io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.py
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.o(observableEmitter);
                }
            }) : m26439catch(this.f22313break).flatMap(new Function() { // from class: com.wsw.cospa.model.class
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f22311do.p(cgoto, (Response) obj);
                }
            });
        } catch (Exception e) {
            return io.reactivex.Cnew.error(new Throwable(String.format("%s错误:%s", str, e.getLocalizedMessage())));
        }
    }

    @Override // com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel
    public io.reactivex.Cnew<ComicContentBean> getBookContent(final ChapterListBean chapterListBean) {
        if (!h().booleanValue()) {
            return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.qy
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.q(observableEmitter);
                }
            });
        }
        try {
            String variable = chapterListBean.getVariable();
            if (!TextUtils.isEmpty(variable)) {
                Map map = (Map) new Gson().fromJson(variable, new Cfor().getType());
                for (String str : map.keySet()) {
                    String str2 = (String) map.get(str);
                    if (str.equals(wq.n0)) {
                        Map map2 = (Map) new Gson().fromJson(str2, new Cnew().getType());
                        Objects.requireNonNull(map2);
                        for (String str3 : map2.keySet()) {
                            this.f22316goto.put(str3, (String) map2.get(str3));
                        }
                    }
                }
            }
            AnalyzeUrl analyzeUrl = new AnalyzeUrl(chapterListBean.getDurChapterUrl(), null, null, this.f22316goto);
            this.f22313break = analyzeUrl;
            return m26439catch(analyzeUrl).flatMap(new Function() { // from class: android.support.v4.dy
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f1159do.r((Response) obj);
                }
            }).flatMap(new Function() { // from class: android.support.v4.gy
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f2268do.s(chapterListBean, (Response) obj);
                }
            });
        } catch (Exception e) {
            return io.reactivex.Cnew.error(new Throwable(String.format("url错误:%s", e.getMessage())));
        }
    }

    @Override // com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel
    public io.reactivex.Cnew<ComicShelfBean> getBookInfo(final ComicShelfBean comicShelfBean) {
        if (!h().booleanValue()) {
            return io.reactivex.Cnew.error(new Throwable(String.format("无法找到源%s", this.f22318try)));
        }
        final Ccase ccase = new Ccase(this.f22318try, this.f22314case, this.f22315else);
        try {
            Map<String, String> variableMap = comicShelfBean.getVariableMap();
            if (variableMap != null) {
                for (String str : variableMap.keySet()) {
                    String str2 = variableMap.get(str);
                    if (str.equals(wq.n0)) {
                        Map map = (Map) new Gson().fromJson(str2, new Cdo().getType());
                        Objects.requireNonNull(map);
                        for (String str3 : map.keySet()) {
                            this.f22316goto.put(str3, (String) map.get(str3));
                        }
                    }
                }
            }
            AnalyzeUrl analyzeUrl = new AnalyzeUrl(comicShelfBean.getNoteUrl(), null, null, this.f22316goto);
            this.f22313break = analyzeUrl;
            return m26439catch(analyzeUrl).flatMap(new Function() { // from class: android.support.v4.ey
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f1621do.t((Response) obj);
                }
            }).flatMap(new Function() { // from class: android.support.v4.hy
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f2557do.u(ccase, comicShelfBean, (Response) obj);
                }
            });
        } catch (Exception unused) {
            return io.reactivex.Cnew.error(new Throwable(String.format("url错误:%s", comicShelfBean.getNoteUrl())));
        }
    }

    @Override // com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel
    public io.reactivex.Cnew<List<ChapterListBean>> getChapterList(final ComicShelfBean comicShelfBean) {
        if (!h().booleanValue()) {
            return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.yx
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.v(comicShelfBean, observableEmitter);
                }
            });
        }
        final com.wsw.cospa.model.Cnew cnew = new com.wsw.cospa.model.Cnew(this.f22318try, this.f22315else);
        try {
            Map<String, String> variableMap = comicShelfBean.getVariableMap();
            if (variableMap != null) {
                for (String str : variableMap.keySet()) {
                    String str2 = variableMap.get(str);
                    if (str.equals(wq.n0)) {
                        Map map = (Map) new Gson().fromJson(str2, new Cif().getType());
                        Objects.requireNonNull(map);
                        for (String str3 : map.keySet()) {
                            this.f22316goto.put(str3, (String) map.get(str3));
                        }
                    }
                }
            }
            this.f22313break = new AnalyzeUrl(comicShelfBean.getComicInfoBean().getChapterUrl(), null, null, this.f22316goto);
            final Response response = (Response) y8.m9768for().m9770if(this.f22313break.getUrl() + this.f22313break.getQueryMap() + this.f22313break.getHeaderMap() + this.f22313break.getBody());
            return response != null ? io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.iy
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f2932do.w(response, observableEmitter);
                }
            }).flatMap(new Function() { // from class: com.wsw.cospa.model.break
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f22303do.x(cnew, comicShelfBean, obj);
                }
            }) : m26439catch(this.f22313break).flatMap(new Function() { // from class: android.support.v4.fy
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f2014do.y((Response) obj);
                }
            }).flatMap(new Function() { // from class: com.wsw.cospa.model.this
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f22408do.z(cnew, comicShelfBean, (Response) obj);
                }
            });
        } catch (Exception e) {
            return io.reactivex.Cnew.error(new Throwable(String.format("url错误:%s", e.getMessage())));
        }
    }

    @Override // com.wsw.cospa.utils.analyzeUrl.impl.IStationBookModel
    public io.reactivex.Cnew<List<SearchComicBean>> searchBook(String str, int i, Map<String, String> map, String str2) {
        if (!h().booleanValue() || TextUtils.isEmpty(this.f22315else.getRuleSearchUrl())) {
            return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ay
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.A(observableEmitter);
                }
            });
        }
        final Cgoto cgoto = new Cgoto(this.f22318try, this.f22314case, this.f22315else);
        try {
            if (this.f22316goto != null && (map == null || !map.containsKey(wq.m0))) {
                String json = new GsonBuilder().disableHtmlEscaping().create().toJson(this.f22316goto);
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put(wq.m0, json);
            }
            Map<String, String> map2 = map;
            if (i == 1) {
                this.f22313break = new AnalyzeUrl(this.f22315else.getRuleSearchUrl(), str, Integer.valueOf(i), this.f22316goto, map2);
            } else if (str2 != null && !str2.trim().isEmpty()) {
                this.f22313break = new AnalyzeUrl(str2, str, Integer.valueOf(i), this.f22316goto, map2);
            } else {
                if (!this.f22315else.getRuleSearchUrl().contains("searchPage")) {
                    return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.oy
                        @Override // io.reactivex.ObservableOnSubscribe
                        public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                            Cconst.B(observableEmitter);
                        }
                    });
                }
                this.f22313break = new AnalyzeUrl(this.f22315else.getRuleSearchUrl(), str, Integer.valueOf(i), this.f22316goto, map2);
            }
            return this.f22313break.getHost() == null ? io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ky
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.C(observableEmitter);
                }
            }) : m26439catch(this.f22313break).flatMap(new Function() { // from class: com.wsw.cospa.model.catch
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f22309do.D(cgoto, (Response) obj);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            return io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ny
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    Cconst.E(observableEmitter);
                }
            });
        }
    }
}

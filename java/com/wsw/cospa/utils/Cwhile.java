package com.wsw.cospa.utils;

import android.app.Activity;
import android.support.v4.b0;
import android.support.v4.l22;
import android.support.v4.v72;
import android.text.TextUtils;
import com.wsw.cospa.activity.SourceLoginActivity;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.Cdo;
import com.wsw.cospa.utils.Cwhile;
import com.wsw.cospa.utils.DialogTool;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: com.wsw.cospa.utils.while, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cwhile {

    /* renamed from: do, reason: not valid java name */
    public static Pattern f22768do = Pattern.compile("^(.*?第([\\d零〇一二两三四五六七八九十百千万０-９\\s]+)[话章节篇回集])[、，。\u3000：:.\\s]*");

    /* renamed from: break, reason: not valid java name */
    public static List<ComicSourceBean> m27169break() {
        return m27179new();
    }

    /* renamed from: case, reason: not valid java name */
    public static ComicShelfBean m27170case(SearchComicBean searchComicBean) {
        if (searchComicBean == null) {
            return null;
        }
        ComicShelfBean comicShelfBean = new ComicShelfBean();
        comicShelfBean.setTag(searchComicBean.getTag());
        comicShelfBean.setNoteUrl(searchComicBean.getNoteUrl());
        comicShelfBean.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        comicShelfBean.setDurChapter(0);
        comicShelfBean.setDurChapterPage(0);
        comicShelfBean.setVariable(searchComicBean.getVariable());
        ComicInfoBean comicInfoBean = new ComicInfoBean();
        comicInfoBean.setNoteUrl(searchComicBean.getNoteUrl());
        comicInfoBean.setAuthor(searchComicBean.getAuthor());
        comicInfoBean.setKind(searchComicBean.getKind());
        comicInfoBean.setCoverUrl(searchComicBean.getCoverUrl());
        comicInfoBean.setName(searchComicBean.getName());
        comicInfoBean.setTag(searchComicBean.getTag());
        comicInfoBean.setOrigin(searchComicBean.getOrigin());
        comicInfoBean.setIntroduce(searchComicBean.getIntroduce());
        comicInfoBean.setChapterUrl(searchComicBean.getChapterUrl());
        comicShelfBean.setComicInfoBean(comicInfoBean);
        return comicShelfBean;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m27171catch(String str) {
        if (!TextUtils.isEmpty(str) && !str.matches("第.*?卷.*?第.*[章节回]")) {
            Matcher matcher = f22768do.matcher(str);
            if (matcher.find()) {
                return l22.m4560extends(matcher.group(2));
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ void m27172class(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            v72.m8769if("登陆成功!");
        } else {
            v72.m8769if("登陆失败!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m27173const(ComicSourceBean comicSourceBean, String str, String str2) {
        comicSourceBean.setLoginUrl(comicSourceBean.getLoginUrl().replace("loginUser", str).replace("loginPswd", str2));
        com.wsw.cospa.model.Cwhile.m26502catch().m26516throw(comicSourceBean).compose(b0.f302do).subscribe(new Consumer() { // from class: android.support.v4.fo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                Cwhile.m27172class((Boolean) obj);
            }
        });
    }

    /* renamed from: else, reason: not valid java name */
    public static ComicSourceBean m27175else(String str) {
        return (ComicSourceBean) Cpackage.m27021if(str, ComicSourceBean.class);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m27176for(Activity activity, final ComicSourceBean comicSourceBean) {
        if (TextUtils.isEmpty(comicSourceBean.getLoginUrl())) {
            v72.m8769if("当前源没有配置登陆地址!");
        } else if (comicSourceBean.getLoginUrl().contains("loginUser") && comicSourceBean.getLoginUrl().contains("loginPswd")) {
            DialogTool.u(activity, new DialogTool.Cnew("登陆漫画源", null, null), new DialogTool.Ctry("确认", "取消"), new DialogTool.LoginDialogOptcb() { // from class: android.support.v4.eo
                @Override // com.wsw.cospa.utils.DialogTool.LoginDialogOptcb
                public final void onConfirm(String str, String str2) {
                    Cwhile.m27173const(comicSourceBean, str, str2);
                }
            });
        } else {
            SourceLoginActivity.m25341public(activity, comicSourceBean);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static ComicSourceBean m27177goto(String str) {
        return Cdo.m26368protected(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static List<ComicSourceBean> m27179new() {
        return DatabaseHelper.m26016switch().m26022class();
    }

    /* renamed from: this, reason: not valid java name */
    public static SearchComicBean m27180this(ComicShelfBean comicShelfBean) {
        if (comicShelfBean == null) {
            return null;
        }
        SearchComicBean searchComicBean = new SearchComicBean();
        ComicInfoBean comicInfoBean = comicShelfBean.getComicInfoBean();
        searchComicBean.setTag(comicShelfBean.getTag());
        searchComicBean.setAuthor(comicInfoBean.getAuthor());
        return searchComicBean;
    }

    /* renamed from: try, reason: not valid java name */
    public static List<ComicSourceBean> m27181try(String str) {
        return Cpackage.m27020for(str, ComicSourceBean.class);
    }
}

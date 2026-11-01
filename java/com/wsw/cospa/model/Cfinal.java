package com.wsw.cospa.model;

import android.content.ContentResolver;
import android.support.v4.sz0;
import android.util.Pair;
import com.umeng.analytics.pro.ak;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.model.Cfinal;
import com.wsw.cospa.utils.Creturn;
import com.wsw.cospa.utils.Cswitch;
import com.wsw.cospa.utils.DocumentFile;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.wsw.cospa.model.final, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfinal {

    /* renamed from: break, reason: not valid java name */
    private static final String f22330break = "path";

    /* renamed from: case, reason: not valid java name */
    private static final String f22331case = "source";

    /* renamed from: catch, reason: not valid java name */
    private static final String f22332catch = "title";

    /* renamed from: class, reason: not valid java name */
    private static final String f22333class = "download";

    /* renamed from: const, reason: not valid java name */
    private static final String f22334const = "index.cdif";

    /* renamed from: do, reason: not valid java name */
    private static final String f22335do = "version";

    /* renamed from: else, reason: not valid java name */
    private static final String f22336else = "cid";

    /* renamed from: final, reason: not valid java name */
    private static final String f22337final = ".nomedia";

    /* renamed from: for, reason: not valid java name */
    private static final String f22338for = "comic";

    /* renamed from: goto, reason: not valid java name */
    private static final String f22339goto = "title";

    /* renamed from: if, reason: not valid java name */
    private static final String f22340if = "type";

    /* renamed from: new, reason: not valid java name */
    private static final String f22341new = "chapter";

    /* renamed from: this, reason: not valid java name */
    private static final String f22342this = "cover";

    /* renamed from: try, reason: not valid java name */
    private static final String f22343try = "list";

    /* renamed from: com.wsw.cospa.model.final$do, reason: invalid class name */
    public class Cdo implements ObservableOnSubscribe<List<ComicContentImgBean>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DocumentFile f22344do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f22345for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ComicInfoBean f22346if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ String f22347new;

        /* renamed from: com.wsw.cospa.model.final$do$do, reason: invalid class name and collision with other inner class name */
        public class C0223do implements DocumentFile.DocumentFileFilter {
            public C0223do() {
            }

            @Override // com.wsw.cospa.utils.DocumentFile.DocumentFileFilter
            public boolean call(DocumentFile documentFile) {
                return !documentFile.mo26653catch().endsWith("cdif");
            }
        }

        /* renamed from: com.wsw.cospa.model.final$do$if, reason: invalid class name */
        public class Cif implements Comparator<DocumentFile> {
            public Cif() {
            }

            @Override // java.util.Comparator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public int compare(DocumentFile documentFile, DocumentFile documentFile2) {
                return documentFile.mo26653catch().compareTo(documentFile2.mo26653catch());
            }
        }

        public Cdo(DocumentFile documentFile, ComicInfoBean comicInfoBean, ChapterListBean chapterListBean, String str) {
            this.f22344do = documentFile;
            this.f22346if = comicInfoBean;
            this.f22345for = chapterListBean;
            this.f22347new = str;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<List<ComicContentImgBean>> observableEmitter) throws Exception {
            List<ComicContentImgBean> listM26464else = Csuper.m26464else(Cfinal.m26393this(this.f22344do, this.f22346if, this.f22345for, this.f22347new).mo26662native(new C0223do(), new Cif()), this.f22345for.getNoteUrl());
            if (listM26464else.size() == 0) {
                observableEmitter.onError(new Exception());
            } else {
                observableEmitter.onNext(listM26464else);
                observableEmitter.onComplete();
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static DocumentFile m26376break(DocumentFile documentFile, ComicInfoBean comicInfoBean, String str) {
        DocumentFile documentFileM27089for = Cswitch.m27089for(documentFile, f22333class, String.valueOf(comicInfoBean.getOrigin()), comicInfoBean.getNoteUrl());
        return documentFileM27089for == null ? Cswitch.m27089for(documentFile, f22333class, str, comicInfoBean.getName()) : documentFileM27089for;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m26377case(DocumentFile documentFile, ComicInfoBean comicInfoBean, String str) {
        DocumentFile documentFileM26376break = m26376break(documentFile, comicInfoBean, str);
        if (documentFileM26376break != null) {
            documentFileM26376break.mo26671try();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static List<String> m26378catch(ContentResolver contentResolver, DocumentFile documentFile, ComicInfoBean comicInfoBean, String str) {
        DocumentFile documentFileMo26657else;
        String strM27090goto;
        DocumentFile documentFileM26376break = m26376break(documentFile, comicInfoBean, str);
        if (documentFileM26376break == null || (documentFileMo26657else = documentFileM26376break.mo26657else(f22334const)) == null || !m26392super(contentResolver, documentFileMo26657else) || (strM27090goto = Cswitch.m27090goto(contentResolver, documentFileMo26657else)) == null) {
            return null;
        }
        try {
            return m26387import(strM27090goto.substring(5));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static String m26379class(ContentResolver contentResolver, DocumentFile documentFile) {
        String strM27090goto;
        if (!documentFile.mo26667super()) {
            return null;
        }
        DocumentFile documentFileMo26657else = documentFile.mo26657else(f22334const);
        if (!m26392super(contentResolver, documentFileMo26657else) || (strM27090goto = Cswitch.m27090goto(contentResolver, documentFileMo26657else)) == null) {
            return null;
        }
        return strM27090goto.substring(5);
    }

    /* renamed from: const, reason: not valid java name */
    private static String m26380const(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", "1");
        jSONObject.put("type", f22341new);
        jSONObject.put(sz0.f6342break, str);
        jSONObject.put(f22330break, str2);
        return jSONObject.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static void m26382else(DocumentFile documentFile, ComicInfoBean comicInfoBean, List<ChapterListBean> list, String str) {
        Iterator<ChapterListBean> it = list.iterator();
        while (it.hasNext()) {
            DocumentFile documentFileM26393this = m26393this(documentFile, comicInfoBean, it.next(), str);
            if (documentFileM26393this != null) {
                documentFileM26393this.mo26671try();
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static String m26383final(List<ChapterListBean> list, ComicInfoBean comicInfoBean) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", "1");
        jSONObject.put("type", f22338for);
        jSONObject.put(f22331case, comicInfoBean.getOrigin());
        jSONObject.put(f22336else, comicInfoBean.getNoteUrl());
        jSONObject.put(sz0.f6342break, comicInfoBean.getName());
        jSONObject.put(f22342this, comicInfoBean.getCoverUrl());
        JSONArray jSONArray = new JSONArray();
        for (ChapterListBean chapterListBean : list) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(sz0.f6342break, chapterListBean.getDurChapterName());
            jSONObject2.put(f22330break, chapterListBean.getDurChapterUrl());
            jSONArray.put(jSONObject2);
        }
        jSONObject.put(f22343try, jSONArray);
        return jSONObject.toString();
    }

    /* renamed from: for, reason: not valid java name */
    private static Task m26384for(ContentResolver contentResolver, DocumentFile documentFile) throws JSONException {
        int iM27091if;
        String strM26379class = m26379class(contentResolver, documentFile);
        if (strM26379class == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strM26379class);
            if (!f22341new.equals(jSONObject.get("type")) || (iM27091if = Cswitch.m27091if(documentFile, "cdif")) == 0) {
                return null;
            }
            String string = jSONObject.getString(f22330break);
            return new Task(null, string, string, jSONObject.getString(sz0.f6342break), iM27091if, iM27091if);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m26385goto(DocumentFile documentFile, ComicInfoBean comicInfoBean, List<ChapterListBean> list, String str) {
        Iterator<ChapterListBean> it = list.iterator();
        while (it.hasNext()) {
            DocumentFile documentFileM26393this = m26393this(documentFile, comicInfoBean, it.next(), str);
            if (documentFileM26393this != null) {
                documentFileM26393this.mo26671try();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static ComicInfoBean m26386if(ContentResolver contentResolver, DocumentFile documentFile) throws JSONException {
        String strM26379class = m26379class(contentResolver, documentFile);
        if (strM26379class != null) {
            try {
                JSONObject jSONObject = new JSONObject(strM26379class);
                if (!f22338for.equals(jSONObject.get("type"))) {
                    return null;
                }
                jSONObject.getInt(f22331case);
                jSONObject.getString(sz0.f6342break);
                jSONObject.getString(f22336else);
                jSONObject.getString(f22342this);
                return new ComicInfoBean();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    private static List<String> m26387import(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String str2 = f22343try;
        if (!jSONObject.has(f22343try)) {
            str2 = "c";
        }
        JSONArray jSONArray = jSONObject.getJSONArray(str2);
        int length = jSONArray.length();
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i != length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String str3 = f22330break;
            if (!jSONObject2.has(f22330break)) {
                str3 = ak.ax;
            }
            arrayList.add(jSONObject2.getString(str3));
        }
        return arrayList;
    }

    /* renamed from: native, reason: not valid java name */
    public static Cnew<Pair<ComicInfoBean, List<Task>>> m26388native(final ContentResolver contentResolver, final DocumentFile documentFile) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.k20
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cfinal.m26396while(documentFile, contentResolver, observableEmitter);
            }
        }).subscribeOn(io.reactivex.schedulers.Cdo.m29772new());
    }

    /* renamed from: new, reason: not valid java name */
    private static DocumentFile m26389new(DocumentFile documentFile, ComicInfoBean comicInfoBean) {
        DocumentFile documentFileM27094try = Cswitch.m27094try(Cswitch.m27094try(Cswitch.m27094try(documentFile, f22333class), String.valueOf(comicInfoBean.getOrigin())), comicInfoBean.getName());
        if (documentFileM27094try != null) {
            return Cswitch.m27092new(documentFileM27094try, f22334const);
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public static DocumentFile m26390public(ContentResolver contentResolver, DocumentFile documentFile, Task task) {
        try {
            String strM26380const = m26380const(task.getTitle(), task.getPath());
            DocumentFile documentFileM27094try = Cswitch.m27094try(Cswitch.m27094try(Cswitch.m27094try(Cswitch.m27094try(documentFile, f22333class), String.valueOf(task.getSource())), task.getName()), Creturn.m27044this(task));
            if (documentFileM27094try == null) {
                return null;
            }
            DocumentFile documentFileM27092new = Cswitch.m27092new(documentFileM27094try, f22334const);
            if (documentFileM27092new != null) {
                Cswitch.m27086class(contentResolver, documentFileM27092new, "cimoc".concat(strM26380const));
            }
            return documentFileM27094try;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m26391return(ContentResolver contentResolver, DocumentFile documentFile, List<ChapterListBean> list, ComicInfoBean comicInfoBean) {
        try {
            m26395try(documentFile);
            Cswitch.m27086class(contentResolver, m26389new(documentFile, comicInfoBean), "cimoc".concat(m26383final(list, comicInfoBean)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m26392super(ContentResolver contentResolver, DocumentFile documentFile) {
        if (documentFile != null) {
            return Arrays.equals(Cswitch.m27088else(contentResolver, documentFile, 5), "cimoc".toCharArray());
        }
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    public static DocumentFile m26393this(DocumentFile documentFile, ComicInfoBean comicInfoBean, ChapterListBean chapterListBean, String str) {
        DocumentFile documentFileM27089for = Cswitch.m27089for(documentFile, f22333class, String.valueOf(comicInfoBean.getOrigin()), comicInfoBean.getName(), Creturn.m27041goto(chapterListBean));
        return documentFileM27089for == null ? Cswitch.m27089for(documentFile, f22333class, str, comicInfoBean.getName(), chapterListBean.getDurChapterName()) : documentFileM27089for;
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cnew<List<ComicContentImgBean>> m26394throw(DocumentFile documentFile, ComicInfoBean comicInfoBean, ChapterListBean chapterListBean, String str) {
        return Cnew.create(new Cdo(documentFile, comicInfoBean, chapterListBean, str)).subscribeOn(io.reactivex.schedulers.Cdo.m29772new());
    }

    /* renamed from: try, reason: not valid java name */
    private static void m26395try(DocumentFile documentFile) {
        Cswitch.m27092new(Cswitch.m27094try(documentFile, f22333class), f22337final);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public static /* synthetic */ void m26396while(DocumentFile documentFile, ContentResolver contentResolver, ObservableEmitter observableEmitter) throws Exception {
        documentFile.mo26668switch();
        DocumentFile documentFileM27094try = Cswitch.m27094try(documentFile, f22333class);
        if (documentFileM27094try != null) {
            for (DocumentFile documentFile2 : documentFileM27094try.mo26664public()) {
                if (documentFile2.mo26667super()) {
                    for (DocumentFile documentFile3 : documentFile2.mo26664public()) {
                        ComicInfoBean comicInfoBeanM26386if = m26386if(contentResolver, documentFile3);
                        if (comicInfoBeanM26386if != null) {
                            LinkedList linkedList = new LinkedList();
                            for (DocumentFile documentFile4 : documentFile3.mo26664public()) {
                                Task taskM26384for = m26384for(contentResolver, documentFile4);
                                if (taskM26384for != null) {
                                    linkedList.add(taskM26384for);
                                }
                            }
                            if (!linkedList.isEmpty()) {
                                observableEmitter.onNext(Pair.create(comicInfoBeanM26386if, linkedList));
                            }
                        }
                    }
                }
            }
        }
        observableEmitter.onComplete();
    }
}

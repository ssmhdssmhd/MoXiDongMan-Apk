package android.support.v4;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.chromium.net.Celse;
import org.chromium.net.Cnative;
import org.chromium.net.Cpublic;
import org.chromium.net.Creturn;

/* loaded from: classes3.dex */
public class dd2 extends Celse.Cdo {

    /* renamed from: package, reason: not valid java name */
    private static final String f1000package = "Accept-Encoding";

    /* renamed from: private, reason: not valid java name */
    private static final String f1001private = "dd2";

    /* renamed from: break, reason: not valid java name */
    private final String f1002break;

    /* renamed from: catch, reason: not valid java name */
    private final Creturn.Cif f1003catch;

    /* renamed from: class, reason: not valid java name */
    private final Executor f1004class;

    /* renamed from: const, reason: not valid java name */
    private String f1005const;

    /* renamed from: default, reason: not valid java name */
    private int f1006default;

    /* renamed from: extends, reason: not valid java name */
    private Cnative.Cdo f1007extends;

    /* renamed from: import, reason: not valid java name */
    private Collection<Object> f1010import;

    /* renamed from: native, reason: not valid java name */
    private Cpublic f1011native;

    /* renamed from: public, reason: not valid java name */
    private Executor f1012public;

    /* renamed from: return, reason: not valid java name */
    private boolean f1013return;

    /* renamed from: static, reason: not valid java name */
    private boolean f1014static;

    /* renamed from: super, reason: not valid java name */
    private boolean f1015super;

    /* renamed from: switch, reason: not valid java name */
    private int f1016switch;

    /* renamed from: this, reason: not valid java name */
    private final qs f1017this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f1018throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f1019throws;

    /* renamed from: final, reason: not valid java name */
    private final ArrayList<Pair<String, String>> f1008final = new ArrayList<>();

    /* renamed from: while, reason: not valid java name */
    private int f1020while = 3;

    /* renamed from: finally, reason: not valid java name */
    private int f1009finally = 0;

    public dd2(String str, Creturn.Cif cif, Executor executor, qs qsVar) {
        Objects.requireNonNull(str, "URL is required.");
        Objects.requireNonNull(cif, "Callback is required.");
        Objects.requireNonNull(executor, "Executor is required.");
        Objects.requireNonNull(qsVar, "CronetEngine is required.");
        this.f1002break = str;
        this.f1003catch = cif;
        this.f1004class = executor;
        this.f1017this = qsVar;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1280import(int i) {
        this.f1014static = true;
        this.f1016switch = i;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1281native(int i) {
        this.f1019throws = true;
        this.f1006default = i;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo, org.chromium.net.Creturn.Cdo
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1282new() {
        this.f1015super = true;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1269const() {
        this.f1018throw = true;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo, org.chromium.net.Creturn.Cdo
    /* renamed from: final, reason: not valid java name */
    public Celse.Cdo mo1294try(String str) {
        Objects.requireNonNull(str, "Method is required.");
        this.f1005const = str;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1289super(int i) {
        this.f1009finally = i;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1266case(int i) {
        this.f1020while = i;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1295while(Cnative.Cdo cdo) {
        this.f1007extends = cdo;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1272do(String str, String str2) {
        Objects.requireNonNull(str, "Invalid header name.");
        Objects.requireNonNull(str2, "Invalid header value.");
        if ("Accept-Encoding".equalsIgnoreCase(str)) {
            new Exception();
            return this;
        }
        this.f1008final.add(Pair.create(str, str2));
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1291this(Object obj) {
        Objects.requireNonNull(obj, "Invalid metrics annotation.");
        if (this.f1010import == null) {
            this.f1010import = new ArrayList();
        }
        this.f1010import.add(obj);
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo
    /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1273else(Cpublic cpublic, Executor executor) {
        Objects.requireNonNull(cpublic, "Invalid UploadDataProvider.");
        Objects.requireNonNull(executor, "Invalid UploadDataProvider Executor.");
        if (this.f1005const == null) {
            this.f1005const = "POST";
        }
        this.f1011native = cpublic;
        this.f1012public = executor;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo, org.chromium.net.Creturn.Cdo
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public dd2 mo1279if() {
        this.f1013return = true;
        return this;
    }

    @Override // org.chromium.net.Celse.Cdo, org.chromium.net.Creturn.Cdo
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public cd2 mo1277for() {
        cd2 cd2VarMo6661extends = this.f1017this.mo6661extends(this.f1002break, this.f1003catch, this.f1004class, this.f1020while, this.f1010import, this.f1015super, this.f1018throw, this.f1013return, this.f1014static, this.f1016switch, this.f1019throws, this.f1006default, this.f1007extends, this.f1009finally);
        String str = this.f1005const;
        if (str != null) {
            cd2VarMo6661extends.mo857this(str);
        }
        Iterator<Pair<String, String>> it = this.f1008final.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            cd2VarMo6661extends.mo856else((String) next.first, (String) next.second);
        }
        Cpublic cpublic = this.f1011native;
        if (cpublic != null) {
            cd2VarMo6661extends.mo855break(cpublic, this.f1012public);
        }
        return cd2VarMo6661extends;
    }
}

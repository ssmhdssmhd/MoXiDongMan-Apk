package freemarker.core;

import android.support.v4.k52;
import android.support.v4.yk2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.Cimplements;
import freemarker.core.Cinstanceof;
import freemarker.core.Cprotected;
import freemarker.core.Csynchronized;
import freemarker.core.Ctransient;
import freemarker.core.a;
import freemarker.core.b;
import freemarker.core.c;
import freemarker.core.d;
import freemarker.core.e;
import freemarker.core.f;
import freemarker.core.g;
import freemarker.core.h;
import freemarker.core.h0;
import freemarker.core.i;
import freemarker.core.j;
import freemarker.template.Cdo;
import freemarker.template.Cstatic;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/* renamed from: freemarker.core.return, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Creturn extends h0 implements Cloneable {

    /* renamed from: break, reason: not valid java name */
    public static final Set<String> f24110break = new TreeSet();

    /* renamed from: catch, reason: not valid java name */
    public static final Set<String> f24111catch = new TreeSet();

    /* renamed from: class, reason: not valid java name */
    public static final int f24112class = 285;

    /* renamed from: const, reason: not valid java name */
    public static final HashMap<String, Creturn> f24113const;

    /* renamed from: goto, reason: not valid java name */
    public h0 f24114goto;

    /* renamed from: this, reason: not valid java name */
    public String f24115this;

    static {
        HashMap<String, Creturn> map = new HashMap<>(428, 1.0f);
        f24113const = map;
        o("abs", new c.Cfor());
        p("absolute_template_name", "absoluteTemplateName", new h.Cdo());
        o("ancestors", new b.Cif());
        o("api", new a.Cif());
        o(TypedValues.Custom.S_BOOLEAN, new h.Cif());
        o("byte", new c.Cnew());
        o("c", new a.Cfor());
        p("cap_first", "capFirst", new f.Cfor());
        o("capitalize", new f.Cnew());
        o("ceiling", new c.Ctry());
        o("children", new b.Cfor());
        p("chop_linebreak", "chopLinebreak", new f.Ctry());
        o("contains", new f.Ccase());
        o("date", new a.Cnew(2));
        p("date_if_unknown", "dateIfUnknown", new Cprotected.Cif(2));
        o("datetime", new a.Cnew(3));
        p("datetime_if_unknown", "datetimeIfUnknown", new Cprotected.Cif(3));
        o("default", new Ctransient.Cfor());
        o("double", new c.Ccase());
        p("drop_while", "dropWhile", new e.Ctry());
        p("ends_with", "endsWith", new f.Celse());
        p("ensure_ends_with", "ensureEndsWith", new f.Cgoto());
        p("ensure_starts_with", "ensureStartsWith", new f.Cthis());
        o("esc", new d.Cif());
        o("eval", new h.Cfor());
        o("exists", new Ctransient.Cnew());
        o("filter", new e.Ccase());
        o("first", new e.Celse());
        o(TypedValues.Custom.S_FLOAT, new c.Celse());
        o("floor", new c.Cgoto());
        o("chunk", new e.Cnew());
        o("counter", new Cinstanceof.Cfor());
        p("item_cycle", "itemCycle", new Cinstanceof.Cbreak());
        p("has_api", "hasApi", new a.Ctry());
        p("has_content", "hasContent", new Ctransient.Ctry());
        p("has_next", "hasNext", new Cinstanceof.Cnew());
        o("html", new g.Cif());
        p("if_exists", "ifExists", new Ctransient.Ccase());
        o("index", new Cinstanceof.Ctry());
        p("index_of", "indexOf", new f.Cbreak(false));
        o("int", new c.Cthis());
        o("interpret", new a1());
        p("is_boolean", "isBoolean", new a.Ccase());
        p("is_collection", "isCollection", new a.Celse());
        p("is_collection_ex", "isCollectionEx", new a.Cgoto());
        a.Cthis cthis = new a.Cthis();
        p("is_date", "isDate", cthis);
        p("is_date_like", "isDateLike", cthis);
        p("is_date_only", "isDateOnly", new a.Cbreak(2));
        p("is_even_item", "isEvenItem", new Cinstanceof.Ccase());
        p("is_first", "isFirst", new Cinstanceof.Celse());
        p("is_last", "isLast", new Cinstanceof.Cgoto());
        p("is_unknown_date_like", "isUnknownDateLike", new a.Cbreak(0));
        p("is_datetime", "isDatetime", new a.Cbreak(3));
        p("is_directive", "isDirective", new a.Ccatch());
        p("is_enumerable", "isEnumerable", new a.Cclass());
        p("is_hash_ex", "isHashEx", new a.Cfinal());
        p("is_hash", "isHash", new a.Cconst());
        p("is_infinite", "isInfinite", new c.Cbreak());
        p("is_indexable", "isIndexable", new a.Csuper());
        p("is_macro", "isMacro", new a.Cthrow());
        p("is_markup_output", "isMarkupOutput", new a.Cwhile());
        p("is_method", "isMethod", new a.Cimport());
        p("is_nan", "isNan", new c.Ccatch());
        p("is_node", "isNode", new a.Cnative());
        p("is_number", "isNumber", new a.Cpublic());
        p("is_odd_item", "isOddItem", new Cinstanceof.Cthis());
        p("is_sequence", "isSequence", new a.Creturn());
        p("is_string", "isString", new a.Cstatic());
        p("is_time", "isTime", new a.Cbreak(1));
        p("is_transform", "isTransform", new a.Cswitch());
        p("iso_utc", "isoUtc", new Cprotected.Cnew(null, 6, true));
        p("iso_utc_fz", "isoUtcFZ", new Cprotected.Cnew(Boolean.TRUE, 6, true));
        Boolean bool = Boolean.FALSE;
        p("iso_utc_nz", "isoUtcNZ", new Cprotected.Cnew(bool, 6, true));
        p("iso_utc_ms", "isoUtcMs", new Cprotected.Cnew(null, 7, true));
        p("iso_utc_ms_nz", "isoUtcMsNZ", new Cprotected.Cnew(bool, 7, true));
        p("iso_utc_m", "isoUtcM", new Cprotected.Cnew(null, 5, true));
        p("iso_utc_m_nz", "isoUtcMNZ", new Cprotected.Cnew(bool, 5, true));
        p("iso_utc_h", "isoUtcH", new Cprotected.Cnew(null, 4, true));
        p("iso_utc_h_nz", "isoUtcHNZ", new Cprotected.Cnew(bool, 4, true));
        p("iso_local", "isoLocal", new Cprotected.Cnew(null, 6, false));
        p("iso_local_nz", "isoLocalNZ", new Cprotected.Cnew(bool, 6, false));
        p("iso_local_ms", "isoLocalMs", new Cprotected.Cnew(null, 7, false));
        p("iso_local_ms_nz", "isoLocalMsNZ", new Cprotected.Cnew(bool, 7, false));
        p("iso_local_m", "isoLocalM", new Cprotected.Cnew(null, 5, false));
        p("iso_local_m_nz", "isoLocalMNZ", new Cprotected.Cnew(bool, 5, false));
        p("iso_local_h", "isoLocalH", new Cprotected.Cnew(null, 4, false));
        p("iso_local_h_nz", "isoLocalHNZ", new Cprotected.Cnew(bool, 4, false));
        o("iso", new Cprotected.Cfor(null, 6));
        p("iso_nz", "isoNZ", new Cprotected.Cfor(bool, 6));
        p("iso_ms", "isoMs", new Cprotected.Cfor(null, 7));
        p("iso_ms_nz", "isoMsNZ", new Cprotected.Cfor(bool, 7));
        p("iso_m", "isoM", new Cprotected.Cfor(null, 5));
        p("iso_m_nz", "isoMNZ", new Cprotected.Cfor(bool, 5));
        p("iso_h", "isoH", new Cprotected.Cfor(null, 4));
        p("iso_h_nz", "isoHNZ", new Cprotected.Cfor(bool, 4));
        p("j_string", "jString", new g.Cfor());
        o("join", new e.Cgoto());
        p("js_string", "jsString", new g.Cnew());
        p("json_string", "jsonString", new g.Ctry());
        p("keep_after", "keepAfter", new f.Ccatch());
        p("keep_before", "keepBefore", new f.Cconst());
        p("keep_after_last", "keepAfterLast", new f.Cclass());
        p("keep_before_last", "keepBeforeLast", new f.Cfinal());
        o("keys", new Cimplements.Cdo());
        p("last_index_of", "lastIndexOf", new f.Cbreak(true));
        o("last", new e.Cthis());
        p("left_pad", "leftPad", new f.Cwhile(true));
        o("length", new f.Csuper());
        o("long", new c.Cclass());
        p("lower_abc", "lowerAbc", new c.Cconst());
        p("lower_case", "lowerCase", new f.Cthrow());
        o("map", new e.Cbreak());
        o(k.f23945throw, new a.Cthrows());
        o("new", new e2());
        p("markup_string", "markupString", new Csynchronized.Cdo());
        p("node_name", "nodeName", new b.Ctry());
        p("node_namespace", "nodeNamespace", new b.Ccase());
        p("node_type", "nodeType", new b.Celse());
        p("no_esc", "noEsc", new d.Cfor());
        o("max", new e.Ccatch());
        o("min", new e.Cclass());
        o("number", new h.Cnew());
        p("number_to_date", "numberToDate", new c.Cfinal(2));
        p("number_to_time", "numberToTime", new c.Cfinal(1));
        p("number_to_datetime", "numberToDatetime", new c.Cfinal(3));
        o("parent", new b.Cgoto());
        p("previous_sibling", "previousSibling", new b.Cthis());
        p("next_sibling", "nextSibling", new b.Cnew());
        p("item_parity", "itemParity", new Cinstanceof.Ccatch());
        p("item_parity_cap", "itemParityCap", new Cinstanceof.Cclass());
        o("reverse", new e.Cconst());
        p("right_pad", "rightPad", new f.Cwhile(false));
        o("root", new b.Cbreak());
        o("round", new c.Csuper());
        p("remove_ending", "removeEnding", new f.Cnative());
        p("remove_beginning", "removeBeginning", new f.Cimport());
        o("rtf", new g.Ccase());
        p("seq_contains", "seqContains", new e.Cfinal());
        p("seq_index_of", "seqIndexOf", new e.Csuper(true));
        p("seq_last_index_of", "seqLastIndexOf", new e.Csuper(false));
        o("sequence", new e.Cthrow());
        o("short", new c.Cthrow());
        o("size", new a.Cdefault());
        p("sort_by", "sortBy", new e.Cimport());
        o("sort", new e.Cwhile());
        o("split", new f.Cpublic());
        o("switch", new j.Cdo());
        p("starts_with", "startsWith", new f.Creturn());
        o(TypedValues.Custom.S_STRING, new a.Cextends());
        o("substring", new f.Cstatic());
        p("take_while", "takeWhile", new e.Cnative());
        o("then", new j.Cif());
        o("time", new a.Cnew(1));
        p("time_if_unknown", "timeIfUnknown", new Cprotected.Cif(1));
        o("trim", new f.Cswitch());
        o("truncate", new f.Cthrows());
        p("truncate_w", "truncateW", new f.Cpackage());
        p("truncate_c", "truncateC", new f.Cdefault());
        p("truncate_m", "truncateM", new f.Cfinally());
        p("truncate_w_m", "truncateWM", new f.Cprivate());
        p("truncate_c_m", "truncateCM", new f.Cextends());
        p("uncap_first", "uncapFirst", new f.Cabstract());
        p("upper_abc", "upperAbc", new c.Cwhile());
        p("upper_case", "upperCase", new f.Ccontinue());
        o("url", new g.Celse());
        p("url_path", "urlPath", new g.Cgoto());
        o("values", new Cimplements.Cif());
        p("web_safe", "webSafe", map.get("html"));
        p("word_list", "wordList", new f.Cstrictfp());
        o("xhtml", new g.Cthis());
        o("xml", new g.Cbreak());
        o("matches", new i.Cfor());
        o("groups", new i.Cif());
        o("replace", new i.Cnew());
        if (285 >= map.size()) {
            return;
        }
        throw new AssertionError("Update NUMBER_OF_BIS! Should be: " + map.size());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Creturn l(int i, h0 h0Var, m4 m4Var, k0 k0Var) throws h3 {
        char cCharAt;
        String str = m4Var.image;
        HashMap<String, Creturn> map = f24113const;
        Creturn creturn = map.get(str);
        if (creturn != null) {
            while (creturn instanceof ICIChainMember) {
                ICIChainMember iCIChainMember = (ICIChainMember) creturn;
                if (i < iCIChainMember.getMinimumICIVersion()) {
                    creturn = (Creturn) iCIChainMember.getPreviousICIChainMember();
                }
            }
            try {
                Creturn creturn2 = (Creturn) creturn.clone();
                creturn2.f24115this = str;
                creturn2.q(h0Var);
                return creturn2;
            } catch (CloneNotSupportedException unused) {
                throw new InternalError();
            }
        }
        StringBuilder sb = new StringBuilder("Unknown built-in: ");
        sb.append(Csuper.m29330synchronized(str));
        sb.append(". ");
        sb.append("Help (latest version): https://freemarker.apache.org/docs/ref_builtins.html; you're using FreeMarker ");
        sb.append(Cdo.a2());
        sb.append(".\nThe alphabetical list of built-ins:");
        ArrayList<String> arrayList = new ArrayList(map.keySet().size());
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        int i2 = k0Var.f23985super;
        if (i2 == 10) {
            i2 = 11;
        }
        boolean z = true;
        char c = 0;
        for (String str2 : arrayList) {
            int iM9891for = yk2.m9891for(str2);
            if (i2 == 12) {
                if (iM9891for != 11) {
                    if (z) {
                        sb.append(", ");
                    } else {
                        z = false;
                    }
                    cCharAt = str2.charAt(0);
                    if (cCharAt != c) {
                        sb.append('\n');
                        c = cCharAt;
                    }
                    sb.append(str2);
                }
            } else if (iM9891for != 12) {
                if (z) {
                }
                cCharAt = str2.charAt(0);
                if (cCharAt != c) {
                }
                sb.append(str2);
            }
        }
        throw new h3(sb.toString(), (Cstatic) null, m4Var);
    }

    private static void o(String str, Creturn creturn) {
        f24113const.put(str, creturn);
        f24111catch.add(str);
        f24110break.add(str);
    }

    private static void p(String str, String str2, Creturn creturn) {
        HashMap<String, Creturn> map = f24113const;
        map.put(str, creturn);
        map.put(str2, creturn);
        f24111catch.add(str);
        f24110break.add(str2);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "?" + this.f24115this;
    }

    public final void d(int i, int i2) throws k52 {
        if (i == i2) {
            return;
        }
        throw b5.m27860final("?" + this.f24115this, i, i2);
    }

    public final void e(int i, int i2, int i3) throws k52 {
        if (i < i2 || i > i3) {
            throw b5.m27874super("?" + this.f24115this, i, i2, i3);
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    public final void f(List list, int i) throws k52 {
        d(list.size(), i);
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f24114goto.mo27815for() + "?" + this.f24115this;
    }

    public final void g(List list, int i, int i2) throws k52 {
        e(list.size(), i, i2);
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23760for;
        }
        if (i == 1) {
            return f3.f23768new;
        }
        throw new IndexOutOfBoundsException();
    }

    public final Number h(List list, int i) throws k52 {
        TemplateModel templateModel = (TemplateModel) list.get(i);
        if (templateModel instanceof TemplateNumberModel) {
            return f0.m28017import((TemplateNumberModel) templateModel, null);
        }
        throw b5.m27856default("?" + this.f24115this, i, templateModel);
    }

    public final Number i(List list, int i) throws k52 {
        if (list.size() > i) {
            return h(list, i);
        }
        return null;
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return false;
    }

    public final String j(List list, int i) throws k52 {
        if (list.size() > i) {
            return k(list, i);
        }
        return null;
    }

    public final String k(List list, int i) throws k52 {
        TemplateModel templateModel = (TemplateModel) list.get(i);
        if (templateModel instanceof TemplateScalarModel) {
            return f0.m28018native((TemplateScalarModel) templateModel, null, null);
        }
        throw b5.m27868package("?" + this.f24115this, i, templateModel);
    }

    public final k52 m(int i, Object[] objArr) {
        return b5.m27872static("?" + this.f24115this, i, objArr);
    }

    public final k52 n(Object[] objArr) {
        return b5.m27855continue("?" + this.f24115this, objArr);
    }

    public void q(h0 h0Var) {
        this.f24114goto = h0Var;
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        try {
            Creturn creturn = (Creturn) clone();
            creturn.f24114goto = this.f24114goto.m28053return(str, h0Var, cdo);
            return creturn;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Internal error: " + e);
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24114goto;
        }
        if (i == 1) {
            return this.f24115this;
        }
        throw new IndexOutOfBoundsException();
    }
}

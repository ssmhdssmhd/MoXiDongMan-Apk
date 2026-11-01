package org.antlr.v4.runtime;

import android.support.v4.Cextends;
import android.support.v4.Cstatic;
import android.support.v4.cf2;
import android.support.v4.jc1;
import android.support.v4.ql1;
import android.support.v4.sg1;
import android.support.v4.tq;
import android.support.v4.vo1;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.antlr.v4.runtime.misc.Cfor;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.antlr.v4.runtime.this, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthis<Symbol, ATNInterpreter extends Cextends> {

    /* renamed from: new, reason: not valid java name */
    public static final int f28576new = -1;

    /* renamed from: do, reason: not valid java name */
    private List<ANTLRErrorListener> f28578do = new Cdo();

    /* renamed from: for, reason: not valid java name */
    private int f28579for = -1;

    /* renamed from: if, reason: not valid java name */
    public ATNInterpreter f28580if;

    /* renamed from: try, reason: not valid java name */
    private static final Map<Vocabulary, Map<String, Integer>> f28577try = new WeakHashMap();

    /* renamed from: case, reason: not valid java name */
    private static final Map<String[], Map<String, Integer>> f28575case = new WeakHashMap();

    /* renamed from: org.antlr.v4.runtime.this$do, reason: invalid class name */
    public class Cdo extends CopyOnWriteArrayList<ANTLRErrorListener> {
        public Cdo() {
            add(tq.f6634do);
        }
    }

    /* renamed from: break */
    public jc1 mo31996break() {
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public List<? extends ANTLRErrorListener> m32069case() {
        return this.f28578do;
    }

    /* renamed from: catch, reason: not valid java name */
    public Map<String, Integer> m32070catch() {
        Map<String, Integer> mapUnmodifiableMap;
        String[] strArrMo2318class = mo2318class();
        if (strArrMo2318class == null) {
            throw new UnsupportedOperationException("The current recognizer does not provide a list of rule names.");
        }
        Map<String[], Map<String, Integer>> map = f28575case;
        synchronized (map) {
            mapUnmodifiableMap = map.get(strArrMo2318class);
            if (mapUnmodifiableMap == null) {
                mapUnmodifiableMap = Collections.unmodifiableMap(Cfor.m32039final(strArrMo2318class));
                map.put(strArrMo2318class, mapUnmodifiableMap);
            }
        }
        return mapUnmodifiableMap;
    }

    /* renamed from: class */
    public abstract String[] mo2318class();

    /* renamed from: const */
    public String mo2319const() {
        throw new UnsupportedOperationException("there is no serialized ATN");
    }

    /* renamed from: default, reason: not valid java name */
    public void m32071default(ATNInterpreter atninterpreter) {
        this.f28580if = atninterpreter;
    }

    /* renamed from: do, reason: not valid java name */
    public void m32072do(vo1 vo1Var, int i, int i2) {
    }

    /* renamed from: else */
    public abstract String mo2320else();

    /* renamed from: extends, reason: not valid java name */
    public final void m32073extends(int i) {
        this.f28579for = i;
    }

    /* renamed from: final, reason: not valid java name */
    public final int m32074final() {
        return this.f28579for;
    }

    /* renamed from: for */
    public abstract Cstatic mo2321for();

    public abstract TokenFactory<?> getTokenFactory();

    /* renamed from: goto */
    public abstract IntStream mo3558goto();

    /* renamed from: if, reason: not valid java name */
    public void m32075if(ANTLRErrorListener aNTLRErrorListener) {
        Objects.requireNonNull(aNTLRErrorListener, "listener cannot be null.");
        this.f28578do.add(aNTLRErrorListener);
    }

    /* renamed from: import, reason: not valid java name */
    public Map<String, Integer> m32076import() {
        Map<String, Integer> mapUnmodifiableMap;
        Vocabulary vocabularyMo2323native = mo2323native();
        Map<Vocabulary, Map<String, Integer>> map = f28577try;
        synchronized (map) {
            mapUnmodifiableMap = map.get(vocabularyMo2323native);
            if (mapUnmodifiableMap == null) {
                HashMap map2 = new HashMap();
                for (int i = 0; i <= mo2321for().f6259else; i++) {
                    String literalName = vocabularyMo2323native.getLiteralName(i);
                    if (literalName != null) {
                        map2.put(literalName, Integer.valueOf(i));
                    }
                    String symbolicName = vocabularyMo2323native.getSymbolicName(i);
                    if (symbolicName != null) {
                        map2.put(symbolicName, Integer.valueOf(i));
                    }
                }
                map2.put("EOF", -1);
                mapUnmodifiableMap = Collections.unmodifiableMap(map2);
                f28577try.put(vocabularyMo2323native, mapUnmodifiableMap);
            }
        }
        return mapUnmodifiableMap;
    }

    /* renamed from: native */
    public Vocabulary mo2323native() {
        return cf2.m902do(mo2325throw());
    }

    /* renamed from: new, reason: not valid java name */
    public String m32077new(ql1 ql1Var) {
        return "line " + ql1Var.getOffendingToken().getLine() + ":" + ql1Var.getOffendingToken().getCharPositionInLine();
    }

    /* renamed from: public */
    public boolean mo32004public(vo1 vo1Var, int i) {
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public void m32078return(ANTLRErrorListener aNTLRErrorListener) {
        this.f28578do.remove(aNTLRErrorListener);
    }

    public abstract void setTokenFactory(TokenFactory<?> tokenFactory);

    /* renamed from: static, reason: not valid java name */
    public void m32079static() {
        this.f28578do.clear();
    }

    @Deprecated
    /* renamed from: super, reason: not valid java name */
    public String m32080super(Token token) {
        if (token == null) {
            return "<no token>";
        }
        String text = token.getText();
        if (text == null) {
            if (token.getType() == -1) {
                text = "<EOF>";
            } else {
                text = "<" + token.getType() + ">";
            }
        }
        return "'" + text.replace("\n", "\\n").replace(Cclass.f28656new, "\\r").replace("\t", "\\t") + "'";
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m32081switch(vo1 vo1Var, int i, int i2) {
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public ATNInterpreter m32082this() {
        return this.f28580if;
    }

    @Deprecated
    /* renamed from: throw */
    public abstract String[] mo2325throw();

    /* renamed from: throws */
    public abstract void mo3565throws(IntStream intStream);

    /* renamed from: try, reason: not valid java name */
    public ANTLRErrorListener m32083try() {
        return new sg1(m32069case());
    }

    /* renamed from: while, reason: not valid java name */
    public int m32084while(String str) {
        Integer num = m32076import().get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }
}

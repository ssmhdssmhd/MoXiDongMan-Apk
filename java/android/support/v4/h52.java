package android.support.v4;

import freemarker.core.ParserConfiguration;
import freemarker.template.Cdo;
import freemarker.template.Cstatic;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class h52 extends freemarker.core.t implements ParserConfiguration {
    private boolean U0;
    private Integer V0;
    private Integer W0;
    private Integer X0;
    private Boolean Y0;
    private Boolean Z0;
    private Integer a1;
    private Boolean b1;
    private e91 c1;
    private String d1;
    private Integer e1;

    public h52() {
        super(Cdo.f1());
    }

    private void Q0() {
        if (!this.U0) {
            throw new IllegalStateException("The TemplateConfiguration wasn't associated with a Configuration yet.");
        }
    }

    private Cdo S0() {
        Q0();
        return (Cdo) m28271synchronized();
    }

    private boolean U0() {
        return r() || s() || u() || v() || w() || x() || z() || B() || C() || D() || E() || G() || F() || H() || I() || U() || J() || S() || K() || L() || M() || O() || N() || P() || t() || Q() || R() || T();
    }

    private List<String> g1(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        if (list.isEmpty()) {
            return list2;
        }
        if (list2.isEmpty()) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    private Map h1(Map map, Map map2, boolean z) {
        if (map == null) {
            return map2;
        }
        if (map2 == null) {
            return map;
        }
        if (map.isEmpty()) {
            return map2;
        }
        if (map2.isEmpty()) {
            return map;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap((((map.size() + map2.size()) * 4) / 3) + 1, 0.75f);
        linkedHashMap.putAll(map);
        Iterator it = map2.keySet().iterator();
        while (it.hasNext()) {
            linkedHashMap.remove(it.next());
        }
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    @Override // freemarker.core.t
    public void F0(boolean z) {
        throw new UnsupportedOperationException("Setting strictBeanModels on " + h52.class.getSimpleName() + " level isn't supported.");
    }

    public void P0(Cstatic cstatic) {
        if (cstatic.b1() != S0()) {
            throw new IllegalArgumentException("The argument Template doesn't belong to the same Configuration as the TemplateConfiguration");
        }
        if (r() && !cstatic.r()) {
            cstatic.c0(q());
        }
        if (s() && !cstatic.s()) {
            cstatic.d0(getArithmeticEngine());
        }
        if (u() && !cstatic.u()) {
            cstatic.f0(m28272this());
        }
        if (x() && !cstatic.x()) {
            cstatic.i0(m28254final());
        }
        if (z() && !cstatic.z()) {
            cstatic.k0(m28269super());
        }
        if (B()) {
            cstatic.n0(h1(m28266return(), cstatic.m28267static(), false));
        }
        if (C()) {
            cstatic.o0(h1(m28274throws(), cstatic.m28250default(), false));
        }
        if (D() && !cstatic.D()) {
            cstatic.p0(m28253extends());
        }
        if (E() && !cstatic.E()) {
            cstatic.q0(m28255finally());
        }
        if (W0() && cstatic.e1() == null) {
            cstatic.y1(R0());
        }
        if (H() && !cstatic.H()) {
            cstatic.t0(m28268strictfp());
        }
        if (I() && !cstatic.I()) {
            cstatic.u0(m28277volatile());
        }
        if (U() && !cstatic.U()) {
            cstatic.L0(l());
        }
        if (J() && !cstatic.J()) {
            cstatic.v0(m28261interface());
        }
        if (S() && !cstatic.S()) {
            cstatic.J0(j());
        }
        if (K() && !cstatic.K()) {
            cstatic.w0(m28275transient());
        }
        if (L() && !cstatic.L()) {
            cstatic.x0(m28258implements());
        }
        if (M() && !cstatic.M()) {
            cstatic.y0(m28260instanceof());
        }
        if (O() && !cstatic.O()) {
            cstatic.E0(e());
        }
        if (N() && !cstatic.N()) {
            cstatic.A0(a());
        }
        if (P() && !cstatic.P()) {
            cstatic.G0(f());
        }
        if (t() && !cstatic.t()) {
            cstatic.e0(m28256goto());
        }
        if (Q() && !cstatic.Q()) {
            cstatic.H0(g());
        }
        if (R() && !cstatic.R()) {
            cstatic.I0(h());
        }
        if (T() && !cstatic.T()) {
            cstatic.K0(k());
        }
        if (G() && !cstatic.G()) {
            cstatic.s0(m28249continue());
        }
        if (F() && !cstatic.F()) {
            cstatic.r0(m28243abstract());
        }
        if (v()) {
            cstatic.g0(h1(m28244break(), cstatic.m28246catch(), true));
        }
        if (w()) {
            cstatic.h0(g1(m28247class(), cstatic.m28248const()));
        }
        m28276try(cstatic, false);
    }

    public String R0() {
        String str = this.d1;
        return str != null ? str : S0().h1();
    }

    public Cdo T0() {
        if (this.U0) {
            return (Cdo) m28271synchronized();
        }
        return null;
    }

    public boolean V0() {
        return this.a1 != null;
    }

    public boolean W0() {
        return this.d1 != null;
    }

    public boolean X0() {
        return this.W0 != null;
    }

    public boolean Y0() {
        return this.X0 != null;
    }

    public boolean Z0() {
        return this.c1 != null;
    }

    public boolean a1() {
        return this.b1 != null;
    }

    public boolean b1() {
        return this.Z0 != null;
    }

    public boolean c1() {
        return this.e1 != null;
    }

    public boolean d1() {
        return this.V0 != null;
    }

    public boolean e1() {
        return this.Y0 != null;
    }

    public void f1(h52 h52Var) {
        if (h52Var.r()) {
            c0(h52Var.q());
        }
        if (h52Var.s()) {
            d0(h52Var.getArithmeticEngine());
        }
        if (h52Var.V0()) {
            i1(h52Var.getAutoEscapingPolicy());
        }
        if (h52Var.u()) {
            f0(h52Var.m28272this());
        }
        if (h52Var.x()) {
            i0(h52Var.m28254final());
        }
        if (h52Var.z()) {
            k0(h52Var.m28269super());
        }
        if (h52Var.B()) {
            n0(h1(m28266return(), h52Var.m28266return(), false));
        }
        if (h52Var.C()) {
            o0(h1(m28274throws(), h52Var.m28274throws(), false));
        }
        if (h52Var.D()) {
            p0(h52Var.m28253extends());
        }
        if (h52Var.E()) {
            q0(h52Var.m28255finally());
        }
        if (h52Var.W0()) {
            j1(h52Var.R0());
        }
        if (h52Var.H()) {
            t0(h52Var.m28268strictfp());
        }
        if (h52Var.I()) {
            u0(h52Var.m28277volatile());
        }
        if (h52Var.U()) {
            L0(h52Var.l());
        }
        if (h52Var.Y0()) {
            l1(h52Var.getNamingConvention());
        }
        if (h52Var.J()) {
            v0(h52Var.m28261interface());
        }
        if (h52Var.S()) {
            J0(h52Var.j());
        }
        if (h52Var.K()) {
            w0(h52Var.m28275transient());
        }
        if (h52Var.L()) {
            x0(h52Var.m28258implements());
        }
        if (h52Var.M()) {
            y0(h52Var.m28260instanceof());
        }
        if (h52Var.Z0()) {
            m1(h52Var.getOutputFormat());
        }
        if (h52Var.a1()) {
            o1(h52Var.getRecognizeStandardFileExtensions());
        }
        if (h52Var.O()) {
            E0(h52Var.e());
        }
        if (h52Var.N()) {
            A0(h52Var.a());
        }
        if (h52Var.b1()) {
            p1(h52Var.getStrictSyntaxMode());
        }
        if (h52Var.d1()) {
            r1(h52Var.getTagSyntax());
        }
        if (h52Var.X0()) {
            k1(h52Var.getInterpolationSyntax());
        }
        if (h52Var.P()) {
            G0(h52Var.f());
        }
        if (h52Var.t()) {
            e0(h52Var.m28256goto());
        }
        if (h52Var.Q()) {
            H0(h52Var.g());
        }
        if (h52Var.R()) {
            I0(h52Var.h());
        }
        if (h52Var.T()) {
            K0(h52Var.k());
        }
        if (h52Var.e1()) {
            s1(h52Var.getWhitespaceStripping());
        }
        if (h52Var.c1()) {
            q1(h52Var.getTabSize());
        }
        if (h52Var.G()) {
            s0(h52Var.m28249continue());
        }
        if (h52Var.F()) {
            r0(h52Var.m28243abstract());
        }
        if (h52Var.v()) {
            g0(h1(m28246catch(), h52Var.m28246catch(), true));
        }
        if (h52Var.w()) {
            h0(g1(m28248const(), h52Var.m28248const()));
        }
        h52Var.m28276try(this, true);
    }

    @Override // freemarker.core.ParserConfiguration
    public int getAutoEscapingPolicy() {
        Integer num = this.a1;
        return num != null ? num.intValue() : S0().getAutoEscapingPolicy();
    }

    @Override // freemarker.core.ParserConfiguration
    public we2 getIncompatibleImprovements() {
        return S0().getIncompatibleImprovements();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getInterpolationSyntax() {
        Integer num = this.W0;
        return num != null ? num.intValue() : S0().getInterpolationSyntax();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getNamingConvention() {
        Integer num = this.X0;
        return num != null ? num.intValue() : S0().getNamingConvention();
    }

    @Override // freemarker.core.ParserConfiguration
    public e91 getOutputFormat() {
        e91 e91Var = this.c1;
        return e91Var != null ? e91Var : S0().getOutputFormat();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getRecognizeStandardFileExtensions() {
        Boolean bool = this.b1;
        return bool != null ? bool.booleanValue() : S0().getRecognizeStandardFileExtensions();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getStrictSyntaxMode() {
        Boolean bool = this.Z0;
        return bool != null ? bool.booleanValue() : S0().getStrictSyntaxMode();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTabSize() {
        Integer num = this.e1;
        return num != null ? num.intValue() : S0().getTabSize();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTagSyntax() {
        Integer num = this.V0;
        return num != null ? num.intValue() : S0().getTagSyntax();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getWhitespaceStripping() {
        Boolean bool = this.Y0;
        return bool != null ? bool.booleanValue() : S0().getWhitespaceStripping();
    }

    public void i1(int i) {
        ul2.m8511public(i);
        this.a1 = Integer.valueOf(i);
    }

    public void j1(String str) {
        w41.check("encoding", str);
        this.d1 = str;
    }

    public void k1(int i) {
        ul2.m8513static(i);
        this.W0 = Integer.valueOf(i);
    }

    public void l1(int i) {
        ul2.m8512return(i);
        this.X0 = Integer.valueOf(i);
    }

    public void m1(e91 e91Var) {
        w41.check("outputFormat", e91Var);
        this.c1 = e91Var;
    }

    public void n1(Cdo cdo) {
        z0(cdo);
    }

    public void o1(boolean z) {
        this.b1 = Boolean.valueOf(z);
    }

    public void p1(boolean z) {
        this.Z0 = Boolean.valueOf(z);
    }

    public void q1(int i) {
        this.e1 = Integer.valueOf(i);
    }

    public void r1(int i) {
        ul2.m8515switch(i);
        this.V0 = Integer.valueOf(i);
    }

    public void s1(boolean z) {
        this.Y0 = Boolean.valueOf(z);
    }

    @Override // freemarker.core.t
    public void z0(freemarker.core.t tVar) {
        w41.check("cfg", tVar);
        if (!(tVar instanceof Cdo)) {
            throw new IllegalArgumentException("The parent of a TemplateConfiguration can only be a Configuration");
        }
        if (this.U0) {
            if (m28271synchronized() != tVar) {
                throw new IllegalStateException("This TemplateConfiguration is already associated with a different Configuration instance.");
            }
        } else {
            if (((Cdo) tVar).getIncompatibleImprovements().intValue() < ul2.f6939try && U0()) {
                throw new IllegalStateException("This TemplateConfiguration can't be associated to a Configuration that has incompatibleImprovements less than 2.3.22, because it changes non-parser settings.");
            }
            super.z0(tVar);
            this.U0 = true;
        }
    }
}

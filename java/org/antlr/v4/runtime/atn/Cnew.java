package org.antlr.v4.runtime.atn;

import android.support.v4.Cextends;
import android.support.v4.Cfinally;
import android.support.v4.Cstatic;
import android.support.v4.Cswitch;
import android.support.v4.Cthrows;
import android.support.v4.ap1;
import android.support.v4.au;
import android.support.v4.ca;
import android.support.v4.cf2;
import android.support.v4.d02;
import android.support.v4.ea;
import android.support.v4.ef1;
import android.support.v4.f80;
import android.support.v4.g4;
import android.support.v4.h20;
import android.support.v4.j12;
import android.support.v4.jx;
import android.support.v4.lx1;
import android.support.v4.o41;
import android.support.v4.ob1;
import android.support.v4.qc1;
import android.support.v4.sn0;
import android.support.v4.u;
import android.support.v4.v31;
import android.support.v4.vo1;
import android.support.v4.yo1;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.dfa.Cdo;

/* renamed from: org.antlr.v4.runtime.atn.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cextends {

    /* renamed from: final, reason: not valid java name */
    public static final boolean f28479final = false;

    /* renamed from: import, reason: not valid java name */
    public static final boolean f28480import = Boolean.parseBoolean(System.getenv("TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT"));

    /* renamed from: native, reason: not valid java name */
    public static final /* synthetic */ boolean f28481native = false;

    /* renamed from: super, reason: not valid java name */
    public static final boolean f28482super = false;

    /* renamed from: throw, reason: not valid java name */
    public static final boolean f28483throw = false;

    /* renamed from: while, reason: not valid java name */
    public static final boolean f28484while = false;

    /* renamed from: break, reason: not valid java name */
    public TokenStream f28485break;

    /* renamed from: case, reason: not valid java name */
    public final Cgoto f28486case;

    /* renamed from: catch, reason: not valid java name */
    public int f28487catch;

    /* renamed from: class, reason: not valid java name */
    public qc1 f28488class;

    /* renamed from: const, reason: not valid java name */
    public Cdo f28489const;

    /* renamed from: else, reason: not valid java name */
    public final Cdo[] f28490else;

    /* renamed from: goto, reason: not valid java name */
    private Cgoto f28491goto;

    /* renamed from: this, reason: not valid java name */
    public h20<Celse, Celse, Celse> f28492this;

    public Cnew(Cstatic cstatic, Cdo[] cdoArr, ef1 ef1Var) {
        this(null, cstatic, cdoArr, ef1Var);
    }

    public static int f(Cthrows cthrows) {
        Iterator<Cswitch> it = cthrows.iterator();
        int i = 0;
        while (it.hasNext()) {
            Cswitch next = it.next();
            if (i == 0) {
                i = next.f6325if;
            } else if (next.f6325if != i) {
                return 0;
            }
        }
        return i;
    }

    public Cbreak[] a(BitSet bitSet, Cthrows cthrows, int i) {
        Cbreak[] cbreakArr = new Cbreak[i + 1];
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            if (bitSet.get(next.f6325if)) {
                int i2 = next.f6325if;
                cbreakArr[i2] = Cbreak.m31862case(cbreakArr[i2], next.f6327try);
            }
        }
        int i3 = 0;
        for (int i4 = 1; i4 <= i; i4++) {
            if (cbreakArr[i4] == null) {
                cbreakArr[i4] = Cbreak.f28443do;
            } else if (cbreakArr[i4] != Cbreak.f28443do) {
                i3++;
            }
        }
        if (i3 == 0) {
            return null;
        }
        return cbreakArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
    
        r10 = r6;
     */
    /* renamed from: abstract, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m31895abstract(Cdo cdo, au auVar, Cthrows cthrows, TokenStream tokenStream, int i, qc1 qc1Var) {
        Cthrows cthrowsMo31914switch;
        boolean z;
        int singleViableAlt;
        tokenStream.seek(i);
        int iLA = tokenStream.LA(1);
        Cthrows cthrows2 = cthrows;
        while (true) {
            cthrowsMo31914switch = mo31914switch(cthrows2, iLA, true);
            if (cthrowsMo31914switch != null) {
                Collection<BitSet> conflictingAltSubsets = Cgoto.getConflictingAltSubsets(cthrowsMo31914switch);
                int iF = f(cthrowsMo31914switch);
                cthrowsMo31914switch.f6566new = iF;
                z = false;
                if (iF != 0) {
                    break;
                }
                if (this.f28491goto == Cgoto.LL_EXACT_AMBIG_DETECTION) {
                    if (Cgoto.allSubsetsConflict(conflictingAltSubsets) && Cgoto.allSubsetsEqual(conflictingAltSubsets)) {
                        singleViableAlt = Cgoto.getSingleViableAlt(conflictingAltSubsets);
                        z = true;
                        break;
                    }
                } else {
                    iF = Cgoto.resolvesToJustOneViableAlt(conflictingAltSubsets);
                    if (iF != 0) {
                        break;
                    }
                }
                if (iLA != -1) {
                    tokenStream.consume();
                    iLA = tokenStream.LA(1);
                }
                cthrows2 = cthrowsMo31914switch;
            } else {
                v31 v31VarG = g(tokenStream, qc1Var, cthrows2, i);
                tokenStream.seek(i);
                int iD = d(cthrows2, qc1Var);
                if (iD != 0) {
                    return iD;
                }
                throw v31VarG;
            }
        }
        if (cthrowsMo31914switch.f6566new != 0) {
            n(cdo, singleViableAlt, cthrowsMo31914switch, i, tokenStream.index());
            return singleViableAlt;
        }
        l(cdo, auVar, i, tokenStream.index(), z, cthrowsMo31914switch.m7930case(), cthrowsMo31914switch);
        return singleViableAlt;
    }

    public Cfinally b(Ccatch ccatch, int i) {
        if (ccatch.mo312new(i, 0, this.f1619do.f6259else)) {
            return ccatch.f28465do;
        }
        return null;
    }

    public String c(int i) {
        Cgoto cgoto = this.f28486case;
        if (cgoto != null && i >= 0) {
            return cgoto.mo2318class()[i];
        }
        return "<rule " + i + ">";
    }

    /* renamed from: continue, reason: not valid java name */
    public int m31896continue(Cthrows cthrows) {
        sn0 sn0Var = new sn0(new int[0]);
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            if (next.m7629if() > 0 || ((next.f6323do instanceof yo1) && next.f6324for.m31884catch())) {
                sn0Var.add(next.f6325if);
            }
        }
        if (sn0Var.size() == 0) {
            return 0;
        }
        return sn0Var.m7523const();
    }

    public int d(Cthrows cthrows, qc1 qc1Var) {
        int iM31896continue;
        ob1<Cthrows, Cthrows> ob1VarQ = q(cthrows, qc1Var);
        Cthrows cthrows2 = ob1VarQ.a;
        Cthrows cthrows3 = ob1VarQ.b;
        int iM31896continue2 = m31896continue(cthrows2);
        if (iM31896continue2 != 0) {
            return iM31896continue2;
        }
        if (cthrows3.size() <= 0 || (iM31896continue = m31896continue(cthrows3)) == 0) {
            return 0;
        }
        return iM31896continue;
    }

    /* renamed from: default, reason: not valid java name */
    public au mo31897default(Cdo cdo, au auVar, int i) {
        Cthrows cthrowsMo31914switch = mo31914switch(auVar.f240if, i, false);
        if (cthrowsMo31914switch == null) {
            au auVar2 = Cextends.f1618try;
            m31916throw(cdo, auVar, i, auVar2);
            return auVar2;
        }
        au auVar3 = new au(cthrowsMo31914switch);
        int iF = f(cthrowsMo31914switch);
        if (iF != 0) {
            auVar3.f241new = true;
            auVar3.f240if.f6566new = iF;
            auVar3.f242try = iF;
        } else if (Cgoto.hasSLLConflictTerminatingPrediction(this.f28491goto, cthrowsMo31914switch)) {
            auVar3.f240if.f6568try = m31912strictfp(cthrowsMo31914switch);
            auVar3.f237else = true;
            auVar3.f241new = true;
            auVar3.f242try = auVar3.f240if.f6568try.nextSetBit(0);
        }
        if (auVar3.f241new && auVar3.f240if.f6560case) {
            j(auVar3, this.f1619do.m7600for(cdo.f28536for));
            if (auVar3.f239goto != null) {
                auVar3.f242try = 0;
            }
        }
        return m31916throw(cdo, auVar, i, auVar3);
    }

    public String e(int i) {
        if (i == -1) {
            return "EOF";
        }
        Cgoto cgoto = this.f28486case;
        String displayName = (cgoto != null ? cgoto.mo2323native() : cf2.f763case).getDisplayName(i);
        if (displayName.equals(Integer.toString(i))) {
            return displayName;
        }
        return displayName + "<" + i + ">";
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* renamed from: extends, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m31898extends(v31 v31Var) {
        String string;
        System.err.println("dead end configs: ");
        Iterator<Cswitch> it = v31Var.getDeadEndConfigs().iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            if (next.f6323do.m2309for() > 0) {
                Ccatch ccatchM2306catch = next.f6323do.m2306catch(0);
                if (ccatchM2306catch instanceof g4) {
                    string = "Atom " + e(((g4) ccatchM2306catch).f2050final);
                } else if (ccatchM2306catch instanceof lx1) {
                    lx1 lx1Var = (lx1) ccatchM2306catch;
                    boolean z = lx1Var instanceof o41;
                    StringBuilder sb = new StringBuilder();
                    sb.append(z ? "~" : "");
                    sb.append("Set ");
                    sb.append(lx1Var.f3790final.toString());
                    string = sb.toString();
                } else {
                    string = "no edges";
                }
            }
            System.err.println(next.m7631try(this.f28486case, true) + ":" + string);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public Cswitch m31899final(Cswitch cswitch, u uVar) {
        return new Cswitch(cswitch, uVar.f28465do);
    }

    /* renamed from: finally, reason: not valid java name */
    public BitSet m31900finally(au.Cdo[] cdoArr, qc1 qc1Var, boolean z) {
        BitSet bitSet = new BitSet();
        for (au.Cdo cdo : cdoArr) {
            Cbreak cbreak = cdo.f243do;
            if (cbreak == Cbreak.f28443do) {
                bitSet.set(cdo.f244if);
                if (!z) {
                    break;
                }
            } else {
                if (mo31906package(cbreak, qc1Var, cdo.f244if, false)) {
                    bitSet.set(cdo.f244if);
                    if (!z) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return bitSet;
    }

    @Override // android.support.v4.Cextends
    /* renamed from: for */
    public void mo2071for() {
        int i = 0;
        while (true) {
            Cdo[] cdoArr = this.f28490else;
            if (i >= cdoArr.length) {
                return;
            }
            cdoArr[i] = new Cdo(this.f1619do.m7600for(i), i);
            i++;
        }
    }

    public v31 g(TokenStream tokenStream, qc1 qc1Var, Cthrows cthrows, int i) {
        return new v31(this.f28486case, tokenStream, tokenStream.get(i), tokenStream.LT(1), cthrows, qc1Var);
    }

    @Override // android.support.v4.Cextends
    /* renamed from: goto */
    public void mo2072goto() {
    }

    public Cswitch h(Cswitch cswitch, Ctry ctry, boolean z, boolean z2, boolean z3) {
        if (!z || !z2) {
            return new Cswitch(cswitch, ctry.f28465do);
        }
        if (!z3) {
            return new Cswitch(cswitch, ctry.f28465do, Cbreak.m31864if(cswitch.f6327try, ctry.m31921try()));
        }
        int iIndex = this.f28485break.index();
        this.f28485break.seek(this.f28487catch);
        boolean zMo31906package = mo31906package(ctry.m31921try(), this.f28488class, cswitch.f6325if, z3);
        this.f28485break.seek(iIndex);
        if (zMo31906package) {
            return new Cswitch(cswitch, ctry.f28465do);
        }
        return null;
    }

    public Cswitch i(Cswitch cswitch, Ccase ccase, boolean z, boolean z2, boolean z3) {
        boolean z4;
        if (!z || ((z4 = ccase.f28452throw) && !(z4 && z2))) {
            return new Cswitch(cswitch, ccase.f28465do);
        }
        if (!z3) {
            return new Cswitch(cswitch, ccase.f28465do, Cbreak.m31864if(cswitch.f6327try, ccase.m31870try()));
        }
        int iIndex = this.f28485break.index();
        this.f28485break.seek(this.f28487catch);
        boolean zMo31906package = mo31906package(ccase.m31870try(), this.f28488class, cswitch.f6325if, z3);
        this.f28485break.seek(iIndex);
        if (zMo31906package) {
            return new Cswitch(cswitch, ccase.f28465do);
        }
        return null;
    }

    /* renamed from: implements, reason: not valid java name */
    public Cgoto m31901implements() {
        return this.f28486case;
    }

    /* renamed from: import, reason: not valid java name */
    public Cthrows m31902import(Cthrows cthrows) {
        Celse celse;
        Cbreak cbreakMo31867new;
        HashMap map = new HashMap();
        Cthrows cthrows2 = new Cthrows(cthrows.f6564goto);
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            if (next.f6325if == 1 && (cbreakMo31867new = next.f6327try.mo31867new(this.f28486case, this.f28488class)) != null) {
                map.put(Integer.valueOf(next.f6323do.f1854if), next.f6324for);
                if (cbreakMo31867new != next.f6327try) {
                    cthrows2.m7937if(new Cswitch(next, cbreakMo31867new), this.f28492this);
                } else {
                    cthrows2.m7937if(next, this.f28492this);
                }
            }
        }
        Iterator<Cswitch> it2 = cthrows.iterator();
        while (it2.hasNext()) {
            Cswitch next2 = it2.next();
            if (next2.f6325if != 1 && (next2.m7628for() || (celse = (Celse) map.get(Integer.valueOf(next2.f6323do.f1854if))) == null || !celse.equals(next2.f6324for))) {
                cthrows2.m7937if(next2, this.f28492this);
            }
        }
        return cthrows2;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public au.Cdo[] m31903instanceof(BitSet bitSet, Cbreak[] cbreakArr) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (int i = 1; i < cbreakArr.length; i++) {
            Cbreak cbreak = cbreakArr[i];
            if (bitSet != null && bitSet.get(i)) {
                arrayList.add(new au.Cdo(cbreak, i));
            }
            if (cbreak != Cbreak.f28443do) {
                z = true;
            }
        }
        if (z) {
            return (au.Cdo[]) arrayList.toArray(new au.Cdo[arrayList.size()]);
        }
        return null;
    }

    /* renamed from: interface, reason: not valid java name */
    public Cswitch m31904interface(Cswitch cswitch, Ccatch ccatch, boolean z, boolean z2, boolean z3, boolean z4) {
        int iMo310do = ccatch.mo310do();
        if (iMo310do == 10) {
            return h(cswitch, (Ctry) ccatch, z, z2, z3);
        }
        switch (iMo310do) {
            case 1:
                return new Cswitch(cswitch, ccatch.f28465do);
            case 2:
            case 5:
            case 7:
                if (z4 && ccatch.mo312new(-1, 0, 1)) {
                    return new Cswitch(cswitch, ccatch.f28465do);
                }
                return null;
            case 3:
                return o(cswitch, (ap1) ccatch);
            case 4:
                return i(cswitch, (Ccase) ccatch, z, z2, z3);
            case 6:
                return m31899final(cswitch, (u) ccatch);
            default:
                return null;
        }
    }

    public void j(au auVar, jx jxVar) {
        int iM2309for = jxVar.m2309for();
        BitSet bitSetM31919volatile = m31919volatile(auVar.f240if);
        Cbreak[] cbreakArrA = a(bitSetM31919volatile, auVar.f240if, iM2309for);
        if (cbreakArrA == null) {
            auVar.f242try = bitSetM31919volatile.nextSetBit(0);
        } else {
            auVar.f239goto = m31903instanceof(bitSetM31919volatile, cbreakArrA);
            auVar.f242try = 0;
        }
    }

    public Cthrows k(Cthrows cthrows, boolean z) {
        if (Cgoto.allConfigsInRuleStopStates(cthrows)) {
            return cthrows;
        }
        Cthrows cthrows2 = new Cthrows(cthrows.f6564goto);
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            Cfinally cfinally = next.f6323do;
            if (cfinally instanceof yo1) {
                cthrows2.m7937if(next, this.f28492this);
            } else if (z && cfinally.m2308else() && this.f1619do.m7597case(next.f6323do).contains(-2)) {
                cthrows2.m7937if(new Cswitch(next, this.f1619do.f6263new[next.f6323do.f1853for]), this.f28492this);
            }
        }
        return cthrows2;
    }

    public void l(Cdo cdo, au auVar, int i, int i2, boolean z, BitSet bitSet, Cthrows cthrows) {
        Cgoto cgoto = this.f28486case;
        if (cgoto != null) {
            cgoto.m32083try().reportAmbiguity(this.f28486case, cdo, i, i2, z, bitSet, cthrows);
        }
    }

    public void m(Cdo cdo, BitSet bitSet, Cthrows cthrows, int i, int i2) {
        Cgoto cgoto = this.f28486case;
        if (cgoto != null) {
            cgoto.m32083try().reportAttemptingFullContext(this.f28486case, cdo, i, i2, bitSet, cthrows);
        }
    }

    public void n(Cdo cdo, int i, Cthrows cthrows, int i2, int i3) {
        Cgoto cgoto = this.f28486case;
        if (cgoto != null) {
            cgoto.m32083try().reportContextSensitivity(this.f28486case, cdo, i2, i3, i, cthrows);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m31905native(Cswitch cswitch) {
        if (f28480import) {
            return false;
        }
        Cfinally cfinally = cswitch.f6323do;
        if (cfinally.mo822new() != 10 || !((j12) cfinally).f2956extends || cswitch.f6324for.mo5849class() || cswitch.f6324for.m31884catch()) {
            return false;
        }
        int iMo1096while = cswitch.f6324for.mo1096while();
        for (int i = 0; i < iMo1096while; i++) {
            if (this.f1619do.f6258do.get(cswitch.f6324for.mo1094break(i)).f1853for != cfinally.f1853for) {
                return false;
            }
        }
        ca caVar = (ca) this.f1619do.f6258do.get(((ea) cfinally.m2306catch(0).f28465do).f1332default.f1854if);
        for (int i2 = 0; i2 < iMo1096while; i2++) {
            Cfinally cfinally2 = this.f1619do.f6258do.get(cswitch.f6324for.mo1094break(i2));
            if (cfinally2.m2309for() == 1 && cfinally2.m2306catch(0).mo311if()) {
                Cfinally cfinally3 = cfinally2.m2306catch(0).f28465do;
                if ((cfinally2.mo822new() == 8 && cfinally3 == cfinally) || cfinally2 == caVar || cfinally3 == caVar || (cfinally3.mo822new() == 8 && cfinally3.m2309for() == 1 && cfinally3.m2306catch(0).mo311if() && cfinally3.m2306catch(0).f28465do == cfinally)) {
                }
            }
            return false;
        }
        return true;
    }

    public Cswitch o(Cswitch cswitch, ap1 ap1Var) {
        return new Cswitch(cswitch, ap1Var.f28465do, d02.m1093static(cswitch.f6324for, ap1Var.f226throw.f1854if));
    }

    public final void p(Cgoto cgoto) {
        this.f28491goto = cgoto;
    }

    /* renamed from: package, reason: not valid java name */
    public boolean mo31906package(Cbreak cbreak, qc1 qc1Var, int i, boolean z) {
        return cbreak.mo31866for(this.f28486case, qc1Var);
    }

    /* renamed from: private, reason: not valid java name */
    public int m31907private(Cdo cdo, au auVar, TokenStream tokenStream, int i, qc1 qc1Var) {
        BitSet bitSetM31900finally;
        int iLA = tokenStream.LA(1);
        au auVar2 = auVar;
        while (true) {
            au auVarMo31908protected = mo31908protected(auVar2, iLA);
            if (auVarMo31908protected == null) {
                auVarMo31908protected = mo31897default(cdo, auVar2, iLA);
            }
            au auVar3 = auVarMo31908protected;
            if (auVar3 == Cextends.f1618try) {
                v31 v31VarG = g(tokenStream, qc1Var, auVar2.f240if, i);
                tokenStream.seek(i);
                int iD = d(auVar2.f240if, qc1Var);
                if (iD != 0) {
                    return iD;
                }
                throw v31VarG;
            }
            if (auVar3.f237else && this.f28491goto != Cgoto.SLL) {
                BitSet bitSet = auVar3.f240if.f6568try;
                if (auVar3.f239goto != null) {
                    int iIndex = tokenStream.index();
                    if (iIndex != i) {
                        tokenStream.seek(i);
                    }
                    bitSetM31900finally = m31900finally(auVar3.f239goto, qc1Var, true);
                    if (bitSetM31900finally.cardinality() == 1) {
                        return bitSetM31900finally.nextSetBit(0);
                    }
                    if (iIndex != i) {
                        tokenStream.seek(iIndex);
                    }
                } else {
                    bitSetM31900finally = bitSet;
                }
                Cthrows cthrowsM31917throws = m31917throws(cdo.f28538new, qc1Var, true);
                m(cdo, bitSetM31900finally, auVar3.f240if, i, tokenStream.index());
                return m31895abstract(cdo, auVar3, cthrowsM31917throws, tokenStream, i, qc1Var);
            }
            if (auVar3.f241new) {
                if (auVar3.f239goto == null) {
                    return auVar3.f242try;
                }
                int iIndex2 = tokenStream.index();
                tokenStream.seek(i);
                BitSet bitSetM31900finally2 = m31900finally(auVar3.f239goto, qc1Var, true);
                int iCardinality = bitSetM31900finally2.cardinality();
                if (iCardinality == 0) {
                    throw g(tokenStream, qc1Var, auVar3.f240if, i);
                }
                if (iCardinality == 1) {
                    return bitSetM31900finally2.nextSetBit(0);
                }
                l(cdo, auVar3, i, iIndex2, false, bitSetM31900finally2, auVar3.f240if);
                return bitSetM31900finally2.nextSetBit(0);
            }
            if (iLA != -1) {
                tokenStream.consume();
                iLA = tokenStream.LA(1);
            }
            auVar2 = auVar3;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public au mo31908protected(au auVar, int i) {
        int i2;
        au[] auVarArr = auVar.f238for;
        if (auVarArr == null || (i2 = i + 1) < 0 || i2 >= auVarArr.length) {
            return null;
        }
        return auVarArr[i2];
    }

    /* renamed from: public, reason: not valid java name */
    public void m31909public(Cswitch cswitch, Cthrows cthrows, Set<Cswitch> set, boolean z, boolean z2, boolean z3) {
        m31910return(cswitch, cthrows, set, z, z2, 0, z3);
    }

    public ob1<Cthrows, Cthrows> q(Cthrows cthrows, qc1 qc1Var) {
        Cthrows cthrows2 = new Cthrows(cthrows.f6564goto);
        Cthrows cthrows3 = new Cthrows(cthrows.f6564goto);
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            Cswitch next = it.next();
            Cbreak cbreak = next.f6327try;
            if (cbreak == Cbreak.f28443do) {
                cthrows2.add(next);
            } else if (mo31906package(cbreak, qc1Var, next.f6325if, cthrows.f6564goto)) {
                cthrows2.add(next);
            } else {
                cthrows3.add(next);
            }
        }
        return new ob1<>(cthrows2, cthrows3);
    }

    /* renamed from: return, reason: not valid java name */
    public void m31910return(Cswitch cswitch, Cthrows cthrows, Set<Cswitch> set, boolean z, boolean z2, int i, boolean z3) {
        if (cswitch.f6323do instanceof yo1) {
            if (!cswitch.f6324for.mo5849class()) {
                for (int i2 = 0; i2 < cswitch.f6324for.mo1096while(); i2++) {
                    if (cswitch.f6324for.mo1094break(i2) != Integer.MAX_VALUE) {
                        Cswitch cswitch2 = new Cswitch(this.f1619do.f6258do.get(cswitch.f6324for.mo1094break(i2)), cswitch.f6325if, cswitch.f6324for.mo1095this(i2), cswitch.f6327try);
                        cswitch2.f6326new = cswitch.f6326new;
                        m31910return(cswitch2, cthrows, set, z, z2, i - 1, z3);
                    } else if (z2) {
                        cthrows.m7937if(new Cswitch(cswitch, cswitch.f6323do, Celse.f28469for), this.f28492this);
                    } else {
                        m31911static(cswitch, cthrows, set, z, z2, i, z3);
                    }
                }
                return;
            }
            if (z2) {
                cthrows.m7937if(cswitch, this.f28492this);
                return;
            }
        }
        m31911static(cswitch, cthrows, set, z, z2, i, z3);
    }

    /* renamed from: static, reason: not valid java name */
    public void m31911static(Cswitch cswitch, Cthrows cthrows, Set<Cswitch> set, boolean z, boolean z2, int i, boolean z3) {
        int i2;
        int i3;
        Cfinally cfinally = cswitch.f6323do;
        if (!cfinally.m2308else()) {
            cthrows.m7937if(cswitch, this.f28492this);
        }
        for (int i4 = 0; i4 < cfinally.m2309for(); i4++) {
            if (i4 != 0 || !m31905native(cswitch)) {
                Ccatch ccatchM2306catch = cfinally.m2306catch(i4);
                boolean z4 = !(ccatchM2306catch instanceof u) && z;
                Cswitch cswitchM31904interface = m31904interface(cswitch, ccatchM2306catch, z4, i == 0, z2, z3);
                if (cswitchM31904interface != null && (ccatchM2306catch.mo311if() || set.add(cswitchM31904interface))) {
                    if (cswitch.f6323do instanceof yo1) {
                        if (set.add(cswitchM31904interface)) {
                            Cdo cdo = this.f28489const;
                            if (cdo != null && cdo.m31971for() && ((f80) ccatchM2306catch).m2194try() == this.f28489const.f28538new.f1853for) {
                                cswitchM31904interface.m7630new(true);
                            }
                            cswitchM31904interface.f6326new++;
                            cthrows.f6562else = true;
                            i3 = i - 1;
                        }
                    } else if (!(ccatchM2306catch instanceof ap1) || i < 0) {
                        i2 = i;
                        m31910return(cswitchM31904interface, cthrows, set, z4, z2, i2, z3);
                    } else {
                        i3 = i + 1;
                    }
                    i2 = i3;
                    m31910return(cswitchM31904interface, cthrows, set, z4, z2, i2, z3);
                }
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public BitSet m31912strictfp(Cthrows cthrows) {
        return Cgoto.getAlts(Cgoto.getConflictingAltSubsets(cthrows));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: super, reason: not valid java name */
    public int mo31913super(TokenStream tokenStream, int i, qc1 qc1Var) {
        this.f28485break = tokenStream;
        this.f28487catch = tokenStream.index();
        this.f28488class = qc1Var;
        Cdo cdo = this.f28490else[i];
        this.f28489const = cdo;
        int iMark = tokenStream.mark();
        int i2 = this.f28487catch;
        try {
            au auVarM31969do = cdo.m31971for() ? cdo.m31969do(this.f28486case.m()) : cdo.f28537if;
            if (auVarM31969do == null) {
                if (qc1Var == null) {
                    qc1Var = vo1.f7302for;
                }
                Cthrows cthrowsM31917throws = m31917throws(cdo.f28538new, vo1.f7302for, false);
                if (cdo.m31971for()) {
                    cdo.f28537if.f240if = cthrowsM31917throws;
                    auVarM31969do = m31920while(cdo, new au(m31902import(cthrowsM31917throws)));
                    cdo.m31975try(this.f28486case.m(), auVarM31969do);
                } else {
                    auVarM31969do = m31920while(cdo, new au(cthrowsM31917throws));
                    cdo.f28537if = auVarM31969do;
                }
            }
            return m31907private(cdo, auVarM31969do, tokenStream, i2, qc1Var);
        } finally {
            this.f28492this = null;
            this.f28489const = null;
            tokenStream.seek(i2);
            tokenStream.release(iMark);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public Cthrows mo31914switch(Cthrows cthrows, int i, boolean z) {
        if (this.f28492this == null) {
            this.f28492this = new h20<>();
        }
        Cthrows cthrows2 = new Cthrows(z);
        Iterator<Cswitch> it = cthrows.iterator();
        ArrayList arrayList = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Cswitch next = it.next();
            Cfinally cfinally = next.f6323do;
            if (!(cfinally instanceof yo1)) {
                int iM2309for = cfinally.m2309for();
                for (int i2 = 0; i2 < iM2309for; i2++) {
                    Cfinally cfinallyB = b(next.f6323do.m2306catch(i2), i);
                    if (cfinallyB != null) {
                        cthrows2.m7937if(new Cswitch(next, cfinallyB), this.f28492this);
                    }
                }
            } else if (z || i == -1) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(next);
            }
        }
        Cthrows cthrowsK = (arrayList != null || i == -1 || (cthrows2.size() != 1 && f(cthrows2) == 0)) ? null : cthrows2;
        if (cthrowsK == null) {
            Cthrows cthrows3 = new Cthrows(z);
            HashSet hashSet = new HashSet();
            boolean z2 = i == -1;
            Iterator<Cswitch> it2 = cthrows2.iterator();
            while (it2.hasNext()) {
                m31909public(it2.next(), cthrows3, hashSet, false, z, z2);
                cthrows3 = cthrows3;
            }
            cthrowsK = cthrows3;
        }
        if (i == -1) {
            cthrowsK = k(cthrowsK, cthrowsK == cthrows2);
        }
        if (arrayList != null && (!z || !Cgoto.hasConfigInRuleStopState(cthrowsK))) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                cthrowsK.m7937if((Cswitch) it3.next(), this.f28492this);
            }
        }
        if (cthrowsK.isEmpty()) {
            return null;
        }
        return cthrowsK;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final Cgoto m31915synchronized() {
        return this.f28491goto;
    }

    /* renamed from: throw, reason: not valid java name */
    public au m31916throw(Cdo cdo, au auVar, int i, au auVar2) {
        if (auVar2 == null) {
            return null;
        }
        au auVarM31920while = m31920while(cdo, auVar2);
        if (auVar == null || i < -1 || i > this.f1619do.f6259else) {
            return auVarM31920while;
        }
        synchronized (auVar) {
            if (auVar.f238for == null) {
                auVar.f238for = new au[this.f1619do.f6259else + 1 + 1];
            }
            auVar.f238for[i + 1] = auVarM31920while;
        }
        return auVarM31920while;
    }

    /* renamed from: throws, reason: not valid java name */
    public Cthrows m31917throws(Cfinally cfinally, vo1 vo1Var, boolean z) {
        Celse celseM31883try = Celse.m31883try(this.f1619do, vo1Var);
        Cthrows cthrows = new Cthrows(z);
        int i = 0;
        while (i < cfinally.m2309for()) {
            int i2 = i + 1;
            m31909public(new Cswitch(cfinally.m2306catch(i).f28465do, i2, celseM31883try), cthrows, new HashSet(), true, z, false);
            i = i2;
        }
        return cthrows;
    }

    /* renamed from: transient, reason: not valid java name */
    public String m31918transient(TokenStream tokenStream) {
        return e(tokenStream.LA(1));
    }

    /* renamed from: volatile, reason: not valid java name */
    public BitSet m31919volatile(Cthrows cthrows) {
        if (cthrows.f6566new == 0) {
            return cthrows.f6568try;
        }
        BitSet bitSet = new BitSet();
        bitSet.set(cthrows.f6566new);
        return bitSet;
    }

    /* renamed from: while, reason: not valid java name */
    public au m31920while(Cdo cdo, au auVar) {
        if (auVar == Cextends.f1618try) {
            return auVar;
        }
        synchronized (cdo.f28535do) {
            au auVar2 = cdo.f28535do.get(auVar);
            if (auVar2 != null) {
                return auVar2;
            }
            auVar.f236do = cdo.f28535do.size();
            if (!auVar.f240if.m7939this()) {
                auVar.f240if.m7929break(this);
                auVar.f240if.m7931catch(true);
            }
            cdo.f28535do.put(auVar, auVar);
            return auVar;
        }
    }

    public Cnew(Cgoto cgoto, Cstatic cstatic, Cdo[] cdoArr, ef1 ef1Var) {
        super(cstatic, ef1Var);
        this.f28491goto = Cgoto.LL;
        this.f28486case = cgoto;
        this.f28490else = cdoArr;
    }
}

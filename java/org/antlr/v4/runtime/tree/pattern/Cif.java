package org.antlr.v4.runtime.tree.pattern;

import android.support.v4.hc1;
import android.support.v4.hp;
import android.support.v4.is0;
import android.support.v4.jt0;
import android.support.v4.kc1;
import android.support.v4.lc1;
import android.support.v4.pc1;
import android.support.v4.qc1;
import android.support.v4.ql1;
import android.support.v4.v01;
import android.support.v4.x72;
import android.support.v4.zo1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.antlr.v4.runtime.Cfor;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

/* renamed from: org.antlr.v4.runtime.tree.pattern.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private final is0 f28583do;

    /* renamed from: if, reason: not valid java name */
    private final Cgoto f28585if;

    /* renamed from: for, reason: not valid java name */
    public String f28584for = "<";

    /* renamed from: new, reason: not valid java name */
    public String f28586new = ">";

    /* renamed from: try, reason: not valid java name */
    public String f28587try = "\\";

    /* renamed from: org.antlr.v4.runtime.tree.pattern.if$do, reason: invalid class name */
    public static class Cdo extends RuntimeException {
        public Cdo(Throwable th) {
            super(th);
        }
    }

    /* renamed from: org.antlr.v4.runtime.tree.pattern.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0385if extends RuntimeException {
    }

    public Cif(is0 is0Var, Cgoto cgoto) {
        this.f28583do = is0Var;
        this.f28585if = cgoto;
    }

    /* renamed from: break, reason: not valid java name */
    public void m32087break(String str, String str2, String str3) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("start cannot be null or empty");
        }
        if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("stop cannot be null or empty");
        }
        this.f28584for = str;
        this.f28586new = str2;
        this.f28587try = str3;
    }

    /* renamed from: case, reason: not valid java name */
    public kc1 m32088case(ParseTree parseTree, String str, int i) {
        return m32098try(parseTree, m32091do(str, i));
    }

    /* renamed from: catch, reason: not valid java name */
    public List<org.antlr.v4.runtime.tree.pattern.Cdo> m32089catch(String str) {
        int iIntValue;
        int length;
        int length2;
        int length3;
        int length4 = str.length();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        while (i < length4) {
            if (i == str.indexOf(this.f28587try + this.f28584for, i)) {
                length = this.f28587try.length();
                length2 = this.f28584for.length();
            } else {
                if (i == str.indexOf(this.f28587try + this.f28586new, i)) {
                    length = this.f28587try.length();
                    length2 = this.f28586new.length();
                } else {
                    if (i == str.indexOf(this.f28584for, i)) {
                        arrayList2.add(Integer.valueOf(i));
                        length3 = this.f28584for.length();
                    } else if (i == str.indexOf(this.f28586new, i)) {
                        arrayList3.add(Integer.valueOf(i));
                        length3 = this.f28586new.length();
                    } else {
                        i++;
                    }
                    i += length3;
                }
            }
            length3 = length + length2;
            i += length3;
        }
        if (arrayList2.size() > arrayList3.size()) {
            throw new IllegalArgumentException("unterminated tag in pattern: " + str);
        }
        if (arrayList2.size() < arrayList3.size()) {
            throw new IllegalArgumentException("missing start tag in pattern: " + str);
        }
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((Integer) arrayList2.get(i2)).intValue() >= ((Integer) arrayList3.get(i2)).intValue()) {
                throw new IllegalArgumentException("tag delimiters out of order in pattern: " + str);
            }
        }
        if (size == 0) {
            arrayList.add(new Cnew(str.substring(0, length4)));
        }
        if (size > 0 && ((Integer) arrayList2.get(0)).intValue() > 0) {
            arrayList.add(new Cnew(str.substring(0, ((Integer) arrayList2.get(0)).intValue())));
        }
        int i3 = 0;
        while (i3 < size) {
            String strSubstring = str.substring(((Integer) arrayList2.get(i3)).intValue() + this.f28584for.length(), ((Integer) arrayList3.get(i3)).intValue());
            String strSubstring2 = null;
            int iIndexOf = strSubstring.indexOf(58);
            if (iIndexOf >= 0) {
                strSubstring2 = strSubstring.substring(0, iIndexOf);
                strSubstring = strSubstring.substring(iIndexOf + 1, strSubstring.length());
            }
            arrayList.add(new Cfor(strSubstring2, strSubstring));
            int i4 = i3 + 1;
            if (i4 < size) {
                arrayList.add(new Cnew(str.substring(((Integer) arrayList3.get(i3)).intValue() + this.f28586new.length(), ((Integer) arrayList2.get(i4)).intValue())));
            }
            i3 = i4;
        }
        if (size > 0 && (iIntValue = ((Integer) arrayList3.get(size - 1)).intValue() + this.f28586new.length()) < length4) {
            arrayList.add(new Cnew(str.substring(iIntValue, length4)));
        }
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            org.antlr.v4.runtime.tree.pattern.Cdo cdo = (org.antlr.v4.runtime.tree.pattern.Cdo) arrayList.get(i5);
            if (cdo instanceof Cnew) {
                Cnew cnew = (Cnew) cdo;
                String strReplace = cnew.m32099do().replace(this.f28587try, "");
                if (strReplace.length() < cnew.m32099do().length()) {
                    arrayList.set(i5, new Cnew(strReplace));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: class, reason: not valid java name */
    public List<? extends Token> m32090class(String str) {
        List<org.antlr.v4.runtime.tree.pattern.Cdo> listM32089catch = m32089catch(str);
        ArrayList arrayList = new ArrayList();
        for (org.antlr.v4.runtime.tree.pattern.Cdo cdo : listM32089catch) {
            if (cdo instanceof Cfor) {
                Cfor cfor = (Cfor) cdo;
                if (Character.isUpperCase(cfor.m32086if().charAt(0))) {
                    Integer numValueOf = Integer.valueOf(this.f28585if.m32084while(cfor.m32086if()));
                    if (numValueOf.intValue() == 0) {
                        throw new IllegalArgumentException("Unknown token " + cfor.m32086if() + " in pattern: " + str);
                    }
                    arrayList.add(new x72(cfor.m32086if(), numValueOf.intValue(), cfor.m32085do()));
                } else {
                    if (!Character.isLowerCase(cfor.m32086if().charAt(0))) {
                        throw new IllegalArgumentException("invalid tag: " + cfor.m32086if() + " in pattern: " + str);
                    }
                    int iO = this.f28585if.o(cfor.m32086if());
                    if (iO == -1) {
                        throw new IllegalArgumentException("Unknown rule " + cfor.m32086if() + " in pattern: " + str);
                    }
                    arrayList.add(new zo1(cfor.m32086if(), this.f28585if.a().f6261goto[iO], cfor.m32085do()));
                }
            } else {
                this.f28583do.mo3565throws(new org.antlr.v4.runtime.Cif(((Cnew) cdo).m32099do()));
                Token tokenNextToken = this.f28583do.nextToken();
                while (tokenNextToken.getType() != -1) {
                    arrayList.add(tokenNextToken);
                    tokenNextToken = this.f28583do.nextToken();
                }
            }
        }
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public lc1 m32091do(String str, int i) {
        hp hpVar = new hp(new jt0(m32090class(str)));
        pc1 pc1Var = new pc1(this.f28585if.mo2320else(), this.f28585if.mo2323native(), Arrays.asList(this.f28585if.mo2318class()), this.f28585if.a(), hpVar);
        try {
            pc1Var.H(new Cfor());
            qc1 qc1VarU = pc1Var.U(i);
            if (hpVar.LA(1) == -1) {
                return new lc1(this, str, i, qc1VarU);
            }
            throw new C0385if();
        } catch (hc1 e) {
            throw ((ql1) e.getCause());
        } catch (ql1 e2) {
            throw e2;
        } catch (Exception e3) {
            throw new Cdo(e3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public ParseTree m32092else(ParseTree parseTree, ParseTree parseTree2, v01<String, ParseTree> v01Var) {
        if (parseTree == null) {
            throw new IllegalArgumentException("tree cannot be null");
        }
        if (parseTree2 == null) {
            throw new IllegalArgumentException("patternTree cannot be null");
        }
        if ((parseTree instanceof TerminalNode) && (parseTree2 instanceof TerminalNode)) {
            TerminalNode terminalNode = (TerminalNode) parseTree;
            TerminalNode terminalNode2 = (TerminalNode) parseTree2;
            if (terminalNode.getSymbol().getType() == terminalNode2.getSymbol().getType()) {
                if (terminalNode2.getSymbol() instanceof x72) {
                    x72 x72Var = (x72) terminalNode2.getSymbol();
                    v01Var.map(x72Var.getTokenName(), parseTree);
                    if (x72Var.getLabel() == null) {
                        return null;
                    }
                    v01Var.map(x72Var.getLabel(), parseTree);
                    return null;
                }
                if (terminalNode.getText().equals(terminalNode2.getText())) {
                    return null;
                }
            }
            return terminalNode;
        }
        if (!(parseTree instanceof qc1) || !(parseTree2 instanceof qc1)) {
            return parseTree;
        }
        qc1 qc1Var = (qc1) parseTree;
        qc1 qc1Var2 = (qc1) parseTree2;
        zo1 zo1VarM32096new = m32096new(qc1Var2);
        if (zo1VarM32096new != null) {
            if (qc1Var.getRuleContext().mo6627try() != qc1Var2.getRuleContext().mo6627try()) {
                return qc1Var;
            }
            v01Var.map(zo1VarM32096new.m10263if(), parseTree);
            if (zo1VarM32096new.m10262do() == null) {
                return null;
            }
            v01Var.map(zo1VarM32096new.m10262do(), parseTree);
            return null;
        }
        if (qc1Var.getChildCount() != qc1Var2.getChildCount()) {
            return qc1Var;
        }
        int childCount = qc1Var.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ParseTree parseTreeM32092else = m32092else(qc1Var.getChild(i), parseTree2.getChild(i), v01Var);
            if (parseTreeM32092else != null) {
                return parseTreeM32092else;
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public Cgoto m32093for() {
        return this.f28585if;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m32094goto(ParseTree parseTree, lc1 lc1Var) {
        return m32092else(parseTree, lc1Var.m4643try(), new v01<>()) == null;
    }

    /* renamed from: if, reason: not valid java name */
    public is0 m32095if() {
        return this.f28583do;
    }

    /* renamed from: new, reason: not valid java name */
    public zo1 m32096new(ParseTree parseTree) {
        if (!(parseTree instanceof RuleNode)) {
            return null;
        }
        RuleNode ruleNode = (RuleNode) parseTree;
        if (ruleNode.getChildCount() != 1 || !(ruleNode.getChild(0) instanceof TerminalNode)) {
            return null;
        }
        TerminalNode terminalNode = (TerminalNode) ruleNode.getChild(0);
        if (terminalNode.getSymbol() instanceof zo1) {
            return (zo1) terminalNode.getSymbol();
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m32097this(ParseTree parseTree, String str, int i) {
        return m32094goto(parseTree, m32091do(str, i));
    }

    /* renamed from: try, reason: not valid java name */
    public kc1 m32098try(ParseTree parseTree, lc1 lc1Var) {
        v01<String, ParseTree> v01Var = new v01<>();
        return new kc1(parseTree, lc1Var, v01Var, m32092else(parseTree, lc1Var.m4643try(), v01Var));
    }
}

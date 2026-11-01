package android.support.v4;

import java.security.cert.PolicyNode;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class za1 implements PolicyNode {

    /* renamed from: case, reason: not valid java name */
    public String f8496case;

    /* renamed from: do, reason: not valid java name */
    public List f8497do;

    /* renamed from: else, reason: not valid java name */
    public boolean f8498else;

    /* renamed from: for, reason: not valid java name */
    public Set f8499for;

    /* renamed from: if, reason: not valid java name */
    public int f8500if;

    /* renamed from: new, reason: not valid java name */
    public PolicyNode f8501new;

    /* renamed from: try, reason: not valid java name */
    public Set f8502try;

    public za1(List list, int i, Set set, PolicyNode policyNode, Set set2, String str, boolean z) {
        this.f8497do = list;
        this.f8500if = i;
        this.f8499for = set;
        this.f8501new = policyNode;
        this.f8502try = set2;
        this.f8496case = str;
        this.f8498else = z;
    }

    /* renamed from: case, reason: not valid java name */
    public void m10142case(Set set) {
        this.f8499for = set;
    }

    public Object clone() {
        return m10147if();
    }

    /* renamed from: do, reason: not valid java name */
    public void m10143do(za1 za1Var) {
        this.f8497do.add(za1Var);
        za1Var.m10144else(this);
    }

    /* renamed from: else, reason: not valid java name */
    public void m10144else(za1 za1Var) {
        this.f8501new = za1Var;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m10145for() {
        return !this.f8497do.isEmpty();
    }

    @Override // java.security.cert.PolicyNode
    public Iterator getChildren() {
        return this.f8497do.iterator();
    }

    @Override // java.security.cert.PolicyNode
    public int getDepth() {
        return this.f8500if;
    }

    @Override // java.security.cert.PolicyNode
    public Set getExpectedPolicies() {
        return this.f8499for;
    }

    @Override // java.security.cert.PolicyNode
    public PolicyNode getParent() {
        return this.f8501new;
    }

    @Override // java.security.cert.PolicyNode
    public Set getPolicyQualifiers() {
        return this.f8502try;
    }

    @Override // java.security.cert.PolicyNode
    public String getValidPolicy() {
        return this.f8496case;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m10146goto(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(this.f8496case);
        stringBuffer.append(" {\n");
        for (int i = 0; i < this.f8497do.size(); i++) {
            stringBuffer.append(((za1) this.f8497do.get(i)).m10146goto(str + "    "));
        }
        stringBuffer.append(str);
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public za1 m10147if() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f8499for.iterator();
        while (it.hasNext()) {
            hashSet.add(new String((String) it.next()));
        }
        HashSet hashSet2 = new HashSet();
        Iterator it2 = this.f8502try.iterator();
        while (it2.hasNext()) {
            hashSet2.add(new String((String) it2.next()));
        }
        za1 za1Var = new za1(new ArrayList(), this.f8500if, hashSet, null, hashSet2, new String(this.f8496case), this.f8498else);
        Iterator it3 = this.f8497do.iterator();
        while (it3.hasNext()) {
            za1 za1VarM10147if = ((za1) it3.next()).m10147if();
            za1VarM10147if.m10144else(za1Var);
            za1Var.m10143do(za1VarM10147if);
        }
        return za1Var;
    }

    @Override // java.security.cert.PolicyNode
    public boolean isCritical() {
        return this.f8498else;
    }

    /* renamed from: new, reason: not valid java name */
    public void m10148new(za1 za1Var) {
        this.f8497do.remove(za1Var);
    }

    public String toString() {
        return m10146goto("");
    }

    /* renamed from: try, reason: not valid java name */
    public void m10149try(boolean z) {
        this.f8498else = z;
    }
}

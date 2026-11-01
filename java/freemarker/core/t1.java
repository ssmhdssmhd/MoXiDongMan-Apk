package freemarker.core;

import android.support.v4.dl2;
import android.support.v4.fl2;
import android.support.v4.nl2;
import freemarker.core.h0;
import freemarker.template.Creturn;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
final class t1 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    public final ArrayList<h0> f24195goto;

    public t1(ArrayList<h0> arrayList) {
        this.f24195goto = arrayList;
        arrayList.trimToSize();
    }

    private void d(int i) {
        ArrayList<h0> arrayList = this.f24195goto;
        if (arrayList == null || i >= arrayList.size()) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return y.f24291this;
    }

    public TemplateSequenceModel e(d0 d0Var) throws TemplateException {
        TemplateSequenceModel templateSequenceModel = (TemplateSequenceModel) m28055throws(d0Var);
        Creturn creturn = new Creturn(templateSequenceModel.size());
        for (int i = 0; i < this.f24195goto.size(); i++) {
            h0 h0Var = this.f24195goto.get(i);
            if (h0Var instanceof x3) {
                x3 x3Var = (x3) h0Var;
                String asString = x3Var.getAsString();
                try {
                    creturn.add(d0Var.H2(asString, null));
                } catch (IOException e) {
                    throw new nl2(x3Var, "Couldn't import library ", new fl2(asString), ": ", new dl2(e));
                }
            } else {
                creturn.add(templateSequenceModel.get(i));
            }
        }
        return creturn;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        ArrayList<h0> arrayList = this.f24195goto;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public List f(d0 d0Var) throws TemplateException {
        int size = this.f24195goto.size();
        if (size == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 1) {
            return Collections.singletonList(this.f24195goto.get(0).m28055throws(d0Var));
        }
        ArrayList arrayList = new ArrayList(this.f24195goto.size());
        ListIterator<h0> listIterator = this.f24195goto.listIterator();
        while (listIterator.hasNext()) {
            arrayList.add(listIterator.next().m28055throws(d0Var));
        }
        return arrayList;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        StringBuilder sb = new StringBuilder("[");
        int size = this.f24195goto.size();
        for (int i = 0; i < size; i++) {
            sb.append(this.f24195goto.get(i).mo27815for());
            if (i != size - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public List g(d0 d0Var) throws TemplateException {
        int size = this.f24195goto.size();
        if (size == 0) {
            return Collections.EMPTY_LIST;
        }
        if (size == 1) {
            return Collections.singletonList(this.f24195goto.get(0).mo28045default(d0Var));
        }
        ArrayList arrayList = new ArrayList(this.f24195goto.size());
        ListIterator<h0> listIterator = this.f24195goto.listIterator();
        while (listIterator.hasNext()) {
            arrayList.add(listIterator.next().mo28045default(d0Var));
        }
        return arrayList;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        d(i);
        return f3.f23750case;
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        if (this.f23810else != null) {
            return true;
        }
        for (int i = 0; i < this.f24195goto.size(); i++) {
            if (!this.f24195goto.get(i).mo27817instanceof()) {
                return false;
            }
        }
        return true;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        Creturn creturn = new Creturn(this.f24195goto.size());
        Iterator<h0> it = this.f24195goto.iterator();
        while (it.hasNext()) {
            h0 next = it.next();
            TemplateModel templateModelM28055throws = next.m28055throws(d0Var);
            if (d0Var == null || !d0Var.y()) {
                next.m28052public(templateModelM28055throws, d0Var);
            }
            creturn.add(templateModelM28055throws);
        }
        return creturn;
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        ArrayList arrayList = (ArrayList) this.f24195goto.clone();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            listIterator.set(((h0) listIterator.next()).m28053return(str, h0Var, cdo));
        }
        return new t1(arrayList);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        d(i);
        return this.f24195goto.get(i);
    }
}

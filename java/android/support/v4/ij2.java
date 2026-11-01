package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Stack;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;
import org.apache.commons.lang3.Cclass;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.antlr.Cfor;
import org.seimicrawler.xpath.antlr.Cif;

/* loaded from: classes3.dex */
public class ij2 extends Cif<dj2> {

    /* renamed from: do, reason: not valid java name */
    private Stack<es1> f2793do = new Stack<>();

    /* renamed from: if, reason: not valid java name */
    private es1 f2794if;

    public ij2(Elements elements) {
        this.f2794if = es1.m2006new(elements);
        this.f2793do.push(es1.m2006new(elements).m2007break(this.f2794if));
    }

    /* renamed from: new, reason: not valid java name */
    private es1 m3473new() {
        return this.f2793do.peek();
    }

    /* renamed from: try, reason: not valid java name */
    private void m3474try(Elements elements) {
        this.f2793do.peek().m2013this(elements);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitUnaryExprNoRoot(Cfor.Cdefault cdefault) {
        dj2 dj2VarVisit = visit(cdefault.m38089volatile());
        return cdefault.f34163goto == null ? dj2VarVisit : dj2.m1362break(Double.valueOf(-dj2VarVisit.m1370for().doubleValue()));
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitAxisSpecifier(Cfor.Ctry ctry) {
        if (ctry.m38152strictfp() != null) {
            return as1.m321for(ctry.m38152strictfp().getText()).apply(m3473new().m2010do());
        }
        if ("@".equals(ctry.getText())) {
            return dj2.m1362break(null).m1371goto();
        }
        return null;
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitAbbreviatedStep(Cfor.Cdo cdo) {
        if (!"..".equals(cdo.getText())) {
            return dj2.m1362break(m3473new().m2010do());
        }
        HashSet hashSet = new HashSet();
        Elements elements = new Elements();
        Iterator<Element> it = m3473new().m2010do().iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().parent());
        }
        elements.addAll(hashSet);
        return dj2.m1362break(elements);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitEqualityExpr(Cfor.Ccase ccase) {
        List<Cfor.Cstatic> listM38078transient = ccase.m38078transient();
        if (listM38078transient.size() == 1) {
            return visit(listM38078transient.get(0));
        }
        if (listM38078transient.size() == 2) {
            dj2 dj2VarVisit = visit(listM38078transient.get(0));
            dj2 dj2VarVisit2 = visit(listM38078transient.get(1));
            return "=".equals(ccase.f34161goto.getText()) ? dj2VarVisit.m1376public().equals(dj2VarVisit2.m1376public()) ? dj2.m1362break(Boolean.valueOf(dj2VarVisit.equals(dj2VarVisit2))) : dj2.m1362break(Boolean.valueOf(Objects.equals(dj2VarVisit.m1368else(), dj2VarVisit2.m1368else()))) : dj2VarVisit.m1376public().equals(dj2VarVisit2.m1376public()) ? dj2.m1362break(Boolean.valueOf(!dj2VarVisit.equals(dj2VarVisit2))) : dj2.m1362break(Boolean.valueOf(!Objects.equals(dj2VarVisit.m1368else(), dj2VarVisit2.m1368else())));
        }
        throw new hj2("error equalityExpr near:" + ccase.getText());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitExpr(Cfor.Celse celse) {
        return visit(celse.m38090strictfp());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitFilterExpr(Cfor.Cgoto cgoto) {
        return visit(cgoto.m38104interface());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitUnionExprNoRoot(Cfor.Cextends cextends) {
        if (cextends.m38091interface() == null && !cextends.m38091interface().m8923case()) {
            return visit(cextends.m38092protected());
        }
        dj2 dj2VarVisit = visit(cextends.m38091interface());
        if (cextends.f34164goto == null) {
            return dj2VarVisit;
        }
        this.f2793do.push(es1.m2005if(m3473new().m2014try()));
        dj2 dj2VarVisit2 = visit(cextends.m38092protected());
        this.f2793do.pop();
        if (dj2VarVisit.m1377super()) {
            if (dj2VarVisit2.m1377super()) {
                dj2VarVisit.m1375new().addAll(dj2VarVisit2.m1375new());
            } else {
                Element element = new Element(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
                element.appendText(dj2VarVisit2.m1368else());
                dj2VarVisit.m1375new().add(element);
            }
            return dj2VarVisit;
        }
        if (dj2VarVisit.m1374native()) {
            if (dj2VarVisit2.m1377super()) {
                Element element2 = new Element(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
                element2.appendText(dj2VarVisit.m1368else());
                dj2VarVisit2.m1375new().add(element2);
                return dj2VarVisit2;
            }
            return dj2.m1362break(dj2VarVisit.m1368else() + dj2VarVisit2.m1368else());
        }
        if (dj2VarVisit.m1366const()) {
            if (dj2VarVisit2.m1366const()) {
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit2.m1367do().booleanValue() | dj2VarVisit.m1367do().booleanValue()));
            }
            if (dj2VarVisit2.m1377super()) {
                Element element3 = new Element(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
                element3.appendText(dj2VarVisit.m1368else());
                dj2VarVisit2.m1375new().add(element3);
                return dj2VarVisit2;
            }
            if (dj2VarVisit2.m1374native()) {
                return dj2.m1362break(dj2VarVisit.m1367do() + dj2VarVisit2.m1368else());
            }
            throw new gj2("can not merge val1=" + dj2VarVisit.m1367do() + ",val2=" + dj2VarVisit2.m1368else());
        }
        if (!dj2VarVisit.m1373import()) {
            LinkedList linkedList = new LinkedList();
            if (Cclass.D(dj2VarVisit.m1368else())) {
                linkedList.add(dj2VarVisit.m1368else());
            }
            if (Cclass.D(dj2VarVisit2.m1368else())) {
                linkedList.add(dj2VarVisit2.m1368else());
            }
            return dj2.m1362break(Cclass.J(linkedList, ","));
        }
        if (dj2VarVisit2.m1374native()) {
            return dj2.m1362break(dj2VarVisit.m1370for() + dj2VarVisit2.m1368else());
        }
        if (dj2VarVisit2.m1377super()) {
            Element element4 = new Element(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            element4.appendText(dj2VarVisit.m1368else());
            dj2VarVisit2.m1375new().add(element4);
            return dj2VarVisit2;
        }
        throw new gj2("can not merge val1=" + dj2VarVisit.m1370for() + ",val2=" + dj2VarVisit2.m1368else());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitPrimaryExpr(Cfor.Cpublic cpublic) {
        if (cpublic.m38118interface() != null && !cpublic.m38118interface().m8923case()) {
            return visit(cpublic.m38118interface());
        }
        if (cpublic.m38119protected() != null && !cpublic.m38119protected().m8923case()) {
            return visit(cpublic.m38119protected());
        }
        if (cpublic.m38120strictfp() != null) {
            return dj2.m1362break(cpublic.m38120strictfp().getText()).m1364catch();
        }
        if (cpublic.m38122volatile() != null) {
            return dj2.m1362break(f51.m2157for(cpublic.m38122volatile().getText()));
        }
        throw new hj2("not support variableReference:" + cpublic.getText());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitAbsoluteLocationPathNoroot(Cfor.Cif cif) {
        if (Objects.equals(cif.f34166goto.getText(), "//")) {
            m3473new().m2012goto();
        }
        return visit(cif.m38107interface());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitQName(Cfor.Creturn creturn) {
        List<Cfor.Cfinal> listM38123strictfp = creturn.m38123strictfp();
        if (listM38123strictfp == null) {
            return null;
        }
        if (listM38123strictfp.size() <= 1) {
            return visit(listM38123strictfp.get(0));
        }
        LinkedList linkedList = new LinkedList();
        Iterator<Cfor.Cfinal> it = listM38123strictfp.iterator();
        while (it.hasNext()) {
            dj2 dj2VarVisit = visit(it.next());
            if (dj2VarVisit != null) {
                linkedList.add(dj2VarVisit.m1368else());
            }
        }
        return dj2.m1362break(Cclass.J(linkedList, ":"));
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitFunctionCall(Cfor.Cthis cthis) {
        LinkedList linkedList = new LinkedList();
        dj2 dj2VarVisit = visit(cthis.m38141interface());
        for (Cfor.Celse celse : cthis.m38142strictfp()) {
            this.f2793do.push(es1.m2005if(m3473new()));
            linkedList.add(visit(celse));
            this.f2793do.pop();
        }
        return as1.m319do(dj2VarVisit.m1368else()).call(m3473new(), linkedList);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitRelationalExpr(Cfor.Cstatic cstatic) {
        List<Cfor.C0492for> listI = cstatic.i();
        if (listI.size() == 1) {
            return visit(listI.get(0));
        }
        if (listI.size() != 2) {
            throw new hj2("error equalityExpr near:" + cstatic.getText());
        }
        dj2 dj2VarVisit = visit(listI.get(0));
        dj2 dj2VarVisit2 = visit(listI.get(1));
        switch (cstatic.f34168goto.getType()) {
            case 24:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.compareTo(dj2VarVisit2) < 0));
            case 25:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.compareTo(dj2VarVisit2) > 0));
            case 26:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.compareTo(dj2VarVisit2) <= 0));
            case 27:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.compareTo(dj2VarVisit2) >= 0));
            case 28:
            case 29:
            default:
                throw new hj2("unknown operator" + cstatic.f34168goto.getText());
            case 30:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.m1368else().startsWith(dj2VarVisit2.m1368else())));
            case 31:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.m1368else().endsWith(dj2VarVisit2.m1368else())));
            case 32:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.m1368else().contains(dj2VarVisit2.m1368else())));
            case 33:
                return dj2.m1362break(Boolean.valueOf(dj2VarVisit.m1368else().matches(dj2VarVisit2.m1368else())));
            case 34:
                return dj2.m1362break(Boolean.valueOf(!dj2VarVisit.m1368else().matches(dj2VarVisit2.m1368else())));
        }
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitAdditiveExpr(Cfor.C0492for c0492for) {
        List<Cfor.Cconst> listM38102transient = c0492for.m38102transient();
        if (listM38102transient.size() == 1) {
            return visit(listM38102transient.get(0));
        }
        Double dM1370for = visit(listM38102transient.get(0)).m1370for();
        String text = null;
        for (int i = 1; i < c0492for.getChildCount(); i++) {
            ParseTree child = c0492for.getChild(i);
            if (child instanceof Cfor.Cconst) {
                dj2 dj2VarVisit = visit(child);
                if ("+".equals(text)) {
                    dM1370for = Double.valueOf(dM1370for.doubleValue() + dj2VarVisit.m1370for().doubleValue());
                } else {
                    if (!"-".equals(text)) {
                        throw new hj2("syntax error, " + c0492for.getText());
                    }
                    dM1370for = Double.valueOf(dM1370for.doubleValue() - dj2VarVisit.m1370for().doubleValue());
                }
            } else {
                text = child.getText();
            }
        }
        return dj2.m1362break(dM1370for);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitMultiplicativeExpr(Cfor.Cconst cconst) {
        if (cconst.m38084protected() == null || cconst.m38084protected().m8923case()) {
            return visit(cconst.m38086transient());
        }
        dj2 dj2VarVisit = visit(cconst.m38086transient());
        dj2 dj2VarVisit2 = visit(cconst.m38084protected());
        switch (cconst.f34162goto.getType()) {
            case 17:
                return dj2.m1362break(Double.valueOf(dj2VarVisit.m1370for().doubleValue() * dj2VarVisit2.m1370for().doubleValue()));
            case 18:
                return dj2.m1362break(Double.valueOf(dj2VarVisit.m1370for().doubleValue() / dj2VarVisit2.m1370for().doubleValue()));
            case 19:
                return dj2.m1362break(Double.valueOf(dj2VarVisit.m1370for().doubleValue() % dj2VarVisit2.m1370for().doubleValue()));
            default:
                throw new hj2("syntax error, " + cconst.getText());
        }
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitNCName(Cfor.Cfinal cfinal) {
        return cfinal.m38095strictfp() != null ? dj2.m1362break(cfinal.m38095strictfp().getText()).m1364catch() : dj2.m1362break(cfinal.m38096volatile().getText()).m1364catch();
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitRelativeLocationPath(Cfor.Cswitch cswitch) {
        dj2 dj2VarVisit = null;
        for (int i = 0; i < cswitch.getChildCount(); i++) {
            ParseTree child = cswitch.getChild(i);
            if (child instanceof Cfor.Cthrows) {
                dj2VarVisit = visit(child);
                if (dj2VarVisit.m1377super()) {
                    m3474try(dj2VarVisit.m1375new());
                }
            } else if ("//".equals(child.getText())) {
                m3473new().m2012goto();
            } else {
                m3473new().m2011else();
            }
        }
        return dj2VarVisit;
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitStep(Cfor.Cthrows cthrows) {
        boolean z;
        dj2 dj2VarVisit;
        if (cthrows.m38149strictfp() != null && !cthrows.m38149strictfp().m8923case()) {
            return visit(cthrows.m38149strictfp());
        }
        boolean z2 = false;
        if (cthrows.m38151volatile() == null || cthrows.m38151volatile().m8923case() || (dj2VarVisit = visit(cthrows.m38151volatile())) == null) {
            z = false;
        } else {
            if (dj2VarVisit.m1377super()) {
                m3474try(dj2VarVisit.m1375new());
            } else if (dj2VarVisit.m1365class()) {
                z = true;
                z2 = true;
            }
            z = true;
        }
        if (cthrows.m38147interface() != null && !cthrows.m38147interface().m8923case()) {
            dj2 dj2VarVisit2 = visit(cthrows.m38147interface());
            if (z2) {
                Elements elementsM2010do = m3473new().m2010do();
                String strM1368else = dj2VarVisit2.m1368else();
                if (!m3473new().m2008case()) {
                    if (elementsM2010do.size() == 1) {
                        return dj2.m1362break(m3473new().m2009catch().attr(strM1368else));
                    }
                    LinkedList linkedList = new LinkedList();
                    Iterator<Element> it = elementsM2010do.iterator();
                    while (it.hasNext()) {
                        linkedList.add(it.next().attr(strM1368else));
                    }
                    return dj2.m1362break(linkedList);
                }
                if (elementsM2010do.size() == 1) {
                    Elements elementsSelect = m3473new().m2009catch().select("[" + strM1368else + "]");
                    LinkedList linkedList2 = new LinkedList();
                    Iterator<Element> it2 = elementsSelect.iterator();
                    while (it2.hasNext()) {
                        linkedList2.add(it2.next().attr(strM1368else));
                    }
                    return dj2.m1362break(linkedList2);
                }
                Elements elements = new Elements();
                Iterator<Element> it3 = elementsM2010do.iterator();
                while (it3.hasNext()) {
                    elements.addAll(it3.next().select("[" + strM1368else + "]"));
                }
                LinkedList linkedList3 = new LinkedList();
                Iterator<Element> it4 = elements.iterator();
                while (it4.hasNext()) {
                    linkedList3.add(it4.next().attr(strM1368else));
                }
                return dj2.m1362break(linkedList3);
            }
            if (!dj2VarVisit2.m1379throw()) {
                return dj2VarVisit2;
            }
            String strM1368else2 = dj2VarVisit2.m1368else();
            Elements elementsM2010do2 = m3473new().m2010do();
            if (m3473new().m2008case()) {
                m3474try(elementsM2010do2.select(strM1368else2));
            } else {
                Elements elements2 = new Elements();
                Iterator<Element> it5 = m3473new().m2010do().iterator();
                while (it5.hasNext()) {
                    Element next = it5.next();
                    if (!z) {
                        Iterator<Element> it6 = next.children().iterator();
                        while (it6.hasNext()) {
                            Element next2 = it6.next();
                            if (next2.nodeName().equals(strM1368else2) || "*".equals(strM1368else2)) {
                                elements2.add(next2);
                            }
                        }
                    } else if (next.nodeName().equals(strM1368else2) || "*".equals(strM1368else2)) {
                        elements2.add(next);
                    }
                }
                m3474try(elements2);
            }
        }
        if (cthrows.m38148protected() != null && cthrows.m38148protected().size() > 0) {
            Iterator<Cfor.Cnative> it7 = cthrows.m38148protected().iterator();
            while (it7.hasNext()) {
                m3474try(visit(it7.next()).m1375new());
            }
        }
        return dj2.m1362break(m3473new().m2010do());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitNameTest(Cfor.Csuper csuper) {
        if ("*".equals(csuper.getText())) {
            return dj2.m1362break("*").m1364catch();
        }
        if (csuper.m38134volatile() != null && !csuper.m38134volatile().m8923case()) {
            return visit(csuper.m38134volatile());
        }
        if (csuper.m38133strictfp() == null || csuper.m38133strictfp().m8923case()) {
            return null;
        }
        return visit(csuper.m38133strictfp());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitNodeTest(Cfor.Cthrow cthrow) {
        if (cthrow.m38144interface() != null) {
            return visit(cthrow.m38144interface());
        }
        if (cthrow.m38146volatile() != null) {
            return as1.m323if(cthrow.m38146volatile().getText()).call(m3473new());
        }
        return null;
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitOrExpr(Cfor.Cwhile cwhile) {
        List<Cfor.Cnew> listM38153strictfp = cwhile.m38153strictfp();
        if (listM38153strictfp.size() <= 1) {
            return visit(listM38153strictfp.get(0));
        }
        Boolean boolM1367do = visit(listM38153strictfp.get(0)).m1367do();
        for (int i = 1; i < listM38153strictfp.size(); i++) {
            boolM1367do = Boolean.valueOf(boolM1367do.booleanValue() | visit(listM38153strictfp.get(i)).m1367do().booleanValue());
        }
        return dj2.m1362break(boolM1367do);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitFunctionName(Cfor.Cbreak cbreak) {
        return visit(cbreak.m38073strictfp());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitPathExprNoRoot(Cfor.Cimport cimport) {
        if (cimport.m38111protected() != null && !cimport.m38111protected().m8923case()) {
            return visit(cimport.m38111protected());
        }
        Token token = cimport.f34167goto;
        if (token == null) {
            return visit(cimport.m38110interface());
        }
        if ("//".equals(token.getText())) {
            m3473new().m2012goto();
        }
        return visit(cimport.m38113transient());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitAndExpr(Cfor.Cnew cnew) {
        List<Cfor.Ccase> listM38116strictfp = cnew.m38116strictfp();
        if (listM38116strictfp.size() <= 1) {
            return visit(listM38116strictfp.get(0));
        }
        Boolean boolM1367do = visit(listM38116strictfp.get(0)).m1367do();
        for (int i = 1; i < listM38116strictfp.size(); i++) {
            boolM1367do = Boolean.valueOf(boolM1367do.booleanValue() & visit(listM38116strictfp.get(i)).m1367do().booleanValue());
        }
        return dj2.m1362break(boolM1367do);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitLocationPath(Cfor.Ccatch ccatch) {
        return (ccatch.m38081volatile() == null || ccatch.m38081volatile().m8923case()) ? visit(ccatch.m38080strictfp()) : visit(ccatch.m38081volatile());
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitPredicate(Cfor.Cnative cnative) {
        Elements elements = new Elements();
        Iterator<Element> it = m3473new().m2010do().iterator();
        while (it.hasNext()) {
            Element next = it.next();
            this.f2793do.push(es1.m2004for(next).m2007break(m3473new()));
            dj2 dj2VarVisit = visit(cnative.m38115strictfp());
            this.f2793do.pop();
            if (dj2VarVisit.m1373import()) {
                long jLongValue = dj2VarVisit.m1363case().longValue();
                if (jLongValue < 0) {
                    jLongValue = 1 + ip.m3530try(next, m3473new()) + jLongValue;
                }
                if (jLongValue == ip.m3528if(next, m3473new())) {
                    elements.add(next);
                }
            } else if (dj2VarVisit.m1366const()) {
                if (dj2VarVisit.m1367do().booleanValue()) {
                    elements.add(next);
                }
            } else if (dj2VarVisit.m1374native()) {
                if (Cclass.D(dj2VarVisit.m1368else())) {
                    elements.add(next);
                }
            } else if (dj2VarVisit.m1377super()) {
                if (dj2VarVisit.m1375new().size() > 0) {
                    elements.add(next);
                }
            } else {
                if (!dj2VarVisit.m1381while()) {
                    throw new hj2("unknown expr val:" + dj2VarVisit);
                }
                if (dj2VarVisit.m1380try().size() > 0) {
                    elements.add(next);
                }
            }
        }
        return dj2.m1362break(elements);
    }

    @Override // org.seimicrawler.xpath.antlr.Cif, org.seimicrawler.xpath.antlr.XpathVisitor
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public dj2 visitMain(Cfor.Cclass cclass) {
        return visit(cclass.m38082strictfp());
    }
}

package org.seimicrawler.xpath.antlr;

import android.support.v4.c;
import org.seimicrawler.xpath.antlr.Cfor;

/* renamed from: org.seimicrawler.xpath.antlr.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif<T> extends c<T> implements XpathVisitor<T> {
    public T visitAbbreviatedStep(Cfor.Cdo cdo) {
        return visitChildren(cdo);
    }

    public T visitAbsoluteLocationPathNoroot(Cfor.Cif cif) {
        return visitChildren(cif);
    }

    public T visitAdditiveExpr(Cfor.C0492for c0492for) {
        return visitChildren(c0492for);
    }

    public T visitAndExpr(Cfor.Cnew cnew) {
        return visitChildren(cnew);
    }

    public T visitAxisSpecifier(Cfor.Ctry ctry) {
        return visitChildren(ctry);
    }

    public T visitEqualityExpr(Cfor.Ccase ccase) {
        return visitChildren(ccase);
    }

    public T visitExpr(Cfor.Celse celse) {
        return visitChildren(celse);
    }

    public T visitFilterExpr(Cfor.Cgoto cgoto) {
        return visitChildren(cgoto);
    }

    public T visitFunctionCall(Cfor.Cthis cthis) {
        return visitChildren(cthis);
    }

    public T visitFunctionName(Cfor.Cbreak cbreak) {
        return visitChildren(cbreak);
    }

    public T visitLocationPath(Cfor.Ccatch ccatch) {
        return visitChildren(ccatch);
    }

    public T visitMain(Cfor.Cclass cclass) {
        return visitChildren(cclass);
    }

    public T visitMultiplicativeExpr(Cfor.Cconst cconst) {
        return visitChildren(cconst);
    }

    public T visitNCName(Cfor.Cfinal cfinal) {
        return visitChildren(cfinal);
    }

    public T visitNameTest(Cfor.Csuper csuper) {
        return visitChildren(csuper);
    }

    public T visitNodeTest(Cfor.Cthrow cthrow) {
        return visitChildren(cthrow);
    }

    public T visitOrExpr(Cfor.Cwhile cwhile) {
        return visitChildren(cwhile);
    }

    public T visitPathExprNoRoot(Cfor.Cimport cimport) {
        return visitChildren(cimport);
    }

    public T visitPredicate(Cfor.Cnative cnative) {
        return visitChildren(cnative);
    }

    public T visitPrimaryExpr(Cfor.Cpublic cpublic) {
        return visitChildren(cpublic);
    }

    public T visitQName(Cfor.Creturn creturn) {
        return visitChildren(creturn);
    }

    public T visitRelationalExpr(Cfor.Cstatic cstatic) {
        return visitChildren(cstatic);
    }

    public T visitRelativeLocationPath(Cfor.Cswitch cswitch) {
        return visitChildren(cswitch);
    }

    public T visitStep(Cfor.Cthrows cthrows) {
        return visitChildren(cthrows);
    }

    public T visitUnaryExprNoRoot(Cfor.Cdefault cdefault) {
        return visitChildren(cdefault);
    }

    public T visitUnionExprNoRoot(Cfor.Cextends cextends) {
        return visitChildren(cextends);
    }

    @Override // org.seimicrawler.xpath.antlr.XpathVisitor
    public T visitVariableReference(Cfor.Cfinally cfinally) {
        return visitChildren(cfinally);
    }
}

package org.seimicrawler.xpath.antlr;

import org.antlr.v4.runtime.tree.ParseTreeVisitor;
import org.seimicrawler.xpath.antlr.Cfor;

/* loaded from: classes3.dex */
public interface XpathVisitor<T> extends ParseTreeVisitor<T> {
    T visitAbbreviatedStep(Cfor.Cdo cdo);

    T visitAbsoluteLocationPathNoroot(Cfor.Cif cif);

    T visitAdditiveExpr(Cfor.C0492for c0492for);

    T visitAndExpr(Cfor.Cnew cnew);

    T visitAxisSpecifier(Cfor.Ctry ctry);

    T visitEqualityExpr(Cfor.Ccase ccase);

    T visitExpr(Cfor.Celse celse);

    T visitFilterExpr(Cfor.Cgoto cgoto);

    T visitFunctionCall(Cfor.Cthis cthis);

    T visitFunctionName(Cfor.Cbreak cbreak);

    T visitLocationPath(Cfor.Ccatch ccatch);

    T visitMain(Cfor.Cclass cclass);

    T visitMultiplicativeExpr(Cfor.Cconst cconst);

    T visitNCName(Cfor.Cfinal cfinal);

    T visitNameTest(Cfor.Csuper csuper);

    T visitNodeTest(Cfor.Cthrow cthrow);

    T visitOrExpr(Cfor.Cwhile cwhile);

    T visitPathExprNoRoot(Cfor.Cimport cimport);

    T visitPredicate(Cfor.Cnative cnative);

    T visitPrimaryExpr(Cfor.Cpublic cpublic);

    T visitQName(Cfor.Creturn creturn);

    T visitRelationalExpr(Cfor.Cstatic cstatic);

    T visitRelativeLocationPath(Cfor.Cswitch cswitch);

    T visitStep(Cfor.Cthrows cthrows);

    T visitUnaryExprNoRoot(Cfor.Cdefault cdefault);

    T visitUnionExprNoRoot(Cfor.Cextends cextends);

    T visitVariableReference(Cfor.Cfinally cfinally);
}

package org.seimicrawler.xpath.antlr;

import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.seimicrawler.xpath.antlr.Cfor;

/* loaded from: classes3.dex */
public interface XpathListener extends ParseTreeListener {
    void enterAbbreviatedStep(Cfor.Cdo cdo);

    void enterAbsoluteLocationPathNoroot(Cfor.Cif cif);

    void enterAdditiveExpr(Cfor.C0492for c0492for);

    void enterAndExpr(Cfor.Cnew cnew);

    void enterAxisSpecifier(Cfor.Ctry ctry);

    void enterEqualityExpr(Cfor.Ccase ccase);

    void enterExpr(Cfor.Celse celse);

    void enterFilterExpr(Cfor.Cgoto cgoto);

    void enterFunctionCall(Cfor.Cthis cthis);

    void enterFunctionName(Cfor.Cbreak cbreak);

    void enterLocationPath(Cfor.Ccatch ccatch);

    void enterMain(Cfor.Cclass cclass);

    void enterMultiplicativeExpr(Cfor.Cconst cconst);

    void enterNCName(Cfor.Cfinal cfinal);

    void enterNameTest(Cfor.Csuper csuper);

    void enterNodeTest(Cfor.Cthrow cthrow);

    void enterOrExpr(Cfor.Cwhile cwhile);

    void enterPathExprNoRoot(Cfor.Cimport cimport);

    void enterPredicate(Cfor.Cnative cnative);

    void enterPrimaryExpr(Cfor.Cpublic cpublic);

    void enterQName(Cfor.Creturn creturn);

    void enterRelationalExpr(Cfor.Cstatic cstatic);

    void enterRelativeLocationPath(Cfor.Cswitch cswitch);

    void enterStep(Cfor.Cthrows cthrows);

    void enterUnaryExprNoRoot(Cfor.Cdefault cdefault);

    void enterUnionExprNoRoot(Cfor.Cextends cextends);

    void enterVariableReference(Cfor.Cfinally cfinally);

    void exitAbbreviatedStep(Cfor.Cdo cdo);

    void exitAbsoluteLocationPathNoroot(Cfor.Cif cif);

    void exitAdditiveExpr(Cfor.C0492for c0492for);

    void exitAndExpr(Cfor.Cnew cnew);

    void exitAxisSpecifier(Cfor.Ctry ctry);

    void exitEqualityExpr(Cfor.Ccase ccase);

    void exitExpr(Cfor.Celse celse);

    void exitFilterExpr(Cfor.Cgoto cgoto);

    void exitFunctionCall(Cfor.Cthis cthis);

    void exitFunctionName(Cfor.Cbreak cbreak);

    void exitLocationPath(Cfor.Ccatch ccatch);

    void exitMain(Cfor.Cclass cclass);

    void exitMultiplicativeExpr(Cfor.Cconst cconst);

    void exitNCName(Cfor.Cfinal cfinal);

    void exitNameTest(Cfor.Csuper csuper);

    void exitNodeTest(Cfor.Cthrow cthrow);

    void exitOrExpr(Cfor.Cwhile cwhile);

    void exitPathExprNoRoot(Cfor.Cimport cimport);

    void exitPredicate(Cfor.Cnative cnative);

    void exitPrimaryExpr(Cfor.Cpublic cpublic);

    void exitQName(Cfor.Creturn creturn);

    void exitRelationalExpr(Cfor.Cstatic cstatic);

    void exitRelativeLocationPath(Cfor.Cswitch cswitch);

    void exitStep(Cfor.Cthrows cthrows);

    void exitUnaryExprNoRoot(Cfor.Cdefault cdefault);

    void exitUnionExprNoRoot(Cfor.Cextends cextends);

    void exitVariableReference(Cfor.Cfinally cfinally);
}

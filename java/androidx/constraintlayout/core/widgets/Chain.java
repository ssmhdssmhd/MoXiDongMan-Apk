package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        ChainHead[] chainHeadArr;
        int i2;
        int i3;
        if (i == 0) {
            i2 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = 0;
        } else {
            int i4 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i2 = i4;
            i3 = 2;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i3, chainHead);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044 A[PHI: r15 r16
      0x0044: PHI (r15v3 boolean) = (r15v1 boolean), (r15v32 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0044: PHI (r16v3 boolean) = (r16v1 boolean), (r16v7 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[PHI: r15 r16
      0x0046: PHI (r15v30 boolean) = (r15v1 boolean), (r15v32 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0046: PHI (r16v5 boolean) = (r16v1 boolean), (r16v7 boolean) binds: [B:24:0x0042, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x03b2 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v42, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        ConstraintWidget constraintWidget;
        int i4;
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget3;
        ConstraintAnchor constraintAnchor2;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariable3;
        ConstraintWidget constraintWidget5;
        ConstraintWidget constraintWidget6;
        float f;
        int size;
        ArrayList<ConstraintWidget> arrayList;
        int i5;
        boolean z4;
        boolean z5;
        ConstraintWidget constraintWidget7;
        ConstraintWidget constraintWidget8;
        int i6;
        int i7 = i;
        ConstraintWidget constraintWidget9 = chainHead.mFirst;
        ConstraintWidget constraintWidget10 = chainHead.mLast;
        ConstraintWidget constraintWidget11 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget12 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget13 = chainHead.mHead;
        float f2 = chainHead.mTotalWeight;
        boolean z6 = constraintWidgetContainer.mListDimensionBehaviors[i7] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i7 == 0) {
            int i8 = constraintWidget13.mHorizontalChainStyle;
            z = i8 == 0;
            z2 = i8 == 1;
            z3 = i8 == 2;
        } else {
            int i9 = constraintWidget13.mVerticalChainStyle;
            z = i9 == 0;
            z2 = i9 == 1;
            if (i9 == 2) {
            }
        }
        ?? r7 = constraintWidget9;
        boolean z7 = false;
        while (true) {
            if (z7) {
                break;
            }
            ConstraintAnchor constraintAnchor3 = r7.mListAnchors[i2];
            int i10 = z3 ? 1 : 4;
            int margin = constraintAnchor3.getMargin();
            float f3 = f2;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r7.mListDimensionBehaviors[i7];
            boolean z8 = z7;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 && r7.mResolvedMatchConstraintDefault[i7] == 0) {
                z4 = z;
                z5 = true;
            } else {
                z4 = z;
                z5 = false;
            }
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            if (constraintAnchor4 != null && r7 != constraintWidget9) {
                margin += constraintAnchor4.getMargin();
            }
            int i11 = margin;
            if (!z3 || r7 == constraintWidget9 || r7 == constraintWidget11) {
                constraintWidget7 = constraintWidget13;
            } else {
                constraintWidget7 = constraintWidget13;
                i10 = 8;
            }
            ConstraintAnchor constraintAnchor5 = constraintAnchor3.mTarget;
            if (constraintAnchor5 != null) {
                if (r7 == constraintWidget11) {
                    constraintWidget8 = constraintWidget9;
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor5.mSolverVariable, i11, 6);
                } else {
                    constraintWidget8 = constraintWidget9;
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor5.mSolverVariable, i11, 8);
                }
                if (z5 && !z3) {
                    i10 = 5;
                }
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, i11, (r7 == constraintWidget11 && z3 && r7.isInBarrier(i7)) ? 5 : i10);
            } else {
                constraintWidget8 = constraintWidget9;
            }
            if (z6) {
                if (r7.getVisibility() == 8 || r7.mListDimensionBehaviors[i7] != dimensionBehaviour2) {
                    i6 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r7.mListAnchors;
                    i6 = 0;
                    linearSystem.addGreaterThan(constraintAnchorArr[i2 + 1].mSolverVariable, constraintAnchorArr[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r7.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, i6, 8);
            }
            ConstraintAnchor constraintAnchor6 = r7.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor6 != null) {
                ?? r1 = constraintAnchor6.mOwner;
                ConstraintAnchor[] constraintAnchorArr2 = r1.mListAnchors;
                if (constraintAnchorArr2[i2].mTarget != null && constraintAnchorArr2[i2].mTarget.mOwner == r7) {
                    solverVariable = r1;
                }
            }
            if (solverVariable != null) {
                r7 = solverVariable;
                z7 = z8;
            } else {
                z7 = true;
            }
            constraintWidget13 = constraintWidget7;
            f2 = f3;
            z = z4;
            constraintWidget9 = constraintWidget8;
            r7 = r7;
        }
        ConstraintWidget constraintWidget14 = constraintWidget13;
        float f4 = f2;
        ConstraintWidget constraintWidget15 = constraintWidget9;
        boolean z9 = z;
        if (constraintWidget12 != null) {
            int i12 = i2 + 1;
            if (constraintWidget10.mListAnchors[i12].mTarget != null) {
                ConstraintAnchor constraintAnchor7 = constraintWidget12.mListAnchors[i12];
                if ((constraintWidget12.mListDimensionBehaviors[i7] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget12.mResolvedMatchConstraintDefault[i7] == 0) && !z3) {
                    ConstraintAnchor constraintAnchor8 = constraintAnchor7.mTarget;
                    if (constraintAnchor8.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor7.mSolverVariable, constraintAnchor8.mSolverVariable, -constraintAnchor7.getMargin(), 5);
                    }
                    linearSystem.addLowerThan(constraintAnchor7.mSolverVariable, constraintWidget10.mListAnchors[i12].mTarget.mSolverVariable, -constraintAnchor7.getMargin(), 6);
                } else {
                    if (z3) {
                        ConstraintAnchor constraintAnchor9 = constraintAnchor7.mTarget;
                        if (constraintAnchor9.mOwner == constraintWidgetContainer) {
                            linearSystem.addEquality(constraintAnchor7.mSolverVariable, constraintAnchor9.mSolverVariable, -constraintAnchor7.getMargin(), 4);
                        }
                    }
                    linearSystem.addLowerThan(constraintAnchor7.mSolverVariable, constraintWidget10.mListAnchors[i12].mTarget.mSolverVariable, -constraintAnchor7.getMargin(), 6);
                }
            }
        }
        if (z6) {
            int i13 = i2 + 1;
            SolverVariable solverVariable4 = constraintWidgetContainer.mListAnchors[i13].mSolverVariable;
            ConstraintAnchor[] constraintAnchorArr3 = constraintWidget10.mListAnchors;
            linearSystem.addGreaterThan(solverVariable4, constraintAnchorArr3[i13].mSolverVariable, constraintAnchorArr3[i13].getMargin(), 8);
        }
        ArrayList<ConstraintWidget> arrayList2 = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList2 != null && (size = arrayList2.size()) > 1) {
            float f5 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f4 : chainHead.mWidgetsMatchCount;
            float f6 = 0.0f;
            ConstraintWidget constraintWidget16 = null;
            int i14 = 0;
            float f7 = 0.0f;
            while (i14 < size) {
                ConstraintWidget constraintWidget17 = arrayList2.get(i14);
                float f8 = constraintWidget17.mWeight[i7];
                if (f8 < f6) {
                    if (chainHead.mHasComplexMatchWeights) {
                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget17.mListAnchors;
                        linearSystem.addEquality(constraintAnchorArr4[i2 + 1].mSolverVariable, constraintAnchorArr4[i2].mSolverVariable, 0, 4);
                        arrayList = arrayList2;
                        i5 = size;
                        i14++;
                        size = i5;
                        arrayList2 = arrayList;
                        f6 = 0.0f;
                    } else {
                        f8 = 1.0f;
                        f6 = 0.0f;
                    }
                }
                if (f8 == f6) {
                    ConstraintAnchor[] constraintAnchorArr5 = constraintWidget17.mListAnchors;
                    linearSystem.addEquality(constraintAnchorArr5[i2 + 1].mSolverVariable, constraintAnchorArr5[i2].mSolverVariable, 0, 8);
                    arrayList = arrayList2;
                    i5 = size;
                    i14++;
                    size = i5;
                    arrayList2 = arrayList;
                    f6 = 0.0f;
                } else {
                    if (constraintWidget16 != null) {
                        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget16.mListAnchors;
                        SolverVariable solverVariable5 = constraintAnchorArr6[i2].mSolverVariable;
                        int i15 = i2 + 1;
                        SolverVariable solverVariable6 = constraintAnchorArr6[i15].mSolverVariable;
                        ConstraintAnchor[] constraintAnchorArr7 = constraintWidget17.mListAnchors;
                        arrayList = arrayList2;
                        SolverVariable solverVariable7 = constraintAnchorArr7[i2].mSolverVariable;
                        SolverVariable solverVariable8 = constraintAnchorArr7[i15].mSolverVariable;
                        i5 = size;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f7, f5, f8, solverVariable5, solverVariable6, solverVariable7, solverVariable8);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    } else {
                        arrayList = arrayList2;
                        i5 = size;
                    }
                    f7 = f8;
                    constraintWidget16 = constraintWidget17;
                    i14++;
                    size = i5;
                    arrayList2 = arrayList;
                    f6 = 0.0f;
                }
            }
        }
        if (constraintWidget11 != null && (constraintWidget11 == constraintWidget12 || z3)) {
            ConstraintAnchor constraintAnchor10 = constraintWidget15.mListAnchors[i2];
            int i16 = i2 + 1;
            ConstraintAnchor constraintAnchor11 = constraintWidget10.mListAnchors[i16];
            ConstraintAnchor constraintAnchor12 = constraintAnchor10.mTarget;
            SolverVariable solverVariable9 = constraintAnchor12 != null ? constraintAnchor12.mSolverVariable : null;
            ConstraintAnchor constraintAnchor13 = constraintAnchor11.mTarget;
            SolverVariable solverVariable10 = constraintAnchor13 != null ? constraintAnchor13.mSolverVariable : null;
            ConstraintAnchor constraintAnchor14 = constraintWidget11.mListAnchors[i2];
            if (constraintWidget12 != null) {
                constraintAnchor11 = constraintWidget12.mListAnchors[i16];
            }
            if (solverVariable9 != null && solverVariable10 != null) {
                if (i7 == 0) {
                    f = constraintWidget14.mHorizontalBiasPercent;
                } else {
                    f = constraintWidget14.mVerticalBiasPercent;
                }
                linearSystem.addCentering(constraintAnchor14.mSolverVariable, solverVariable9, constraintAnchor14.getMargin(), f, solverVariable10, constraintAnchor11.mSolverVariable, constraintAnchor11.getMargin(), 7);
            }
        } else if (!z9 || constraintWidget11 == null) {
            int i17 = 8;
            if (z2 && constraintWidget11 != null) {
                int i18 = chainHead.mWidgetsMatchCount;
                boolean z10 = i18 > 0 && chainHead.mWidgetsCount == i18;
                ConstraintWidget constraintWidget18 = constraintWidget11;
                ConstraintWidget constraintWidget19 = constraintWidget18;
                while (constraintWidget19 != null) {
                    ConstraintWidget constraintWidget20 = constraintWidget19.mNextChainWidget[i7];
                    while (constraintWidget20 != null && constraintWidget20.getVisibility() == i17) {
                        constraintWidget20 = constraintWidget20.mNextChainWidget[i7];
                    }
                    if (constraintWidget19 == constraintWidget11 || constraintWidget19 == constraintWidget12 || constraintWidget20 == null) {
                        constraintWidget = constraintWidget18;
                        i4 = 8;
                    } else {
                        ConstraintWidget constraintWidget21 = constraintWidget20 == constraintWidget12 ? null : constraintWidget20;
                        ConstraintAnchor constraintAnchor15 = constraintWidget19.mListAnchors[i2];
                        SolverVariable solverVariable11 = constraintAnchor15.mSolverVariable;
                        ConstraintAnchor constraintAnchor16 = constraintAnchor15.mTarget;
                        if (constraintAnchor16 != null) {
                            SolverVariable solverVariable12 = constraintAnchor16.mSolverVariable;
                        }
                        int i19 = i2 + 1;
                        SolverVariable solverVariable13 = constraintWidget18.mListAnchors[i19].mSolverVariable;
                        int margin2 = constraintAnchor15.getMargin();
                        int margin3 = constraintWidget19.mListAnchors[i19].getMargin();
                        if (constraintWidget21 != null) {
                            constraintAnchor = constraintWidget21.mListAnchors[i2];
                            SolverVariable solverVariable14 = constraintAnchor.mSolverVariable;
                            constraintWidget2 = constraintWidget21;
                            ConstraintAnchor constraintAnchor17 = constraintAnchor.mTarget;
                            solverVariable2 = constraintAnchor17 != null ? constraintAnchor17.mSolverVariable : null;
                            solverVariable = solverVariable14;
                        } else {
                            constraintWidget2 = constraintWidget21;
                            constraintAnchor = constraintWidget12.mListAnchors[i2];
                            solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                            solverVariable2 = constraintWidget19.mListAnchors[i19].mSolverVariable;
                        }
                        if (constraintAnchor != null) {
                            margin3 += constraintAnchor.getMargin();
                        }
                        int i20 = margin3;
                        int margin4 = constraintWidget18.mListAnchors[i19].getMargin() + margin2;
                        int i21 = z10 ? 8 : 4;
                        if (solverVariable11 == null || solverVariable13 == null || solverVariable == null || solverVariable2 == null) {
                            constraintWidget3 = constraintWidget2;
                            constraintWidget = constraintWidget18;
                            i4 = 8;
                        } else {
                            constraintWidget3 = constraintWidget2;
                            constraintWidget = constraintWidget18;
                            i4 = 8;
                            linearSystem.addCentering(solverVariable11, solverVariable13, margin4, 0.5f, solverVariable, solverVariable2, i20, i21);
                        }
                        constraintWidget20 = constraintWidget3;
                    }
                    constraintWidget18 = constraintWidget19.getVisibility() != i4 ? constraintWidget19 : constraintWidget;
                    i7 = i;
                    constraintWidget19 = constraintWidget20;
                    i17 = 8;
                }
                ConstraintAnchor constraintAnchor18 = constraintWidget11.mListAnchors[i2];
                ConstraintAnchor constraintAnchor19 = constraintWidget15.mListAnchors[i2].mTarget;
                int i22 = i2 + 1;
                ConstraintAnchor constraintAnchor20 = constraintWidget12.mListAnchors[i22];
                ConstraintAnchor constraintAnchor21 = constraintWidget10.mListAnchors[i22].mTarget;
                if (constraintAnchor19 == null) {
                    i3 = 5;
                } else if (constraintWidget11 != constraintWidget12) {
                    i3 = 5;
                    linearSystem.addEquality(constraintAnchor18.mSolverVariable, constraintAnchor19.mSolverVariable, constraintAnchor18.getMargin(), 5);
                } else {
                    i3 = 5;
                    if (constraintAnchor21 != null) {
                        linearSystem.addCentering(constraintAnchor18.mSolverVariable, constraintAnchor19.mSolverVariable, constraintAnchor18.getMargin(), 0.5f, constraintAnchor20.mSolverVariable, constraintAnchor21.mSolverVariable, constraintAnchor20.getMargin(), 5);
                    }
                }
                if (constraintAnchor21 != null && constraintWidget11 != constraintWidget12) {
                    linearSystem.addEquality(constraintAnchor20.mSolverVariable, constraintAnchor21.mSolverVariable, -constraintAnchor20.getMargin(), i3);
                }
            }
        } else {
            int i23 = chainHead.mWidgetsMatchCount;
            boolean z11 = i23 > 0 && chainHead.mWidgetsCount == i23;
            ConstraintWidget constraintWidget22 = constraintWidget11;
            ConstraintWidget constraintWidget23 = constraintWidget22;
            while (constraintWidget23 != null) {
                ConstraintWidget constraintWidget24 = constraintWidget23.mNextChainWidget[i7];
                while (constraintWidget24 != null && constraintWidget24.getVisibility() == 8) {
                    constraintWidget24 = constraintWidget24.mNextChainWidget[i7];
                }
                if (constraintWidget24 != null || constraintWidget23 == constraintWidget12) {
                    ConstraintAnchor constraintAnchor22 = constraintWidget23.mListAnchors[i2];
                    SolverVariable solverVariable15 = constraintAnchor22.mSolverVariable;
                    ConstraintAnchor constraintAnchor23 = constraintAnchor22.mTarget;
                    SolverVariable solverVariable16 = constraintAnchor23 != null ? constraintAnchor23.mSolverVariable : null;
                    if (constraintWidget22 != constraintWidget23) {
                        solverVariable16 = constraintWidget22.mListAnchors[i2 + 1].mSolverVariable;
                    } else if (constraintWidget23 == constraintWidget11) {
                        ConstraintAnchor[] constraintAnchorArr8 = constraintWidget15.mListAnchors;
                        solverVariable16 = constraintAnchorArr8[i2].mTarget != null ? constraintAnchorArr8[i2].mTarget.mSolverVariable : null;
                    }
                    int margin5 = constraintAnchor22.getMargin();
                    int i24 = i2 + 1;
                    int margin6 = constraintWidget23.mListAnchors[i24].getMargin();
                    if (constraintWidget24 != null) {
                        constraintAnchor2 = constraintWidget24.mListAnchors[i2];
                        solverVariable3 = constraintAnchor2.mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget10.mListAnchors[i24].mTarget;
                        if (constraintAnchor2 != null) {
                            solverVariable3 = constraintAnchor2.mSolverVariable;
                        } else {
                            constraintWidget4 = constraintWidget24;
                            solverVariable3 = null;
                            SolverVariable solverVariable17 = constraintWidget23.mListAnchors[i24].mSolverVariable;
                            if (constraintAnchor2 != null) {
                                margin6 += constraintAnchor2.getMargin();
                            }
                            int margin7 = margin5 + constraintWidget22.mListAnchors[i24].getMargin();
                            if (solverVariable15 != null || solverVariable16 == null || solverVariable3 == null || solverVariable17 == null) {
                                constraintWidget5 = constraintWidget4;
                            } else {
                                if (constraintWidget23 == constraintWidget11) {
                                    margin7 = constraintWidget11.mListAnchors[i2].getMargin();
                                }
                                int i25 = margin7;
                                constraintWidget5 = constraintWidget4;
                                constraintWidget6 = constraintWidget22;
                                linearSystem.addCentering(solverVariable15, solverVariable16, i25, 0.5f, solverVariable3, solverVariable17, constraintWidget23 == constraintWidget12 ? constraintWidget12.mListAnchors[i24].getMargin() : margin6, z11 ? 8 : 5);
                                if (constraintWidget23.getVisibility() != 8) {
                                    constraintWidget23 = constraintWidget6;
                                }
                                constraintWidget22 = constraintWidget23;
                                constraintWidget23 = constraintWidget5;
                            }
                        }
                    }
                    constraintWidget4 = constraintWidget24;
                    SolverVariable solverVariable172 = constraintWidget23.mListAnchors[i24].mSolverVariable;
                    if (constraintAnchor2 != null) {
                    }
                    int margin72 = margin5 + constraintWidget22.mListAnchors[i24].getMargin();
                    if (solverVariable15 != null) {
                    }
                    constraintWidget5 = constraintWidget4;
                } else {
                    constraintWidget5 = constraintWidget24;
                }
                constraintWidget6 = constraintWidget22;
                if (constraintWidget23.getVisibility() != 8) {
                }
                constraintWidget22 = constraintWidget23;
                constraintWidget23 = constraintWidget5;
            }
        }
        if ((!z9 && !z2) || constraintWidget11 == null || constraintWidget11 == constraintWidget12) {
            return;
        }
        ConstraintAnchor[] constraintAnchorArr9 = constraintWidget11.mListAnchors;
        ConstraintAnchor constraintAnchor24 = constraintAnchorArr9[i2];
        if (constraintWidget12 == null) {
            constraintWidget12 = constraintWidget11;
        }
        int i26 = i2 + 1;
        ConstraintAnchor constraintAnchor25 = constraintWidget12.mListAnchors[i26];
        ConstraintAnchor constraintAnchor26 = constraintAnchor24.mTarget;
        SolverVariable solverVariable18 = constraintAnchor26 != null ? constraintAnchor26.mSolverVariable : null;
        ConstraintAnchor constraintAnchor27 = constraintAnchor25.mTarget;
        SolverVariable solverVariable19 = constraintAnchor27 != null ? constraintAnchor27.mSolverVariable : null;
        if (constraintWidget10 != constraintWidget12) {
            ConstraintAnchor constraintAnchor28 = constraintWidget10.mListAnchors[i26].mTarget;
            solverVariable19 = constraintAnchor28 != null ? constraintAnchor28.mSolverVariable : null;
        }
        if (constraintWidget11 == constraintWidget12) {
            constraintAnchor24 = constraintAnchorArr9[i2];
            constraintAnchor25 = constraintAnchorArr9[i26];
        }
        if (solverVariable18 == null || solverVariable19 == null) {
            return;
        }
        linearSystem.addCentering(constraintAnchor24.mSolverVariable, solverVariable18, constraintAnchor24.getMargin(), 0.5f, solverVariable19, constraintAnchor25.mSolverVariable, constraintWidget12.mListAnchors[i26].getMargin(), 5);
    }
}

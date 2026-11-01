package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.PathNotFoundException;
import com.jayway.jsonpath.internal.PathRef;
import com.jayway.jsonpath.internal.path.ArraySliceOperation;
import java.util.Iterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
public class ArrayPathToken extends PathToken {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) ArrayPathToken.class);
    private final ArrayIndexOperation arrayIndexOperation;
    private final ArraySliceOperation arraySliceOperation;

    /* renamed from: com.jayway.jsonpath.internal.path.ArrayPathToken$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$jayway$jsonpath$internal$path$ArraySliceOperation$Operation;

        static {
            int[] iArr = new int[ArraySliceOperation.Operation.values().length];
            $SwitchMap$com$jayway$jsonpath$internal$path$ArraySliceOperation$Operation = iArr;
            try {
                iArr[ArraySliceOperation.Operation.SLICE_FROM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jayway$jsonpath$internal$path$ArraySliceOperation$Operation[ArraySliceOperation.Operation.SLICE_BETWEEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jayway$jsonpath$internal$path$ArraySliceOperation$Operation[ArraySliceOperation.Operation.SLICE_TO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ArrayPathToken(ArraySliceOperation arraySliceOperation) {
        this.arraySliceOperation = arraySliceOperation;
        this.arrayIndexOperation = null;
    }

    public boolean checkArrayModel(String str, Object obj, EvaluationContextImpl evaluationContextImpl) {
        if (obj != null) {
            if (evaluationContextImpl.jsonProvider().isArray(obj)) {
                return true;
            }
            if (isUpstreamDefinite()) {
                throw new PathNotFoundException(String.format("Filter: %s can only be applied to arrays. Current context is: %s", toString(), obj));
            }
            return false;
        }
        if (!isUpstreamDefinite()) {
            return false;
        }
        throw new PathNotFoundException("The path " + str + " is null");
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public void evaluate(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        if (checkArrayModel(str, obj, evaluationContextImpl)) {
            if (this.arraySliceOperation != null) {
                evaluateSliceOperation(str, pathRef, obj, evaluationContextImpl);
            } else {
                evaluateIndexOperation(str, pathRef, obj, evaluationContextImpl);
            }
        }
    }

    public void evaluateIndexOperation(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        if (checkArrayModel(str, obj, evaluationContextImpl)) {
            if (this.arrayIndexOperation.isSingleIndexOperation()) {
                handleArrayIndex(this.arrayIndexOperation.indexes().get(0).intValue(), str, obj, evaluationContextImpl);
                return;
            }
            Iterator<Integer> it = this.arrayIndexOperation.indexes().iterator();
            while (it.hasNext()) {
                handleArrayIndex(it.next().intValue(), str, obj, evaluationContextImpl);
            }
        }
    }

    public void evaluateSliceOperation(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        if (checkArrayModel(str, obj, evaluationContextImpl)) {
            int i = AnonymousClass1.$SwitchMap$com$jayway$jsonpath$internal$path$ArraySliceOperation$Operation[this.arraySliceOperation.operation().ordinal()];
            if (i == 1) {
                sliceFrom(this.arraySliceOperation, str, pathRef, obj, evaluationContextImpl);
            } else if (i == 2) {
                sliceBetween(this.arraySliceOperation, str, pathRef, obj, evaluationContextImpl);
            } else {
                if (i != 3) {
                    return;
                }
                sliceTo(this.arraySliceOperation, str, pathRef, obj, evaluationContextImpl);
            }
        }
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public String getPathFragment() {
        ArrayIndexOperation arrayIndexOperation = this.arrayIndexOperation;
        return arrayIndexOperation != null ? arrayIndexOperation.toString() : this.arraySliceOperation.toString();
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public boolean isTokenDefinite() {
        ArrayIndexOperation arrayIndexOperation = this.arrayIndexOperation;
        if (arrayIndexOperation != null) {
            return arrayIndexOperation.isSingleIndexOperation();
        }
        return false;
    }

    public void sliceBetween(ArraySliceOperation arraySliceOperation, String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        int length = evaluationContextImpl.jsonProvider().length(obj);
        int iIntValue = arraySliceOperation.from().intValue();
        int iMin = Math.min(length, arraySliceOperation.to().intValue());
        if (iIntValue >= iMin || length == 0) {
            return;
        }
        logger.debug("Slice between indexes on array with length: {}. From index: {} to: {}. Input: {}", Integer.valueOf(length), Integer.valueOf(iIntValue), Integer.valueOf(iMin), toString());
        while (iIntValue < iMin) {
            handleArrayIndex(iIntValue, str, obj, evaluationContextImpl);
            iIntValue++;
        }
    }

    public void sliceFrom(ArraySliceOperation arraySliceOperation, String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        int length = evaluationContextImpl.jsonProvider().length(obj);
        int iIntValue = arraySliceOperation.from().intValue();
        if (iIntValue < 0) {
            iIntValue += length;
        }
        int iMax = Math.max(0, iIntValue);
        logger.debug("Slice from index on array with length: {}. From index: {} to: {}. Input: {}", Integer.valueOf(length), Integer.valueOf(iMax), Integer.valueOf(length - 1), toString());
        if (length == 0 || iMax >= length) {
            return;
        }
        while (iMax < length) {
            handleArrayIndex(iMax, str, obj, evaluationContextImpl);
            iMax++;
        }
    }

    public void sliceTo(ArraySliceOperation arraySliceOperation, String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        int length = evaluationContextImpl.jsonProvider().length(obj);
        if (length == 0) {
            return;
        }
        int iIntValue = arraySliceOperation.to().intValue();
        if (iIntValue < 0) {
            iIntValue += length;
        }
        int iMin = Math.min(length, iIntValue);
        logger.debug("Slice to index on array with length: {}. From index: 0 to: {}. Input: {}", Integer.valueOf(length), Integer.valueOf(iMin), toString());
        for (int i = 0; i < iMin; i++) {
            handleArrayIndex(i, str, obj, evaluationContextImpl);
        }
    }

    public ArrayPathToken(ArrayIndexOperation arrayIndexOperation) {
        this.arrayIndexOperation = arrayIndexOperation;
        this.arraySliceOperation = null;
    }
}

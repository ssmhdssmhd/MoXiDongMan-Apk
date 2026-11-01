package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.InvalidPathException;

/* loaded from: classes2.dex */
public class ArraySliceOperation {
    private final Integer from;
    private final Operation operation;
    private final Integer to;

    public enum Operation {
        SLICE_FROM,
        SLICE_TO,
        SLICE_BETWEEN
    }

    private ArraySliceOperation(Integer num, Integer num2, Operation operation) {
        this.from = num;
        this.to = num2;
        this.operation = operation;
    }

    public static ArraySliceOperation parse(String str) {
        Operation operation;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != '-' && cCharAt != ':') {
                throw new InvalidPathException("Failed to parse SliceOperation: " + str);
            }
        }
        String[] strArrSplit = str.split(":");
        Integer numTryRead = tryRead(strArrSplit, 0);
        Integer numTryRead2 = tryRead(strArrSplit, 1);
        if (numTryRead != null && numTryRead2 == null) {
            operation = Operation.SLICE_FROM;
        } else if (numTryRead == null || numTryRead2 == null) {
            if (numTryRead != null || numTryRead2 == null) {
                throw new InvalidPathException("Failed to parse SliceOperation: " + str);
            }
            operation = Operation.SLICE_TO;
        } else {
            operation = Operation.SLICE_BETWEEN;
        }
        return new ArraySliceOperation(numTryRead, numTryRead2, operation);
    }

    private static Integer tryRead(String[] strArr, int i) {
        if (strArr.length <= i || strArr[i].equals("")) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(strArr[i]));
    }

    public Integer from() {
        return this.from;
    }

    public Operation operation() {
        return this.operation;
    }

    public Integer to() {
        return this.to;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Integer num = this.from;
        sb.append(num == null ? "" : num.toString());
        sb.append(":");
        Integer num2 = this.to;
        sb.append(num2 != null ? num2.toString() : "");
        sb.append("]");
        return sb.toString();
    }
}

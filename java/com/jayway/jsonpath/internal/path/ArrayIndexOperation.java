package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.InvalidPathException;
import com.jayway.jsonpath.internal.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class ArrayIndexOperation {
    private static final Pattern COMMA = Pattern.compile("\\s*,\\s*");
    private final List<Integer> indexes;

    private ArrayIndexOperation(List<Integer> list) {
        this.indexes = Collections.unmodifiableList(list);
    }

    public static ArrayIndexOperation parse(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != ',' && cCharAt != ' ' && cCharAt != '-') {
                throw new InvalidPathException("Failed to parse ArrayIndexOperation: " + str);
            }
        }
        String[] strArrSplit = COMMA.split(str, -1);
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        for (String str2 : strArrSplit) {
            arrayList.add(parseInteger(str2));
        }
        return new ArrayIndexOperation(arrayList);
    }

    private static Integer parseInteger(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Exception e) {
            throw new InvalidPathException("Failed to parse token in ArrayIndexOperation: " + str, e);
        }
    }

    public List<Integer> indexes() {
        return this.indexes;
    }

    public boolean isSingleIndexOperation() {
        return this.indexes.size() == 1;
    }

    public String toString() {
        return "[" + Utils.join(",", this.indexes) + "]";
    }
}

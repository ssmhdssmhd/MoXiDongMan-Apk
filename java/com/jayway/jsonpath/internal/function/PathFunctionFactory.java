package com.jayway.jsonpath.internal.function;

import com.jayway.jsonpath.InvalidPathException;
import com.jayway.jsonpath.internal.function.json.Append;
import com.jayway.jsonpath.internal.function.numeric.Average;
import com.jayway.jsonpath.internal.function.numeric.Max;
import com.jayway.jsonpath.internal.function.numeric.Min;
import com.jayway.jsonpath.internal.function.numeric.StandardDeviation;
import com.jayway.jsonpath.internal.function.numeric.Sum;
import com.jayway.jsonpath.internal.function.text.Concatenate;
import com.jayway.jsonpath.internal.function.text.Length;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class PathFunctionFactory {
    public static final Map<String, Class> FUNCTIONS;

    static {
        HashMap map = new HashMap();
        map.put("avg", Average.class);
        map.put("stddev", StandardDeviation.class);
        map.put("sum", Sum.class);
        map.put("min", Min.class);
        map.put("max", Max.class);
        map.put("concat", Concatenate.class);
        map.put("length", Length.class);
        map.put("size", Length.class);
        map.put("append", Append.class);
        FUNCTIONS = Collections.unmodifiableMap(map);
    }

    public static PathFunction newFunction(String str) throws InvalidPathException {
        Class cls = FUNCTIONS.get(str);
        if (cls == null) {
            throw new InvalidPathException("Function with name: " + str + " does not exist.");
        }
        try {
            return (PathFunction) cls.newInstance();
        } catch (Exception e) {
            throw new InvalidPathException("Function of name: " + str + " cannot be created", e);
        }
    }
}

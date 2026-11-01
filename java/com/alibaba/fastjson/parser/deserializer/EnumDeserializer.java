package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class EnumDeserializer implements ObjectDeserializer {
    public final Class<?> enumClass;
    public long[] enumNameHashCodes;
    public final Enum[] enums;
    public final Enum[] ordinalEnums;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public EnumDeserializer(Class<?> cls) {
        JSONField jSONField;
        int i;
        long j;
        long j2;
        this.enumClass = cls;
        this.ordinalEnums = (Enum[]) cls.getEnumConstants();
        HashMap map = new HashMap();
        int i2 = 0;
        while (true) {
            Enum[] enumArr = this.ordinalEnums;
            if (i2 >= enumArr.length) {
                break;
            }
            Enum r5 = enumArr[i2];
            String strName = r5.name();
            JSONField jSONField2 = null;
            try {
                jSONField = (JSONField) cls.getField(strName).getAnnotation(JSONField.class);
                if (jSONField != null) {
                    try {
                        String strName2 = jSONField.name();
                        if (strName2 != null && strName2.length() > 0) {
                            strName = strName2;
                        }
                    } catch (Exception unused) {
                        jSONField2 = jSONField;
                        jSONField = jSONField2;
                        i = 0;
                        j = -3750763034362895579L;
                        j2 = -3750763034362895579L;
                        while (i < strName.length()) {
                        }
                        map.put(Long.valueOf(j), r5);
                        if (j != j2) {
                        }
                        if (jSONField == null) {
                        }
                        i2++;
                    }
                }
            } catch (Exception unused2) {
            }
            i = 0;
            j = -3750763034362895579L;
            j2 = -3750763034362895579L;
            while (i < strName.length()) {
                int iCharAt = strName.charAt(i);
                long j3 = iCharAt ^ j;
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j2 = (iCharAt ^ j2) * 1099511628211L;
                i++;
                j = j3 * 1099511628211L;
            }
            map.put(Long.valueOf(j), r5);
            if (j != j2) {
                map.put(Long.valueOf(j2), r5);
            }
            if (jSONField == null) {
                String[] strArrAlternateNames = jSONField.alternateNames();
                int length = strArrAlternateNames.length;
                int i3 = 0;
                while (i3 < length) {
                    int i4 = 0;
                    long jCharAt = -3750763034362895579L;
                    while (i4 < strArrAlternateNames[i3].length()) {
                        jCharAt = (jCharAt ^ r9.charAt(i4)) * 1099511628211L;
                        i4++;
                        i2 = i2;
                    }
                    int i5 = i2;
                    if (jCharAt != j && jCharAt != j2) {
                        map.put(Long.valueOf(jCharAt), r5);
                    }
                    i3++;
                    i2 = i5;
                }
            }
            i2++;
        }
        this.enumNameHashCodes = new long[map.size()];
        Iterator it = map.keySet().iterator();
        int i6 = 0;
        while (it.hasNext()) {
            this.enumNameHashCodes[i6] = ((Long) it.next()).longValue();
            i6++;
        }
        Arrays.sort(this.enumNameHashCodes);
        this.enums = new Enum[this.enumNameHashCodes.length];
        int i7 = 0;
        while (true) {
            long[] jArr = this.enumNameHashCodes;
            if (i7 >= jArr.length) {
                return;
            }
            this.enums[i7] = (Enum) map.get(Long.valueOf(jArr[i7]));
            i7++;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        try {
            JSONLexer jSONLexer = defaultJSONParser.lexer;
            int i = jSONLexer.token();
            if (i == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                if (iIntValue >= 0) {
                    Object[] objArr = this.ordinalEnums;
                    if (iIntValue <= objArr.length) {
                        return (T) objArr[iIntValue];
                    }
                }
                throw new JSONException("parse enum " + this.enumClass.getName() + " error, value : " + iIntValue);
            }
            if (i == 4) {
                String strStringVal = jSONLexer.stringVal();
                jSONLexer.nextToken(16);
                if (strStringVal.length() == 0) {
                    return null;
                }
                long jCharAt = -3750763034362895579L;
                for (int i2 = 0; i2 < strStringVal.length(); i2++) {
                    jCharAt = (jCharAt ^ strStringVal.charAt(i2)) * 1099511628211L;
                }
                return (T) getEnumByHashCode(jCharAt);
            }
            if (i == 8) {
                jSONLexer.nextToken(16);
                return null;
            }
            throw new JSONException("parse enum " + this.enumClass.getName() + " error, value : " + defaultJSONParser.parse());
        } catch (JSONException e) {
            throw e;
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public Enum getEnumByHashCode(long j) {
        int iBinarySearch;
        if (this.enums != null && (iBinarySearch = Arrays.binarySearch(this.enumNameHashCodes, j)) >= 0) {
            return this.enums[iBinarySearch];
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    public Enum<?> valueOf(int i) {
        return this.ordinalEnums[i];
    }
}

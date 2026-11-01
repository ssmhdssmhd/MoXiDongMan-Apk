package org.mozilla.javascript;

import androidx.exifinterface.media.ExifInterface;

/* loaded from: classes3.dex */
final class NativeMath extends IdScriptableObject {
    private static final int Id_E = 37;
    private static final int Id_LN10 = 39;
    private static final int Id_LN2 = 40;
    private static final int Id_LOG10E = 42;
    private static final int Id_LOG2E = 41;
    private static final int Id_PI = 38;
    private static final int Id_SQRT1_2 = 43;
    private static final int Id_SQRT2 = 44;
    private static final int Id_abs = 2;
    private static final int Id_acos = 3;
    private static final int Id_acosh = 30;
    private static final int Id_asin = 4;
    private static final int Id_asinh = 31;
    private static final int Id_atan = 5;
    private static final int Id_atan2 = 6;
    private static final int Id_atanh = 32;
    private static final int Id_cbrt = 20;
    private static final int Id_ceil = 7;
    private static final int Id_clz32 = 36;
    private static final int Id_cos = 8;
    private static final int Id_cosh = 21;
    private static final int Id_exp = 9;
    private static final int Id_expm1 = 22;
    private static final int Id_floor = 10;
    private static final int Id_fround = 35;
    private static final int Id_hypot = 23;
    private static final int Id_imul = 28;
    private static final int Id_log = 11;
    private static final int Id_log10 = 25;
    private static final int Id_log1p = 24;
    private static final int Id_log2 = 34;
    private static final int Id_max = 12;
    private static final int Id_min = 13;
    private static final int Id_pow = 14;
    private static final int Id_random = 15;
    private static final int Id_round = 16;
    private static final int Id_sign = 33;
    private static final int Id_sin = 17;
    private static final int Id_sinh = 26;
    private static final int Id_sqrt = 18;
    private static final int Id_tan = 19;
    private static final int Id_tanh = 27;
    private static final int Id_toSource = 1;
    private static final int Id_trunc = 29;
    private static final int LAST_METHOD_ID = 36;
    private static final double LOG2E = 1.4426950408889634d;
    private static final Object MATH_TAG = "Math";
    private static final int MAX_ID = 44;
    private static final long serialVersionUID = -8838847185801131569L;

    private NativeMath() {
    }

    public static void init(Scriptable scriptable, boolean z) {
        NativeMath nativeMath = new NativeMath();
        nativeMath.activatePrototypeMap(44);
        nativeMath.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        nativeMath.setParentScope(scriptable);
        if (z) {
            nativeMath.sealObject();
        }
        ScriptableObject.defineProperty(scriptable, "Math", nativeMath, 2);
    }

    private static double js_hypot(Object[] objArr) {
        double d = 0.0d;
        if (objArr == null) {
            return 0.0d;
        }
        for (Object obj : objArr) {
            double number = ScriptRuntime.toNumber(obj);
            if (number == ScriptRuntime.NaN) {
                return number;
            }
            if (number == Double.POSITIVE_INFINITY || number == Double.NEGATIVE_INFINITY) {
                return Double.POSITIVE_INFINITY;
            }
            d += number * number;
        }
        return Math.sqrt(d);
    }

    private static int js_imul(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return ScriptRuntime.toInt32(objArr, 0) * ScriptRuntime.toInt32(objArr, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0063, code lost:
    
        if (r20 < 1.0d) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static double js_pow(double d, double d2) {
        double dPow;
        if (d2 != d2) {
            return d2;
        }
        if (d2 == 0.0d) {
            return 1.0d;
        }
        if (d == 0.0d) {
            if (1.0d / d <= 0.0d) {
                long j = (long) d2;
                if (j == d2 && (j & 1) != 0) {
                    dPow = d2 > 0.0d ? -0.0d : Double.NEGATIVE_INFINITY;
                    return dPow;
                }
                if (d2 <= 0.0d) {
                    return Double.POSITIVE_INFINITY;
                }
            } else if (d2 <= 0.0d) {
                return Double.POSITIVE_INFINITY;
            }
            return 0.0d;
        }
        dPow = Math.pow(d, d2);
        if (dPow != dPow) {
            if (d2 != Double.POSITIVE_INFINITY) {
                if (d2 == Double.NEGATIVE_INFINITY) {
                    if (d >= -1.0d && 1.0d >= d) {
                        if (-1.0d < d && d < 1.0d) {
                            return Double.POSITIVE_INFINITY;
                        }
                    }
                    return 0.0d;
                }
                if (d == Double.POSITIVE_INFINITY) {
                    if (d2 > 0.0d) {
                        return Double.POSITIVE_INFINITY;
                    }
                } else if (d == Double.NEGATIVE_INFINITY) {
                    long j2 = (long) d2;
                    if (j2 == d2 && (j2 & 1) != 0) {
                        return d2 <= 0.0d ? -0.0d : Double.NEGATIVE_INFINITY;
                    }
                    if (d2 > 0.0d) {
                        return Double.POSITIVE_INFINITY;
                    }
                }
                return 0.0d;
            }
            if (d < -1.0d || 1.0d < d) {
                return Double.POSITIVE_INFINITY;
            }
            if (-1.0d < d) {
            }
        }
        return dPow;
    }

    private static double js_trunc(double d) {
        return d < 0.0d ? Math.ceil(d) : Math.floor(d);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        double number;
        if (!idFunctionObject.hasTag(MATH_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        double dAtan = Double.NaN;
        int i = 0;
        switch (iMethodId) {
            case 1:
                return "Math";
            case 2:
                number = ScriptRuntime.toNumber(objArr, 0);
                if (number != 0.0d) {
                    if (number < 0.0d) {
                        number = -number;
                    }
                    dAtan = number;
                    return ScriptRuntime.wrapNumber(dAtan);
                }
                dAtan = 0.0d;
                return ScriptRuntime.wrapNumber(dAtan);
            case 3:
            case 4:
                double number2 = ScriptRuntime.toNumber(objArr, 0);
                if (number2 == number2 && -1.0d <= number2 && number2 <= 1.0d) {
                    number = iMethodId == 3 ? Math.acos(number2) : Math.asin(number2);
                    dAtan = number;
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 5:
                dAtan = Math.atan(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 6:
                dAtan = Math.atan2(ScriptRuntime.toNumber(objArr, 0), ScriptRuntime.toNumber(objArr, 1));
                return ScriptRuntime.wrapNumber(dAtan);
            case 7:
                dAtan = Math.ceil(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 8:
                double number3 = ScriptRuntime.toNumber(objArr, 0);
                if (number3 != Double.POSITIVE_INFINITY && number3 != Double.NEGATIVE_INFINITY) {
                    number = Math.cos(number3);
                    dAtan = number;
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 9:
                number = ScriptRuntime.toNumber(objArr, 0);
                if (number != Double.POSITIVE_INFINITY) {
                    if (number != Double.NEGATIVE_INFINITY) {
                        number = Math.exp(number);
                    }
                    dAtan = 0.0d;
                    return ScriptRuntime.wrapNumber(dAtan);
                }
                dAtan = number;
                return ScriptRuntime.wrapNumber(dAtan);
            case 10:
                dAtan = Math.floor(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 11:
                double number4 = ScriptRuntime.toNumber(objArr, 0);
                if (number4 >= 0.0d) {
                    number = Math.log(number4);
                    dAtan = number;
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 12:
            case 13:
                double dMax = iMethodId != 12 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
                while (true) {
                    if (i != objArr.length) {
                        double number5 = ScriptRuntime.toNumber(objArr[i]);
                        if (number5 != number5) {
                            dAtan = number5;
                        } else {
                            dMax = iMethodId == 12 ? Math.max(dMax, number5) : Math.min(dMax, number5);
                            i++;
                        }
                    } else {
                        dAtan = dMax;
                    }
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 14:
                dAtan = js_pow(ScriptRuntime.toNumber(objArr, 0), ScriptRuntime.toNumber(objArr, 1));
                return ScriptRuntime.wrapNumber(dAtan);
            case 15:
                dAtan = Math.random();
                return ScriptRuntime.wrapNumber(dAtan);
            case 16:
                dAtan = ScriptRuntime.toNumber(objArr, 0);
                if (dAtan == dAtan && dAtan != Double.POSITIVE_INFINITY && dAtan != Double.NEGATIVE_INFINITY) {
                    long jRound = Math.round(dAtan);
                    if (jRound != 0) {
                        number = jRound;
                    } else if (dAtan < 0.0d) {
                        number = ScriptRuntime.negativeZero;
                    } else if (dAtan != 0.0d) {
                        dAtan = 0.0d;
                    }
                    dAtan = number;
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 17:
                double number6 = ScriptRuntime.toNumber(objArr, 0);
                if (number6 != Double.POSITIVE_INFINITY && number6 != Double.NEGATIVE_INFINITY) {
                    number = Math.sin(number6);
                    dAtan = number;
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 18:
                dAtan = Math.sqrt(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 19:
                dAtan = Math.tan(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 20:
                dAtan = Math.cbrt(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 21:
                dAtan = Math.cosh(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 22:
                dAtan = Math.expm1(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 23:
                dAtan = js_hypot(objArr);
                return ScriptRuntime.wrapNumber(dAtan);
            case 24:
                dAtan = Math.log1p(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 25:
                dAtan = Math.log10(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 26:
                dAtan = Math.sinh(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 27:
                dAtan = Math.tanh(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 28:
                return Integer.valueOf(js_imul(objArr));
            case 29:
                dAtan = js_trunc(ScriptRuntime.toNumber(objArr, 0));
                return ScriptRuntime.wrapNumber(dAtan);
            case 30:
                double number7 = ScriptRuntime.toNumber(objArr, 0);
                return number7 == number7 ? Double.valueOf(Math.log(number7 + Math.sqrt((number7 * number7) - 1.0d))) : Double.valueOf(Double.NaN);
            case 31:
                double number8 = ScriptRuntime.toNumber(objArr, 0);
                return (number8 == Double.POSITIVE_INFINITY || number8 == Double.NEGATIVE_INFINITY) ? Double.valueOf(number8) : number8 == number8 ? number8 == 0.0d ? 1.0d / number8 > 0.0d ? Double.valueOf(0.0d) : Double.valueOf(-0.0d) : Double.valueOf(Math.log(number8 + Math.sqrt((number8 * number8) + 1.0d))) : Double.valueOf(Double.NaN);
            case 32:
                double number9 = ScriptRuntime.toNumber(objArr, 0);
                return (number9 != number9 || -1.0d > number9 || number9 > 1.0d) ? Double.valueOf(Double.NaN) : number9 == 0.0d ? 1.0d / number9 > 0.0d ? Double.valueOf(0.0d) : Double.valueOf(-0.0d) : Double.valueOf(Math.log((number9 + 1.0d) / (number9 - 1.0d)) * 0.5d);
            case 33:
                double number10 = ScriptRuntime.toNumber(objArr, 0);
                return number10 == number10 ? number10 == 0.0d ? 1.0d / number10 > 0.0d ? Double.valueOf(0.0d) : Double.valueOf(-0.0d) : Double.valueOf(Math.signum(number10)) : Double.valueOf(Double.NaN);
            case 34:
                double number11 = ScriptRuntime.toNumber(objArr, 0);
                if (number11 >= 0.0d) {
                    number = Math.log(number11) * LOG2E;
                    dAtan = number;
                }
                return ScriptRuntime.wrapNumber(dAtan);
            case 35:
                number = (float) ScriptRuntime.toNumber(objArr, 0);
                dAtan = number;
                return ScriptRuntime.wrapNumber(dAtan);
            case 36:
                double number12 = ScriptRuntime.toNumber(objArr, 0);
                if (number12 == 0.0d || number12 != number12 || number12 == Double.POSITIVE_INFINITY || number12 == Double.NEGATIVE_INFINITY) {
                    return 32;
                }
                if (ScriptRuntime.toUint32(number12) == 0) {
                    return 32;
                }
                return Double.valueOf(31.0d - Math.floor(Math.log(r0 >>> 0) * LOG2E));
            default:
                throw new IllegalStateException(String.valueOf(iMethodId));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0297 A[ADDED_TO_REGION] */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int i = 4;
        switch (str.length()) {
            case 1:
                if (str.charAt(0) == 'E') {
                    return 37;
                }
                str2 = null;
                i = 0;
                if (str2 != null || str2 == str || str2.equals(str)) {
                    return i;
                }
                return 0;
            case 2:
                if (str.charAt(0) == 'P' && str.charAt(1) == 'I') {
                    return 38;
                }
                str2 = null;
                i = 0;
                if (str2 != null) {
                }
                return i;
            case 3:
                char cCharAt = str.charAt(0);
                if (cCharAt != 'L') {
                    if (cCharAt != 'a') {
                        if (cCharAt != 'c') {
                            if (cCharAt != 'e') {
                                if (cCharAt != 'p') {
                                    if (cCharAt != 'l') {
                                        if (cCharAt == 'm') {
                                            char cCharAt2 = str.charAt(2);
                                            if (cCharAt2 == 'n') {
                                                if (str.charAt(1) == 'i') {
                                                    return 13;
                                                }
                                            } else if (cCharAt2 == 'x' && str.charAt(1) == 'a') {
                                                return 12;
                                            }
                                        } else if (cCharAt != 's') {
                                            if (cCharAt == 't' && str.charAt(2) == 'n' && str.charAt(1) == 'a') {
                                                return 19;
                                            }
                                        } else if (str.charAt(2) == 'n' && str.charAt(1) == 'i') {
                                            return 17;
                                        }
                                    } else if (str.charAt(2) == 'g' && str.charAt(1) == 'o') {
                                        return 11;
                                    }
                                } else if (str.charAt(2) == 'w' && str.charAt(1) == 'o') {
                                    return 14;
                                }
                            } else if (str.charAt(2) == 'p' && str.charAt(1) == 'x') {
                                return 9;
                            }
                        } else if (str.charAt(2) == 's' && str.charAt(1) == 'o') {
                            return 8;
                        }
                    } else if (str.charAt(2) == 's' && str.charAt(1) == 'b') {
                        return 2;
                    }
                } else if (str.charAt(2) == '2' && str.charAt(1) == 'N') {
                    return 40;
                }
                str2 = null;
                i = 0;
                if (str2 != null) {
                }
                return i;
            case 4:
                char cCharAt3 = str.charAt(1);
                if (cCharAt3 == 'N') {
                    i = 39;
                    str2 = "LN10";
                } else if (cCharAt3 != 'e') {
                    if (cCharAt3 == 'i') {
                        char cCharAt4 = str.charAt(3);
                        if (cCharAt4 == 'h') {
                            if (str.charAt(0) == 's' && str.charAt(2) == 'n') {
                                return 26;
                            }
                        } else if (cCharAt4 == 'n' && str.charAt(0) == 's' && str.charAt(2) == 'g') {
                            return 33;
                        }
                    } else if (cCharAt3 == 'm') {
                        i = 28;
                        str2 = "imul";
                    } else if (cCharAt3 == 'o') {
                        char cCharAt5 = str.charAt(0);
                        if (cCharAt5 == 'c') {
                            if (str.charAt(2) == 's' && str.charAt(3) == 'h') {
                                return 21;
                            }
                        } else if (cCharAt5 == 'l' && str.charAt(2) == 'g' && str.charAt(3) == '2') {
                            return 34;
                        }
                    } else if (cCharAt3 == 'q') {
                        i = 18;
                        str2 = "sqrt";
                    } else if (cCharAt3 == 's') {
                        str2 = "asin";
                    } else if (cCharAt3 != 't') {
                        switch (cCharAt3) {
                            case 'a':
                                i = 27;
                                str2 = "tanh";
                                break;
                            case 'b':
                                i = 20;
                                str2 = "cbrt";
                                break;
                            case 'c':
                                str2 = "acos";
                                i = 3;
                                break;
                        }
                    } else {
                        i = 5;
                        str2 = "atan";
                    }
                    str2 = null;
                    i = 0;
                } else {
                    i = 7;
                    str2 = "ceil";
                }
                if (str2 != null) {
                }
                return i;
            case 5:
                char cCharAt6 = str.charAt(0);
                if (cCharAt6 == 'L') {
                    i = 41;
                    str2 = "LOG2E";
                } else if (cCharAt6 == 'S') {
                    i = 44;
                    str2 = "SQRT2";
                } else if (cCharAt6 == 'a') {
                    char cCharAt7 = str.charAt(1);
                    if (cCharAt7 == 'c') {
                        i = 30;
                        str2 = "acosh";
                    } else if (cCharAt7 == 's') {
                        i = 31;
                        str2 = "asinh";
                    } else {
                        if (cCharAt7 == 't') {
                            char cCharAt8 = str.charAt(4);
                            if (cCharAt8 == '2') {
                                if (str.charAt(2) == 'a' && str.charAt(3) == 'n') {
                                    return 6;
                                }
                            } else if (cCharAt8 == 'h' && str.charAt(2) == 'a' && str.charAt(3) == 'n') {
                                return 32;
                            }
                        }
                        str2 = null;
                        i = 0;
                    }
                } else if (cCharAt6 == 'c') {
                    i = 36;
                    str2 = "clz32";
                } else if (cCharAt6 == 'h') {
                    i = 23;
                    str2 = "hypot";
                } else if (cCharAt6 == 'l') {
                    char cCharAt9 = str.charAt(4);
                    if (cCharAt9 == '0') {
                        i = 25;
                        str2 = "log10";
                    } else if (cCharAt9 == 'p') {
                        i = 24;
                        str2 = "log1p";
                    }
                } else if (cCharAt6 == 'r') {
                    i = 16;
                    str2 = "round";
                } else if (cCharAt6 == 't') {
                    i = 29;
                    str2 = "trunc";
                } else if (cCharAt6 == 'e') {
                    i = 22;
                    str2 = "expm1";
                } else if (cCharAt6 != 'f') {
                    str2 = null;
                    i = 0;
                } else {
                    i = 10;
                    str2 = "floor";
                }
                if (str2 != null) {
                }
                return i;
            case 6:
                char cCharAt10 = str.charAt(0);
                if (cCharAt10 == 'L') {
                    i = 42;
                    str2 = "LOG10E";
                } else if (cCharAt10 == 'f') {
                    i = 35;
                    str2 = "fround";
                } else if (cCharAt10 == 'r') {
                    i = 15;
                    str2 = "random";
                }
                if (str2 != null) {
                }
                return i;
            case 7:
                i = 43;
                str2 = "SQRT1_2";
                if (str2 != null) {
                }
                return i;
            case 8:
                str2 = "toSource";
                i = 1;
                if (str2 != null) {
                }
                return i;
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Math";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        double d;
        String str;
        String str2;
        String str3;
        if (i > 36) {
            switch (i) {
                case 37:
                    d = 2.718281828459045d;
                    str = ExifInterface.LONGITUDE_EAST;
                    break;
                case 38:
                    d = 3.141592653589793d;
                    str = "PI";
                    break;
                case 39:
                    d = 2.302585092994046d;
                    str = "LN10";
                    break;
                case 40:
                    d = 0.6931471805599453d;
                    str = "LN2";
                    break;
                case 41:
                    d = LOG2E;
                    str = "LOG2E";
                    break;
                case 42:
                    d = 0.4342944819032518d;
                    str = "LOG10E";
                    break;
                case 43:
                    d = 0.7071067811865476d;
                    str = "SQRT1_2";
                    break;
                case 44:
                    d = 1.4142135623730951d;
                    str = "SQRT2";
                    break;
                default:
                    throw new IllegalStateException(String.valueOf(i));
            }
            initPrototypeValue(i, str, ScriptRuntime.wrapNumber(d), 7);
            return;
        }
        int i2 = 1;
        switch (i) {
            case 1:
                str2 = "toSource";
                str3 = str2;
                i2 = 0;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 2:
                str3 = "abs";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 3:
                str3 = "acos";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 4:
                str3 = "asin";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 5:
                str3 = "atan";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 6:
                str3 = "atan2";
                i2 = 2;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 7:
                str3 = "ceil";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 8:
                str3 = "cos";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 9:
                str3 = "exp";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 10:
                str3 = "floor";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 11:
                str3 = "log";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 12:
                str3 = "max";
                i2 = 2;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 13:
                str3 = "min";
                i2 = 2;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 14:
                str3 = "pow";
                i2 = 2;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 15:
                str2 = "random";
                str3 = str2;
                i2 = 0;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 16:
                str3 = "round";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 17:
                str3 = "sin";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 18:
                str3 = "sqrt";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 19:
                str3 = "tan";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 20:
                str3 = "cbrt";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 21:
                str3 = "cosh";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 22:
                str3 = "expm1";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 23:
                str3 = "hypot";
                i2 = 2;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 24:
                str3 = "log1p";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 25:
                str3 = "log10";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 26:
                str3 = "sinh";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 27:
                str3 = "tanh";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 28:
                str3 = "imul";
                i2 = 2;
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 29:
                str3 = "trunc";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 30:
                str3 = "acosh";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 31:
                str3 = "asinh";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 32:
                str3 = "atanh";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 33:
                str3 = "sign";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 34:
                str3 = "log2";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 35:
                str3 = "fround";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            case 36:
                str3 = "clz32";
                initPrototypeMethod(MATH_TAG, i, str3, i2);
                return;
            default:
                throw new IllegalStateException(String.valueOf(i));
        }
    }
}

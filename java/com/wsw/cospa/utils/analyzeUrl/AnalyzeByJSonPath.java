package com.wsw.cospa.utils.analyzeUrl;

import android.text.TextUtils;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.Predicate;
import com.jayway.jsonpath.ReadContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class AnalyzeByJSonPath {
    private static final Pattern jsonRulePattern = Pattern.compile("(?<=\\{)\\$\\..+?(?=\\})");
    private ReadContext ctx;

    public List<Object> getList(String str) {
        String[] strArrSplit;
        String str2;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        if (str.contains("&&")) {
            strArrSplit = str.split("&&");
            str2 = "&";
        } else if (str.contains("%%")) {
            strArrSplit = str.split("%%");
            str2 = "%";
        } else {
            strArrSplit = str.split("\\|\\|");
            str2 = "|";
        }
        if (strArrSplit.length == 1) {
            try {
                return (List) this.ctx.read(strArrSplit[0], new Predicate[0]);
            } catch (Exception unused) {
                return null;
            }
        }
        ArrayList<List> arrayList2 = new ArrayList();
        for (String str3 : strArrSplit) {
            List<Object> list = getList(str3);
            if (list != null && !list.isEmpty()) {
                arrayList2.add(list);
                if (list.size() > 0 && str2.equals("|")) {
                    break;
                }
            }
        }
        if (arrayList2.size() > 0) {
            if ("%".equals(str2)) {
                for (int i = 0; i < ((List) arrayList2.get(0)).size(); i++) {
                    for (List list2 : arrayList2) {
                        if (i < list2.size()) {
                            arrayList.add(list2.get(i));
                        }
                    }
                }
            } else {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    arrayList.addAll((List) it.next());
                }
            }
        }
        return arrayList;
    }

    public String getString(String str) {
        String[] strArrSplit;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.contains("&&")) {
            strArrSplit = str.split("&&");
            str2 = "&";
        } else {
            strArrSplit = str.split("\\|\\|");
            str2 = "|";
        }
        if (strArrSplit.length != 1) {
            StringBuilder sb = new StringBuilder();
            for (String str3 : strArrSplit) {
                String string = getString(str3);
                if (!TextUtils.isEmpty(string)) {
                    sb.append(string);
                    if (str2.equals("|")) {
                        break;
                    }
                }
            }
            return sb.toString();
        }
        if (str.contains("{$.")) {
            Matcher matcher = jsonRulePattern.matcher(str);
            while (matcher.find()) {
                str = str.replace(String.format("{%s}", matcher.group()), getString(matcher.group()));
            }
            return str;
        }
        try {
            Object obj = this.ctx.read(str, new Predicate[0]);
            if (!(obj instanceof List)) {
                return String.valueOf(obj);
            }
            StringBuilder sb2 = new StringBuilder();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
                sb2.append("\n");
            }
            return sb2.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public List<String> getStringList(String str) {
        String[] strArrSplit;
        String str2;
        Object obj;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        if (str.contains("&&")) {
            strArrSplit = str.split("&&");
            str2 = "&";
        } else if (str.contains("%%")) {
            strArrSplit = str.split("%%");
            str2 = "%";
        } else {
            strArrSplit = str.split("\\|\\|");
            str2 = "|";
        }
        if (strArrSplit.length == 1) {
            if (str.contains("{$.")) {
                Matcher matcher = jsonRulePattern.matcher(str);
                while (matcher.find()) {
                    Iterator<String> it = getStringList(matcher.group()).iterator();
                    while (it.hasNext()) {
                        arrayList.add(str.replace(String.format("{%s}", matcher.group()), it.next()));
                    }
                }
                return arrayList;
            }
            try {
                obj = this.ctx.read(str, new Predicate[0]);
            } catch (Exception unused) {
            }
            if (obj == null) {
                return arrayList;
            }
            if (obj instanceof List) {
                Iterator it2 = ((List) obj).iterator();
                while (it2.hasNext()) {
                    arrayList.add(String.valueOf(it2.next()));
                }
            } else {
                arrayList.add(String.valueOf(obj));
            }
            return arrayList;
        }
        ArrayList<List> arrayList2 = new ArrayList();
        for (String str3 : strArrSplit) {
            List<String> stringList = getStringList(str3);
            if (stringList != null && !stringList.isEmpty()) {
                arrayList2.add(stringList);
                if (stringList.size() > 0 && str2.equals("|")) {
                    break;
                }
            }
        }
        if (arrayList2.size() > 0) {
            if ("%".equals(str2)) {
                for (int i = 0; i < ((List) arrayList2.get(0)).size(); i++) {
                    for (List list : arrayList2) {
                        if (i < list.size()) {
                            arrayList.add((String) list.get(i));
                        }
                    }
                }
            } else {
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    arrayList.addAll((List) it3.next());
                }
            }
        }
        return arrayList;
    }

    public AnalyzeByJSonPath parse(Object obj) {
        if (obj instanceof String) {
            this.ctx = JsonPath.parse((String) obj);
        } else {
            this.ctx = JsonPath.parse(obj);
        }
        return this;
    }
}

package freemarker.ext.servlet;

import android.support.v4.on0;
import android.support.v4.sl2;
import android.support.v4.ul2;
import freemarker.cache.Ccatch;
import freemarker.cache.Celse;
import freemarker.cache.Cfor;
import freemarker.cache.Cpackage;
import freemarker.cache.TemplateLoader;
import freemarker.core.c5;
import freemarker.log.Cif;
import freemarker.template.utility.Csuper;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import javax.servlet.ServletContext;

/* renamed from: freemarker.ext.servlet.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase {

    /* renamed from: do, reason: not valid java name */
    public static final String f24958do = "class://";

    /* renamed from: for, reason: not valid java name */
    public static final String f24959for = "file://";

    /* renamed from: if, reason: not valid java name */
    public static final String f24960if = "classpath:";

    /* renamed from: new, reason: not valid java name */
    public static final String f24961new = "settings";

    /* renamed from: try, reason: not valid java name */
    private static final Cif f24962try = Cif.m29193break("freemarker.servlet");

    /* renamed from: freemarker.ext.servlet.case$do, reason: invalid class name */
    public static final class Cdo extends RuntimeException {
        public Cdo(String str, Throwable th) {
            super(str, th);
        }

        public Cdo(String str) {
            super(str);
        }
    }

    private Ccase() {
    }

    /* renamed from: case, reason: not valid java name */
    public static List m29109case(String str) {
        ArrayList arrayList = new ArrayList();
        while (str.length() != 0) {
            int iM29112if = m29112if(str);
            if (iM29112if == -1) {
                iM29112if = str.length();
            }
            int iLastIndexOf = str.lastIndexOf(44, iM29112if - 1);
            String strTrim = str.substring(iLastIndexOf != -1 ? iLastIndexOf + 1 : 0).trim();
            if (strTrim.length() != 0) {
                arrayList.add(0, strTrim);
            } else if (arrayList.size() > 0) {
                throw new Cdo("Missing list item before a comma");
            }
            str = iLastIndexOf != -1 ? str.substring(0, iLastIndexOf).trim() : "";
        }
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public static TemplateLoader m29110do(String str, freemarker.template.Cdo cdo, Class cls, ServletContext servletContext) throws IOException {
        TemplateLoader cpackage;
        int iM29112if = m29112if(str);
        String strTrim = (iM29112if == -1 ? str : str.substring(0, iM29112if)).trim();
        if (strTrim.startsWith(f24958do)) {
            cpackage = new Cfor((Class<?>) cls, m29111for(strTrim.substring(8)));
        } else if (strTrim.startsWith(f24960if)) {
            String strM29111for = m29111for(strTrim.substring(10));
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                f24962try.mo29187package("No Thread Context Class Loader was found. Falling back to the class loader of " + cls.getName() + ".");
                contextClassLoader = cls.getClassLoader();
            }
            cpackage = new Cfor(contextClassLoader, strM29111for);
        } else if (strTrim.startsWith(f24959for)) {
            cpackage = new Celse(new File(strTrim.substring(7)));
        } else if (!strTrim.startsWith("[") || cdo.getIncompatibleImprovements().intValue() < ul2.f6939try) {
            if (strTrim.startsWith("{") && cdo.getIncompatibleImprovements().intValue() >= ul2.f6939try) {
                throw new Cdo("Template paths starting with \"{\" are reseved for future purposes");
            }
            cpackage = new Cpackage(servletContext, strTrim);
        } else {
            if (!strTrim.endsWith("]")) {
                throw new Cdo("Failed to parse template path; closing \"]\" is missing.");
            }
            List listM29109case = m29109case(strTrim.substring(1, strTrim.length() - 1).trim());
            TemplateLoader[] templateLoaderArr = new TemplateLoader[listM29109case.size()];
            for (int i = 0; i < listM29109case.size(); i++) {
                templateLoaderArr[i] = m29110do((String) listM29109case.get(i), cdo, cls, servletContext);
            }
            cpackage = new Ccatch(templateLoaderArr);
        }
        if (iM29112if != -1) {
            try {
                if (c5.m27905goto(str, str.indexOf(40, iM29112if) + 1, cpackage, sl2.m7509if()) != str.length()) {
                    throw new Cdo("Template path should end after the setting list in: " + str);
                }
            } catch (Exception e) {
                throw new Cdo("Failed to set properties in: " + str, e);
            }
        }
        return cpackage;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m29111for(String str) {
        while (str.startsWith(on0.f4694final)) {
            str = str.substring(1);
        }
        return on0.f4694final + str;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0056  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m29112if(String str) {
        int length = str.length() - 1;
        while (length >= 0 && Character.isWhitespace(str.charAt(length))) {
            length--;
        }
        if (length >= 0 && str.charAt(length) == ')') {
            int i = length - 1;
            int i2 = 1;
            char c = 0;
            while (i2 > 0) {
                if (i < 0) {
                    return -1;
                }
                char cCharAt = str.charAt(i);
                if (c != 0) {
                    if (c != 1) {
                        if (c == 2 && cCharAt == '\"' && (i <= 0 || str.charAt(i - 1) != '\\')) {
                            c = 0;
                        }
                    } else if (cCharAt != '\'' || (i > 0 && str.charAt(i - 1) == '\\')) {
                    }
                } else if (cCharAt != '\"') {
                    switch (cCharAt) {
                        case '\'':
                            c = 1;
                            break;
                        case '(':
                            i2--;
                            break;
                        case ')':
                            i2++;
                            break;
                    }
                } else {
                    c = 2;
                }
                i--;
            }
            while (i >= 0 && Character.isWhitespace(str.charAt(i))) {
                i--;
            }
            int i3 = i + 1;
            while (i >= 0 && Character.isJavaIdentifierPart(str.charAt(i))) {
                i--;
            }
            int i4 = i + 1;
            if (i4 == i3) {
                return -1;
            }
            String strSubstring = str.substring(i4, i3);
            while (i >= 0 && Character.isWhitespace(str.charAt(i))) {
                i--;
            }
            if (i >= 0 && str.charAt(i) == '?') {
                if (strSubstring.equals(f24961new)) {
                    return i;
                }
                throw new Cdo(Csuper.m29330synchronized(strSubstring) + " is unexpected after the \"?\". Expected \"" + f24961new + "\".");
            }
        }
        return -1;
    }

    /* renamed from: new, reason: not valid java name */
    public static List m29113new(String str) throws ParseException {
        ArrayList arrayList = new ArrayList();
        String[] strArrT = Csuper.t(str, ',');
        for (int i = 0; i < strArrT.length; i++) {
            String strTrim = strArrT[i].trim();
            if (strTrim.length() != 0) {
                arrayList.add(strTrim);
            } else if (i != strArrT.length - 1) {
                throw new ParseException("Missing list item berfore a comma", -1);
            }
        }
        return arrayList;
    }

    /* renamed from: try, reason: not valid java name */
    public static List m29114try(String str) throws ParseException {
        List listM29113new = m29113new(str);
        ArrayList arrayList = new ArrayList(listM29113new.size());
        for (int i = 0; i < listM29113new.size(); i++) {
            arrayList.add(Pattern.compile((String) listM29113new.get(i)));
        }
        return arrayList;
    }
}

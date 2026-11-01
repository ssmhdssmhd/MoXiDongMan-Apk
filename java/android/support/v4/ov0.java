package android.support.v4;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.Format;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TimeZone;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.i18n.filter.Filter;

/* loaded from: classes3.dex */
public class ov0 {

    /* renamed from: goto, reason: not valid java name */
    public static final String f4758goto = "ISO-8859-1";

    /* renamed from: case, reason: not valid java name */
    public Filter f4759case;

    /* renamed from: do, reason: not valid java name */
    public final String f4760do;

    /* renamed from: else, reason: not valid java name */
    public ClassLoader f4761else;

    /* renamed from: for, reason: not valid java name */
    public String f4762for;

    /* renamed from: if, reason: not valid java name */
    public final String f4763if;

    /* renamed from: new, reason: not valid java name */
    public Cdo f4764new;

    /* renamed from: try, reason: not valid java name */
    public Cdo f4765try;

    /* renamed from: android.support.v4.ov0$do, reason: invalid class name */
    public class Cdo {

        /* renamed from: break, reason: not valid java name */
        public static final int f4766break = 2;

        /* renamed from: goto, reason: not valid java name */
        public static final int f4767goto = 0;

        /* renamed from: this, reason: not valid java name */
        public static final int f4768this = 1;

        /* renamed from: case, reason: not valid java name */
        public Object[] f4769case;

        /* renamed from: do, reason: not valid java name */
        public Filter f4770do;

        /* renamed from: for, reason: not valid java name */
        public int[] f4772for;

        /* renamed from: if, reason: not valid java name */
        public boolean[] f4773if;

        /* renamed from: new, reason: not valid java name */
        public Object[] f4774new;

        /* renamed from: try, reason: not valid java name */
        public Object[] f4775try;

        public Cdo(ov0 ov0Var) {
            this(new Object[0]);
        }

        public Cdo(Object[] objArr) {
            this.f4770do = null;
            this.f4774new = objArr;
            this.f4775try = new Object[objArr.length];
            this.f4769case = new Object[objArr.length];
            this.f4773if = new boolean[objArr.length];
            this.f4772for = new int[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] instanceof b92) {
                    this.f4775try[i] = ((b92) objArr[i]).m489do();
                    this.f4772for[i] = 0;
                } else if (objArr[i] instanceof uc2) {
                    this.f4775try[i] = ((uc2) objArr[i]).m8370do();
                    if (objArr[i] instanceof vc2) {
                        this.f4772for[i] = 2;
                    } else {
                        this.f4772for[i] = 1;
                    }
                } else {
                    this.f4775try[i] = objArr[i];
                    this.f4772for[i] = 1;
                }
                this.f4773if[i] = this.f4775try[i] instanceof mv0;
            }
        }

        /* renamed from: do, reason: not valid java name */
        private Object m5797do(int i, Object obj) {
            Filter filter = this.f4770do;
            if (filter != null) {
                if (obj == null) {
                    obj = "null";
                }
                if (i != 0) {
                    if (i == 1) {
                        return filter.doFilter(obj.toString());
                    }
                    if (i != 2) {
                        return null;
                    }
                    return filter.doFilterUrl(obj.toString());
                }
            }
            return obj;
        }

        /* renamed from: case, reason: not valid java name */
        public void m5798case(Filter filter) {
            if (filter != this.f4770do) {
                for (int i = 0; i < this.f4775try.length; i++) {
                    this.f4769case[i] = null;
                }
            }
            this.f4770do = filter;
        }

        /* renamed from: for, reason: not valid java name */
        public Filter m5799for() {
            return this.f4770do;
        }

        /* renamed from: if, reason: not valid java name */
        public Object[] m5800if() {
            return this.f4774new;
        }

        /* renamed from: new, reason: not valid java name */
        public Object[] m5801new(Locale locale) {
            Object objM5797do;
            Object[] objArr = new Object[this.f4775try.length];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f4775try;
                if (i >= objArr2.length) {
                    return objArr;
                }
                Object[] objArr3 = this.f4769case;
                if (objArr3[i] != null) {
                    objM5797do = objArr3[i];
                } else {
                    Object obj = objArr2[i];
                    if (this.f4773if[i]) {
                        objM5797do = m5797do(this.f4772for[i], ((mv0) obj).m5011final(locale));
                    } else {
                        objM5797do = m5797do(this.f4772for[i], obj);
                        this.f4769case[i] = objM5797do;
                    }
                }
                objArr[i] = objM5797do;
                i++;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m5802try() {
            return this.f4775try.length == 0;
        }
    }

    public ov0(String str, String str2) throws NullPointerException {
        this.f4762for = "ISO-8859-1";
        this.f4765try = null;
        this.f4759case = null;
        this.f4761else = null;
        if (str == null || str2 == null) {
            throw null;
        }
        this.f4760do = str2;
        this.f4763if = str;
        this.f4764new = new Cdo(this);
    }

    public ov0(String str, String str2, String str3) throws UnsupportedEncodingException, NullPointerException {
        this.f4762for = "ISO-8859-1";
        this.f4765try = null;
        this.f4759case = null;
        this.f4761else = null;
        if (str == null || str2 == null) {
            throw null;
        }
        this.f4760do = str2;
        this.f4763if = str;
        this.f4764new = new Cdo(this);
        if (Charset.isSupported(str3)) {
            this.f4762for = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public ov0(String str, String str2, String str3, Object[] objArr) throws UnsupportedEncodingException, NullPointerException {
        this.f4762for = "ISO-8859-1";
        this.f4765try = null;
        this.f4759case = null;
        this.f4761else = null;
        if (str == null || str2 == null || objArr == null) {
            throw null;
        }
        this.f4760do = str2;
        this.f4763if = str;
        this.f4764new = new Cdo(objArr);
        if (Charset.isSupported(str3)) {
            this.f4762for = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public ov0(String str, String str2, Object[] objArr) throws NullPointerException {
        this.f4762for = "ISO-8859-1";
        this.f4765try = null;
        this.f4759case = null;
        this.f4761else = null;
        if (str == null || str2 == null || objArr == null) {
            throw null;
        }
        this.f4760do = str2;
        this.f4763if = str;
        this.f4764new = new Cdo(objArr);
    }

    /* renamed from: break, reason: not valid java name */
    public void m5784break(ClassLoader classLoader) {
        this.f4761else = classLoader;
    }

    /* renamed from: case, reason: not valid java name */
    public Object[] m5785case() {
        Cdo cdo = this.f4765try;
        if (cdo == null) {
            return null;
        }
        return cdo.m5800if();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m5786catch(Object obj) {
        m5787class(new Object[]{obj});
    }

    /* renamed from: class, reason: not valid java name */
    public void m5787class(Object[] objArr) {
        if (objArr == null) {
            this.f4765try = null;
            return;
        }
        Cdo cdo = new Cdo(objArr);
        this.f4765try = cdo;
        cdo.m5798case(this.f4759case);
    }

    /* renamed from: const, reason: not valid java name */
    public void m5788const(Filter filter) {
        this.f4764new.m5798case(filter);
        Cdo cdo = this.f4765try;
        if (cdo != null) {
            cdo.m5798case(filter);
        }
        this.f4759case = filter;
    }

    /* renamed from: do, reason: not valid java name */
    public String m5789do(String str, Locale locale) {
        if (this.f4765try == null) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        Object[] objArrM5801new = this.f4765try.m5801new(locale);
        for (Object obj : objArrM5801new) {
            stringBuffer.append(obj);
        }
        return stringBuffer.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public Filter m5790else() {
        return this.f4759case;
    }

    /* renamed from: for, reason: not valid java name */
    public Object[] m5791for() {
        return this.f4764new.m5800if();
    }

    /* renamed from: goto, reason: not valid java name */
    public String m5792goto() {
        return this.f4760do;
    }

    /* renamed from: if, reason: not valid java name */
    public String m5793if(String str, Object[] objArr, Locale locale, TimeZone timeZone) {
        MessageFormat messageFormat = new MessageFormat(Cclass.f28652do);
        messageFormat.setLocale(locale);
        messageFormat.applyPattern(str);
        if (!timeZone.equals(TimeZone.getDefault())) {
            Format[] formats = messageFormat.getFormats();
            for (int i = 0; i < formats.length; i++) {
                if (formats[i] instanceof DateFormat) {
                    DateFormat dateFormat = (DateFormat) formats[i];
                    dateFormat.setTimeZone(timeZone);
                    messageFormat.setFormat(i, dateFormat);
                }
            }
        }
        return messageFormat.format(objArr);
    }

    /* renamed from: new, reason: not valid java name */
    public ClassLoader m5794new() {
        return this.f4761else;
    }

    /* renamed from: this, reason: not valid java name */
    public String m5795this() {
        return this.f4763if;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Resource: \"");
        stringBuffer.append(this.f4763if);
        stringBuffer.append("\" Id: \"");
        stringBuffer.append(this.f4760do);
        stringBuffer.append("\"");
        stringBuffer.append(" Arguments: ");
        stringBuffer.append(this.f4764new.m5800if().length);
        stringBuffer.append(" normal");
        Cdo cdo = this.f4765try;
        if (cdo != null && cdo.m5800if().length > 0) {
            stringBuffer.append(", ");
            stringBuffer.append(this.f4765try.m5800if().length);
            stringBuffer.append(" extra");
        }
        stringBuffer.append(" Encoding: ");
        stringBuffer.append(this.f4762for);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append(this.f4761else);
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public String m5796try(String str, Locale locale, TimeZone timeZone) throws b01 {
        String str2 = this.f4760do;
        if (str != null) {
            str2 = str2 + "." + str;
        }
        String str3 = str2;
        try {
            ClassLoader classLoader = this.f4761else;
            String string = (classLoader == null ? ResourceBundle.getBundle(this.f4763if, locale) : ResourceBundle.getBundle(this.f4763if, locale, classLoader)).getString(str3);
            if (!this.f4762for.equals("ISO-8859-1")) {
                string = new String(string.getBytes("ISO-8859-1"), this.f4762for);
            }
            if (!this.f4764new.m5802try()) {
                string = m5793if(string, this.f4764new.m5801new(locale), locale, timeZone);
            }
            return m5789do(string, locale);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (MissingResourceException unused) {
            String str4 = "Can't find entry " + str3 + " in resource file " + this.f4763if + ".";
            String str5 = this.f4763if;
            ClassLoader classLoaderM5794new = this.f4761else;
            if (classLoaderM5794new == null) {
                classLoaderM5794new = m5794new();
            }
            throw new b01(str4, str5, str3, locale, classLoaderM5794new);
        }
    }
}

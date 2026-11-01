package freemarker.ext.beans;

import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.ext.util.ModelFactory;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;

/* renamed from: freemarker.ext.beans.implements, reason: invalid class name */
/* loaded from: classes.dex */
public class Cimplements extends Cnew implements TemplateMethodModelEx {

    /* renamed from: goto, reason: not valid java name */
    public static final ModelFactory f24587goto = new Cdo();

    /* renamed from: else, reason: not valid java name */
    private Hashtable f24588else;

    /* renamed from: freemarker.ext.beans.implements$do, reason: invalid class name */
    public static class Cdo implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cimplements((ResourceBundle) obj, (Ctry) objectWrapper);
        }
    }

    public Cimplements(ResourceBundle resourceBundle, Ctry ctry) {
        super(resourceBundle, ctry);
        this.f24588else = null;
    }

    /* renamed from: break, reason: not valid java name */
    public String m28635break(String str, Object[] objArr) throws MissingResourceException {
        String str2;
        if (this.f24588else == null) {
            this.f24588else = new Hashtable();
        }
        MessageFormat messageFormat = (MessageFormat) this.f24588else.get(str);
        if (messageFormat == null) {
            messageFormat = new MessageFormat(((ResourceBundle) this.f24599do).getString(str));
            messageFormat.setLocale(m28637catch().getLocale());
            this.f24588else.put(str, messageFormat);
        }
        synchronized (messageFormat) {
            str2 = messageFormat.format(objArr);
        }
        return str2;
    }

    @Override // freemarker.ext.beans.Cnew
    /* renamed from: case, reason: not valid java name */
    public Set mo28636case() {
        Set setMo28636case = super.mo28636case();
        Enumeration<String> keys = ((ResourceBundle) this.f24599do).getKeys();
        while (keys.hasMoreElements()) {
            setMo28636case.add(keys.nextElement());
        }
        return setMo28636case;
    }

    /* renamed from: catch, reason: not valid java name */
    public ResourceBundle m28637catch() {
        return (ResourceBundle) this.f24599do;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        if (list.size() < 1) {
            throw new k52("No message key was specified");
        }
        Iterator it = list.iterator();
        String string = m28667goto((TemplateModel) it.next()).toString();
        try {
            if (!it.hasNext()) {
                return m28669this(((ResourceBundle) this.f24599do).getObject(string));
            }
            int size = list.size() - 1;
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                objArr[i] = m28667goto((TemplateModel) it.next());
            }
            return new f(m28635break(string, objArr), this.f24601if);
        } catch (MissingResourceException unused) {
            throw new k52("No such key: " + string);
        } catch (Exception e) {
            throw new k52(e.getMessage());
        }
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return !((ResourceBundle) this.f24599do).getKeys().hasMoreElements() && super.isEmpty();
    }

    @Override // freemarker.ext.beans.Cnew
    /* renamed from: new, reason: not valid java name */
    public TemplateModel mo28638new(Map map, Class cls, String str) throws k52 {
        try {
            return m28669this(((ResourceBundle) this.f24599do).getObject(str));
        } catch (MissingResourceException e) {
            throw new vl2(e, "No ", new fl2(str), " key in the ResourceBundle. Note that conforming to the ResourceBundle Java API, this is an error and not just a missing sub-variable (a null).");
        }
    }

    @Override // freemarker.ext.beans.Cnew, freemarker.template.TemplateHashModelEx
    public int size() {
        return mo28636case().size();
    }
}

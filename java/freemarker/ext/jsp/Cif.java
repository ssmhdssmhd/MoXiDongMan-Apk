package freemarker.ext.jsp;

import java.util.ArrayList;
import java.util.EventListener;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/* renamed from: freemarker.ext.jsp.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements ServletContextAttributeListener, ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    /* renamed from: try, reason: not valid java name */
    private static final freemarker.log.Cif f24866try = freemarker.log.Cif.m29193break("freemarker.jsp");

    /* renamed from: case, reason: not valid java name */
    private static final String f24865case = Cif.class.getName();

    /* renamed from: do, reason: not valid java name */
    private final List f24867do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private final List f24869if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private final List f24868for = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private final List f24870new = new ArrayList();

    /* renamed from: class, reason: not valid java name */
    public static Cif m29024class(ServletContext servletContext) {
        return (Cif) servletContext.getAttribute(f24865case);
    }

    /* renamed from: do, reason: not valid java name */
    private void m29025do(EventListener eventListener) {
        boolean z;
        boolean z2 = true;
        if (eventListener instanceof ServletContextAttributeListener) {
            m29026if(this.f24867do, eventListener);
            z = true;
        } else {
            z = false;
        }
        if (eventListener instanceof ServletContextListener) {
            m29026if(this.f24869if, eventListener);
            z = true;
        }
        if (eventListener instanceof HttpSessionAttributeListener) {
            m29026if(this.f24868for, eventListener);
            z = true;
        }
        if (eventListener instanceof HttpSessionListener) {
            m29026if(this.f24870new, eventListener);
        } else {
            z2 = z;
        }
        if (z2) {
            return;
        }
        f24866try.mo29187package("Listener of class " + eventListener.getClass().getName() + "wasn't registered as it doesn't implement any of the recognized listener interfaces.");
    }

    /* renamed from: if, reason: not valid java name */
    private void m29026if(List list, EventListener eventListener) {
        synchronized (list) {
            list.add(eventListener);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m29027break(ServletContextEvent servletContextEvent) {
        synchronized (this.f24869if) {
            for (int size = this.f24869if.size() - 1; size >= 0; size--) {
                ((ServletContextListener) this.f24869if.get(size)).contextDestroyed(servletContextEvent);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m29028case(ServletContextAttributeEvent servletContextAttributeEvent) {
        synchronized (this.f24867do) {
            int size = this.f24867do.size();
            for (int i = 0; i < size; i++) {
                ((ServletContextAttributeListener) this.f24867do.get(i)).attributeRemoved(servletContextAttributeEvent);
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m29029catch(ServletContextEvent servletContextEvent) {
        servletContextEvent.getServletContext().setAttribute(f24865case, this);
        synchronized (this.f24869if) {
            int size = this.f24869if.size();
            for (int i = 0; i < size; i++) {
                ((ServletContextListener) this.f24869if.get(i)).contextInitialized(servletContextEvent);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m29030const(HttpSessionEvent httpSessionEvent) {
        synchronized (this.f24870new) {
            int size = this.f24870new.size();
            for (int i = 0; i < size; i++) {
                ((HttpSessionListener) this.f24870new.get(i)).sessionCreated(httpSessionEvent);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m29031else(HttpSessionBindingEvent httpSessionBindingEvent) {
        synchronized (this.f24868for) {
            int size = this.f24868for.size();
            for (int i = 0; i < size; i++) {
                ((HttpSessionAttributeListener) this.f24868for.get(i)).attributeRemoved(httpSessionBindingEvent);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m29032final(HttpSessionEvent httpSessionEvent) {
        synchronized (this.f24870new) {
            for (int size = this.f24870new.size() - 1; size >= 0; size--) {
                ((HttpSessionListener) this.f24870new.get(size)).sessionDestroyed(httpSessionEvent);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m29033for(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m29025do((EventListener) it.next());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m29034goto(ServletContextAttributeEvent servletContextAttributeEvent) {
        synchronized (this.f24867do) {
            int size = this.f24867do.size();
            for (int i = 0; i < size; i++) {
                ((ServletContextAttributeListener) this.f24867do.get(i)).attributeReplaced(servletContextAttributeEvent);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m29035new(ServletContextAttributeEvent servletContextAttributeEvent) {
        synchronized (this.f24867do) {
            int size = this.f24867do.size();
            for (int i = 0; i < size; i++) {
                ((ServletContextAttributeListener) this.f24867do.get(i)).attributeAdded(servletContextAttributeEvent);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m29036this(HttpSessionBindingEvent httpSessionBindingEvent) {
        synchronized (this.f24868for) {
            int size = this.f24868for.size();
            for (int i = 0; i < size; i++) {
                ((HttpSessionAttributeListener) this.f24868for.get(i)).attributeReplaced(httpSessionBindingEvent);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m29037try(HttpSessionBindingEvent httpSessionBindingEvent) {
        synchronized (this.f24868for) {
            int size = this.f24868for.size();
            for (int i = 0; i < size; i++) {
                ((HttpSessionAttributeListener) this.f24868for.get(i)).attributeAdded(httpSessionBindingEvent);
            }
        }
    }
}

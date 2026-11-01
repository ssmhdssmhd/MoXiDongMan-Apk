package com.wsw.cospa.model;

import android.database.SQLException;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.dao.TaskDao;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* renamed from: com.wsw.cospa.model.throw, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthrow {

    /* renamed from: if, reason: not valid java name */
    private static Cthrow f22411if;

    /* renamed from: do, reason: not valid java name */
    private TaskDao f22412do = Cnew.m26132case().m26138try().m3135const();

    /* renamed from: com.wsw.cospa.model.throw$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterable f22413do;

        public Cdo(Iterable iterable) {
            this.f22413do = iterable;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Task task : this.f22413do) {
                if (Cthrow.this.f22412do.queryBuilder().where(TaskDao.Properties.f22135if.eq(task.getKey()), TaskDao.Properties.f22133for.eq(task.getPath())).unique() == null) {
                    Cthrow.this.f22412do.insert(task);
                }
            }
        }
    }

    private Cthrow() {
    }

    /* renamed from: else, reason: not valid java name */
    public static Cthrow m26474else() {
        if (f22411if == null) {
            synchronized (Cthrow.class) {
                if (f22411if == null) {
                    f22411if = new Cthrow();
                }
            }
        }
        return f22411if;
    }

    /* renamed from: break, reason: not valid java name */
    public void m26475break(Iterable<Task> iterable) {
        this.f22412do.insertOrReplaceInTx(iterable);
    }

    /* renamed from: case, reason: not valid java name */
    public List<Task> m26476case(String str) {
        return this.f22412do.queryBuilder().where(TaskDao.Properties.f22135if.eq(str), new WhereCondition[0]).list();
    }

    /* renamed from: catch, reason: not valid java name */
    public List<Task> m26477catch() {
        return this.f22412do.queryBuilder().list();
    }

    /* renamed from: class, reason: not valid java name */
    public List<Task> m26478class(long j) {
        return this.f22412do.queryBuilder().where(TaskDao.Properties.f22135if.eq(Long.valueOf(j)), new WhereCondition[0]).list();
    }

    /* renamed from: const, reason: not valid java name */
    public List<Task> m26479const() {
        return this.f22412do.queryBuilder().list();
    }

    /* renamed from: final, reason: not valid java name */
    public List<Task> m26480final(String str) {
        return this.f22412do.queryBuilder().where(TaskDao.Properties.f22135if.eq(str), new WhereCondition[0]).orderAsc(TaskDao.Properties.f22127catch).list();
    }

    /* renamed from: for, reason: not valid java name */
    public void m26481for(Task task) {
        this.f22412do.delete(task);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m26482goto(Task task) {
        task.setId(Long.valueOf(this.f22412do.insert(task)));
    }

    /* renamed from: if, reason: not valid java name */
    public void m26483if(long j) {
        this.f22412do.deleteByKey(Long.valueOf(j));
    }

    /* renamed from: new, reason: not valid java name */
    public void m26484new(String str) throws SQLException {
        this.f22412do.queryBuilder().where(TaskDao.Properties.f22135if.eq(str), new WhereCondition[0]).buildDelete().executeDeleteWithoutDetachingEntities();
    }

    /* renamed from: super, reason: not valid java name */
    public List<Task> m26485super() {
        return this.f22412do.queryBuilder().where(TaskDao.Properties.f22126case.notEq(0), new WhereCondition[0]).list();
    }

    /* renamed from: this, reason: not valid java name */
    public void m26486this(Iterable<Task> iterable) {
        this.f22412do.getSession().runInTx(new Cdo(iterable));
    }

    /* renamed from: throw, reason: not valid java name */
    public void m26487throw(Task task) {
        this.f22412do.update(task);
    }

    /* renamed from: try, reason: not valid java name */
    public void m26488try(Iterable<Task> iterable) {
        this.f22412do.deleteInTx(iterable);
    }
}

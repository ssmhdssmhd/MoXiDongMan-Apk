package com.hwangjr.rxbus;

import androidx.annotation.NonNull;
import io.reactivex.Cnew;
import io.reactivex.subjects.Cgoto;
import io.reactivex.subjects.Ctry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import timber.log.Cdo;

@Deprecated
/* loaded from: classes2.dex */
public class RxBusOlder {
    private static final boolean DEBUG = true;
    private static RxBusOlder sInstance;
    private ConcurrentHashMap<Object, List<Cgoto>> mSubjectsMapper = new ConcurrentHashMap<>();

    private RxBusOlder() {
    }

    public static synchronized RxBusOlder instance() {
        if (sInstance == null) {
            sInstance = new RxBusOlder();
        }
        return sInstance;
    }

    public void post(@NonNull Object obj, @NonNull Object obj2) {
        List<Cgoto> list = this.mSubjectsMapper.get(obj);
        if (list != null && !list.isEmpty()) {
            Iterator<Cgoto> it = list.iterator();
            while (it.hasNext()) {
                it.next().onNext(obj2);
            }
        }
        Cdo.m39249if("[send] mSubjectsMapper: " + this.mSubjectsMapper, new Object[0]);
    }

    public <T> Cnew<T> register(@NonNull Object obj, @NonNull Class<T> cls) {
        List<Cgoto> arrayList = this.mSubjectsMapper.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mSubjectsMapper.put(obj, arrayList);
        }
        Ctry ctryM29840else = Ctry.m29840else();
        arrayList.add(ctryM29840else);
        Cdo.m39249if("[register] mSubjectsMapper: " + this.mSubjectsMapper, new Object[0]);
        return ctryM29840else;
    }

    public void unregister(@NonNull Object obj, @NonNull Cnew cnew) {
        List<Cgoto> list = this.mSubjectsMapper.get(obj);
        if (list != null) {
            list.remove(cnew);
            if (list.isEmpty()) {
                this.mSubjectsMapper.remove(obj);
            }
            Cdo.m39249if("[unregister] mSubjectsMapper: " + this.mSubjectsMapper, new Object[0]);
        }
    }
}

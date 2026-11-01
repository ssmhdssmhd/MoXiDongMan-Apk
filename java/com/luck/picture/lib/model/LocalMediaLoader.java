package com.luck.picture.lib.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.v4.ps1;
import android.support.v4.rd1;
import androidx.annotation.NonNull;
import com.luck.picture.lib.R;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.model.LocalMediaLoader;
import com.luck.picture.lib.rxbus2.Cif;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class LocalMediaLoader {

    /* renamed from: break, reason: not valid java name */
    private static final String f18754break = "!='image/gif'";

    /* renamed from: catch, reason: not valid java name */
    private static final int f18755catch = 500;

    /* renamed from: const, reason: not valid java name */
    private static final String f18757const = "media_type=? AND _size>0";

    /* renamed from: final, reason: not valid java name */
    private static final String f18759final = "media_type=? AND _size>0 AND mime_type!='image/gif'";

    /* renamed from: goto, reason: not valid java name */
    private static final String f18760goto = "_id DESC";

    /* renamed from: this, reason: not valid java name */
    private static final String f18762this = "duration";

    /* renamed from: case, reason: not valid java name */
    private boolean f18763case = ps1.m6218do();

    /* renamed from: do, reason: not valid java name */
    private int f18764do;

    /* renamed from: for, reason: not valid java name */
    private boolean f18765for;

    /* renamed from: if, reason: not valid java name */
    private Context f18766if;

    /* renamed from: new, reason: not valid java name */
    private long f18767new;

    /* renamed from: try, reason: not valid java name */
    private long f18768try;

    /* renamed from: else, reason: not valid java name */
    private static final Uri f18758else = MediaStore.Files.getContentUri("external");

    /* renamed from: class, reason: not valid java name */
    private static final String[] f18756class = {"_id", "_data", "mime_type", "width", "height", "duration"};

    /* renamed from: super, reason: not valid java name */
    private static final String[] f18761super = {String.valueOf(1), String.valueOf(3)};

    public interface LocalMediaLoadListener {
        void loadComplete(List<LocalMediaFolder> list);
    }

    /* renamed from: com.luck.picture.lib.model.LocalMediaLoader$do, reason: invalid class name */
    public class Cdo extends Cif.Cnew<List<LocalMediaFolder>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ LocalMediaLoadListener f18769do;

        public Cdo(LocalMediaLoadListener localMediaLoadListener) {
            this.f18769do = localMediaLoadListener;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(1:(1:(1:(7:7|17|42|18|(5:22|(4:23|(1:25)(1:26)|27|(1:44)(1:37))|29|(3:31|(1:33)(1:34)|35)|36)|40|41)(1:8))(1:9))(3:10|(1:12)(1:13)|14))(1:15)|16|17|42|18|(6:20|22|(5:23|(0)(0)|27|(0)(0)|37)|29|(0)|36)|40|41) */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x017b, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x017c, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ab A[Catch: Exception -> 0x017b, TryCatch #0 {Exception -> 0x017b, blocks: (B:18:0x007a, B:20:0x008b, B:22:0x0091, B:23:0x0094, B:25:0x00ab, B:27:0x00c0, B:29:0x0131, B:31:0x0137, B:33:0x0158, B:35:0x0171, B:34:0x0165, B:26:0x00b2), top: B:42:0x007a }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00b2 A[Catch: Exception -> 0x017b, TryCatch #0 {Exception -> 0x017b, blocks: (B:18:0x007a, B:20:0x008b, B:22:0x0091, B:23:0x0094, B:25:0x00ab, B:27:0x00c0, B:29:0x0131, B:31:0x0137, B:33:0x0158, B:35:0x0171, B:34:0x0165, B:26:0x00b2), top: B:42:0x007a }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0137 A[Catch: Exception -> 0x017b, TryCatch #0 {Exception -> 0x017b, blocks: (B:18:0x007a, B:20:0x008b, B:22:0x0091, B:23:0x0094, B:25:0x00ab, B:27:0x00c0, B:29:0x0131, B:31:0x0137, B:33:0x0158, B:35:0x0171, B:34:0x0165, B:26:0x00b2), top: B:42:0x007a }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0178 A[LOOP:0: B:23:0x0094->B:37:0x0178, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0131 A[EDGE_INSN: B:44:0x0131->B:29:0x0131 BREAK  A[LOOP:0: B:23:0x0094->B:37:0x0178], SYNTHETIC] */
        @Override // com.luck.picture.lib.rxbus2.Cif.Cnew
        @NonNull
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public List<LocalMediaFolder> mo22879do(Object... objArr) {
            String strM23150native;
            String[] strArrM23153return;
            String[] strArr;
            String str;
            Cursor cursorQuery;
            ArrayList arrayList;
            LocalMediaFolder localMediaFolder;
            ArrayList arrayList2;
            int i = LocalMediaLoader.this.f18764do;
            char c = 3;
            if (i == 0) {
                strM23150native = LocalMediaLoader.m23150native(LocalMediaLoader.this.m23157throw(0L, 0L), LocalMediaLoader.this.f18765for);
                strArrM23153return = LocalMediaLoader.f18761super;
            } else if (i == 1) {
                strM23150native = LocalMediaLoader.this.f18765for ? LocalMediaLoader.f18757const : LocalMediaLoader.f18759final;
                strArrM23153return = LocalMediaLoader.m23153return(1);
            } else if (i == 2) {
                strM23150native = LocalMediaLoader.m23152public(LocalMediaLoader.this.m23157throw(0L, 0L));
                strArrM23153return = LocalMediaLoader.m23153return(3);
            } else {
                if (i != 3) {
                    str = null;
                    strArr = null;
                    cursorQuery = LocalMediaLoader.this.f18766if.getContentResolver().query(LocalMediaLoader.f18758else, LocalMediaLoader.f18756class, str, strArr, LocalMediaLoader.f18760goto);
                    arrayList = new ArrayList();
                    localMediaFolder = new LocalMediaFolder();
                    arrayList2 = new ArrayList();
                    if (cursorQuery != null && cursorQuery.getCount() > 0) {
                        cursorQuery.moveToFirst();
                        while (true) {
                            String strM23149import = !LocalMediaLoader.this.f18763case ? LocalMediaLoader.this.m23149import(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[0]))) : cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[1]));
                            LocalMedia localMedia = new LocalMedia(strM23149import, cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[5])), LocalMediaLoader.this.f18764do, cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[2])), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[c])), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[4])));
                            LocalMediaFolder localMediaFolderM23160while = LocalMediaLoader.this.m23160while(strM23149import, arrayList);
                            localMediaFolderM23160while.m23118new().add(localMedia);
                            localMediaFolderM23160while.m23109catch(localMediaFolderM23160while.m23115for() + 1);
                            arrayList2.add(localMedia);
                            localMediaFolder.m23109catch(localMediaFolder.m23115for() + 1);
                            if (cursorQuery.moveToNext()) {
                                break;
                            }
                            c = 3;
                        }
                        if (arrayList2.size() > 0) {
                            LocalMediaLoader.this.m23158throws(arrayList);
                            arrayList.add(0, localMediaFolder);
                            localMediaFolder.m23107break(arrayList2.get(0).m23084case());
                            localMediaFolder.m23111const(LocalMediaLoader.this.f18764do == rd1.m6918super() ? LocalMediaLoader.this.f18766if.getString(R.string.picture_all_audio) : LocalMediaLoader.this.f18766if.getString(R.string.picture_camera_roll));
                            localMediaFolder.m23110class(arrayList2);
                        }
                        return arrayList;
                    }
                    return mo23165if();
                }
                strM23150native = LocalMediaLoader.m23152public(LocalMediaLoader.this.m23157throw(0L, 500L));
                strArrM23153return = LocalMediaLoader.m23153return(2);
            }
            strArr = strArrM23153return;
            str = strM23150native;
            cursorQuery = LocalMediaLoader.this.f18766if.getContentResolver().query(LocalMediaLoader.f18758else, LocalMediaLoader.f18756class, str, strArr, LocalMediaLoader.f18760goto);
            arrayList = new ArrayList();
            localMediaFolder = new LocalMediaFolder();
            arrayList2 = new ArrayList();
            if (cursorQuery != null) {
                cursorQuery.moveToFirst();
                while (true) {
                    if (!LocalMediaLoader.this.f18763case) {
                    }
                    LocalMedia localMedia2 = new LocalMedia(strM23149import, cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[5])), LocalMediaLoader.this.f18764do, cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[2])), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[c])), cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(LocalMediaLoader.f18756class[4])));
                    LocalMediaFolder localMediaFolderM23160while2 = LocalMediaLoader.this.m23160while(strM23149import, arrayList);
                    localMediaFolderM23160while2.m23118new().add(localMedia2);
                    localMediaFolderM23160while2.m23109catch(localMediaFolderM23160while2.m23115for() + 1);
                    arrayList2.add(localMedia2);
                    localMediaFolder.m23109catch(localMediaFolder.m23115for() + 1);
                    if (cursorQuery.moveToNext()) {
                    }
                    c = 3;
                }
                if (arrayList2.size() > 0) {
                }
                return arrayList;
            }
            return mo23165if();
        }

        @Override // com.luck.picture.lib.rxbus2.Cif.Cnew
        /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
        public List<LocalMediaFolder> mo23165if() {
            return new ArrayList();
        }

        @Override // com.luck.picture.lib.rxbus2.Cif.Cnew
        /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
        public void mo22881try(List<LocalMediaFolder> list) {
            super.mo22881try(list);
            LocalMediaLoadListener localMediaLoadListener = this.f18769do;
            if (localMediaLoadListener != null) {
                localMediaLoadListener.loadComplete(list);
            }
        }
    }

    public LocalMediaLoader(Context context, int i, boolean z, long j, long j2) {
        this.f18766if = context.getApplicationContext();
        this.f18764do = i;
        this.f18765for = z;
        this.f18767new = j;
        this.f18768try = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public String m23149import(long j) {
        return f18758else.buildUpon().appendPath(String.valueOf(j)).build().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public static String m23150native(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("(media_type=?");
        sb.append(z ? "" : " AND mime_type!='image/gif'");
        sb.append(" OR ");
        sb.append("media_type=? AND ");
        sb.append(str);
        sb.append(") AND ");
        sb.append("_size");
        sb.append(">0");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public static String m23152public(String str) {
        return "media_type=? AND _size>0 AND " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public static String[] m23153return(int i) {
        return new String[]{String.valueOf(i)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public static /* synthetic */ int m23154static(LocalMediaFolder localMediaFolder, LocalMediaFolder localMediaFolder2) {
        int iM23115for;
        int iM23115for2;
        if (localMediaFolder.m23118new() == null || localMediaFolder2.m23118new() == null || (iM23115for = localMediaFolder.m23115for()) == (iM23115for2 = localMediaFolder2.m23115for())) {
            return 0;
        }
        return iM23115for < iM23115for2 ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public String m23157throw(long j, long j2) {
        long jMin = this.f18767new;
        if (jMin == 0) {
            jMin = Long.MAX_VALUE;
        }
        if (j != 0) {
            jMin = Math.min(jMin, j);
        }
        Locale locale = Locale.CHINA;
        Object[] objArr = new Object[3];
        objArr[0] = Long.valueOf(Math.max(j2, this.f18768try));
        objArr[1] = Math.max(j2, this.f18768try) == 0 ? "" : "=";
        objArr[2] = Long.valueOf(jMin);
        return String.format(locale, "%d <%s duration and duration <= %d", objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public void m23158throws(List<LocalMediaFolder> list) {
        Collections.sort(list, new Comparator() { // from class: android.support.v4.nu0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LocalMediaLoader.m23154static((LocalMediaFolder) obj, (LocalMediaFolder) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public LocalMediaFolder m23160while(String str, List<LocalMediaFolder> list) {
        File parentFile = new File(str).getParentFile();
        for (LocalMediaFolder localMediaFolder : list) {
            if (localMediaFolder.m23120try().equals(parentFile.getName())) {
                return localMediaFolder;
            }
        }
        LocalMediaFolder localMediaFolder2 = new LocalMediaFolder();
        localMediaFolder2.m23111const(parentFile.getName());
        localMediaFolder2.m23114final(parentFile.getAbsolutePath());
        localMediaFolder2.m23107break(str);
        list.add(localMediaFolder2);
        return localMediaFolder2;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m23161switch(LocalMediaLoadListener localMediaLoadListener) {
        Cif.m23284else(new Cdo(localMediaLoadListener));
    }
}

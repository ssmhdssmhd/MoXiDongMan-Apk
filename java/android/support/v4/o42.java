package android.support.v4;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class o42 {

    /* renamed from: if, reason: not valid java name */
    private static o42 f4418if;

    /* renamed from: do, reason: not valid java name */
    private zw f4419do;

    private o42(Context context) {
        this.f4419do = new zw(context);
    }

    /* renamed from: new, reason: not valid java name */
    public static o42 m5467new(Context context) {
        if (f4418if == null) {
            f4418if = new o42(context.getApplicationContext());
        }
        return f4418if;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m5468case(String str) {
        SQLiteDatabase readableDatabase = this.f4419do.getReadableDatabase();
        Cursor cursorQuery = readableDatabase.query(p42.f4844do, new String[]{p42.f4845if}, null, null, null, null, null);
        boolean z = false;
        while (cursorQuery.moveToNext()) {
            if (str.equals(cursorQuery.getString(cursorQuery.getColumnIndex(p42.f4845if)))) {
                z = true;
            }
        }
        cursorQuery.close();
        readableDatabase.close();
        return z;
    }

    /* renamed from: do, reason: not valid java name */
    public void m5469do(CharSequence charSequence) {
        ContentValues contentValues = new ContentValues();
        SQLiteDatabase writableDatabase = this.f4419do.getWritableDatabase();
        contentValues.put(p42.f4845if, charSequence.toString());
        writableDatabase.insert(p42.f4844do, null, contentValues);
        writableDatabase.close();
    }

    /* renamed from: else, reason: not valid java name */
    public void m5470else(CharSequence... charSequenceArr) {
        m5472if();
        for (CharSequence charSequence : charSequenceArr) {
            m5469do(charSequence);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m5471for(CharSequence charSequence) {
        SQLiteDatabase writableDatabase = this.f4419do.getWritableDatabase();
        writableDatabase.delete(p42.f4844do, "tag=?", new String[]{charSequence.toString()});
        writableDatabase.close();
    }

    /* renamed from: if, reason: not valid java name */
    public void m5472if() {
        SQLiteDatabase writableDatabase = this.f4419do.getWritableDatabase();
        writableDatabase.delete(p42.f4844do, null, null);
        writableDatabase.close();
    }

    /* renamed from: try, reason: not valid java name */
    public String[] m5473try() {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase readableDatabase = this.f4419do.getReadableDatabase();
        Cursor cursorQuery = readableDatabase.query(p42.f4844do, new String[]{p42.f4845if}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex(p42.f4845if)));
        }
        cursorQuery.close();
        readableDatabase.close();
        return (String[]) arrayList.toArray(new String[0]);
    }
}

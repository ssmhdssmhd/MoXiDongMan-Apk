package cn.qqtheme.framework.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.support.v4.on0;
import android.support.v4.sa0;
import android.support.v4.ur;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Collections;
import java.util.LinkedList;

/* renamed from: cn.qqtheme.framework.adapter.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew extends BaseAdapter {

    /* renamed from: new, reason: not valid java name */
    private static final String f9150new = "SD";

    /* renamed from: do, reason: not valid java name */
    private LinkedList<String> f9151do = new LinkedList<>();

    /* renamed from: if, reason: not valid java name */
    private Drawable f9153if = null;

    /* renamed from: for, reason: not valid java name */
    private String f9152for = Environment.getExternalStorageDirectory().getAbsolutePath();

    /* renamed from: cn.qqtheme.framework.adapter.new$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public TextView f9154do;

        /* renamed from: if, reason: not valid java name */
        public ImageView f9155if;

        private Cif() {
        }
    }

    @Override // android.widget.Adapter
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getItem(int i) {
        String str = this.f9152for + on0.f4694final;
        if (i == 0) {
            return str;
        }
        for (int i2 = 1; i2 <= i; i2++) {
            str = str + this.f9151do.get(i2) + on0.f4694final;
        }
        return str;
    }

    /* renamed from: for, reason: not valid java name */
    public void m10912for(Drawable drawable) {
        this.f9153if = drawable;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9151do.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        Cif cif;
        Context context = viewGroup.getContext();
        if (view == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            if (viewGroup instanceof AbsListView) {
                linearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
            } else {
                linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            }
            TextView textView = new TextView(context);
            textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
            textView.setGravity(8388627);
            int iM8613interface = ur.m8613interface(context, 5.0f);
            textView.setPadding(iM8613interface, 0, iM8613interface, 0);
            linearLayout.addView(textView);
            ImageView imageView = new ImageView(context);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(ur.m8613interface(context, 20.0f), -1));
            linearLayout.addView(imageView);
            cif = new Cif();
            cif.f9154do = textView;
            cif.f9155if = imageView;
            linearLayout.setTag(cif);
            view2 = linearLayout;
        } else {
            view2 = view;
            cif = (Cif) view.getTag();
        }
        cif.f9154do.setText(this.f9151do.get(i));
        cif.f9155if.setImageDrawable(this.f9153if);
        return view2;
    }

    /* renamed from: if, reason: not valid java name */
    public void m10913if() {
        Bitmap bitmap;
        this.f9151do.clear();
        Drawable drawable = this.f9153if;
        if (!(drawable instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    /* renamed from: new, reason: not valid java name */
    public void m10914new(String str) {
        String strReplace = str.replace(this.f9152for, "");
        if (this.f9153if == null) {
            this.f9153if = ur.m8621static(sa0.m7342do());
        }
        this.f9151do.clear();
        if (!strReplace.equals(on0.f4694final) && !strReplace.equals("")) {
            Collections.addAll(this.f9151do, strReplace.substring(strReplace.indexOf(on0.f4694final) + 1).split(on0.f4694final));
        }
        this.f9151do.addFirst(f9150new);
        notifyDataSetChanged();
    }
}

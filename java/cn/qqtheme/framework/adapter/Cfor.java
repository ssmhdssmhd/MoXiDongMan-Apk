package cn.qqtheme.framework.adapter;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.on0;
import android.support.v4.qa0;
import android.support.v4.sa0;
import android.support.v4.ur;
import android.support.v4.uv0;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;

/* renamed from: cn.qqtheme.framework.adapter.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor extends BaseAdapter {

    /* renamed from: final, reason: not valid java name */
    public static final String f9127final = ".";

    /* renamed from: super, reason: not valid java name */
    public static final String f9128super = "..";

    /* renamed from: do, reason: not valid java name */
    private ArrayList<qa0> f9134do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    private String f9138if = null;

    /* renamed from: for, reason: not valid java name */
    private String f9136for = null;

    /* renamed from: new, reason: not valid java name */
    private String[] f9139new = null;

    /* renamed from: try, reason: not valid java name */
    private boolean f9141try = false;

    /* renamed from: case, reason: not valid java name */
    private boolean f9130case = false;

    /* renamed from: else, reason: not valid java name */
    private boolean f9135else = true;

    /* renamed from: goto, reason: not valid java name */
    private boolean f9137goto = true;

    /* renamed from: this, reason: not valid java name */
    private int f9140this = 40;

    /* renamed from: break, reason: not valid java name */
    private Drawable f9129break = null;

    /* renamed from: catch, reason: not valid java name */
    private Drawable f9131catch = null;

    /* renamed from: class, reason: not valid java name */
    private Drawable f9132class = null;

    /* renamed from: const, reason: not valid java name */
    private Drawable f9133const = null;

    /* renamed from: cn.qqtheme.framework.adapter.for$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public ImageView f9142do;

        /* renamed from: if, reason: not valid java name */
        public TextView f9143if;

        private Cif() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m10889break(Drawable drawable) {
        this.f9133const = drawable;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10890case() {
        return this.f9135else;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m10891catch(Drawable drawable) {
        this.f9132class = drawable;
    }

    /* renamed from: class, reason: not valid java name */
    public void m10892class(Drawable drawable) {
        this.f9129break = drawable;
    }

    /* renamed from: const, reason: not valid java name */
    public void m10893const(int i) {
        this.f9140this = i;
    }

    /* renamed from: do, reason: not valid java name */
    public String m10894do() {
        return this.f9136for;
    }

    /* renamed from: else, reason: not valid java name */
    public void m10895else(String str) {
        if (str == null) {
            uv0.m8687throws("current directory is null");
            return;
        }
        if (this.f9129break == null) {
            this.f9129break = ur.m8621static(sa0.m7345new());
        }
        if (this.f9131catch == null) {
            this.f9131catch = ur.m8621static(sa0.m7346try());
        }
        if (this.f9132class == null) {
            this.f9132class = ur.m8621static(sa0.m7343for());
        }
        if (this.f9133const == null) {
            this.f9133const = ur.m8621static(sa0.m7344if());
        }
        ArrayList arrayList = new ArrayList();
        if (this.f9138if == null) {
            this.f9138if = str;
        }
        uv0.m8680public("current directory path: " + str);
        this.f9136for = str;
        if (this.f9130case) {
            qa0 qa0Var = new qa0();
            qa0Var.setDirectory(true);
            qa0Var.setIcon(this.f9129break);
            qa0Var.setName(".");
            qa0Var.setSize(0L);
            qa0Var.setPath(this.f9138if);
            arrayList.add(qa0Var);
        }
        if (this.f9135else && !str.equals(on0.f4694final)) {
            qa0 qa0Var2 = new qa0();
            qa0Var2.setDirectory(true);
            qa0Var2.setIcon(this.f9131catch);
            qa0Var2.setName("..");
            qa0Var2.setSize(0L);
            qa0Var2.setPath(new File(str).getParent());
            arrayList.add(qa0Var2);
        }
        String[] strArr = this.f9139new;
        File[] fileArrM10980return = strArr == null ? this.f9141try ? cn.qqtheme.framework.util.Cdo.m10980return(this.f9136for) : cn.qqtheme.framework.util.Cdo.m10988throws(this.f9136for) : this.f9141try ? cn.qqtheme.framework.util.Cdo.m10981static(this.f9136for, strArr) : cn.qqtheme.framework.util.Cdo.m10961default(this.f9136for, strArr);
        if (fileArrM10980return != null) {
            for (File file : fileArrM10980return) {
                if (this.f9137goto || !file.getName().startsWith(".")) {
                    qa0 qa0Var3 = new qa0();
                    boolean zIsDirectory = file.isDirectory();
                    qa0Var3.setDirectory(zIsDirectory);
                    if (zIsDirectory) {
                        qa0Var3.setIcon(this.f9132class);
                        qa0Var3.setSize(0L);
                    } else {
                        qa0Var3.setIcon(this.f9133const);
                        qa0Var3.setSize(file.length());
                    }
                    qa0Var3.setName(file.getName());
                    qa0Var3.setPath(file.getAbsolutePath());
                    arrayList.add(qa0Var3);
                }
            }
        }
        this.f9134do.clear();
        this.f9134do.addAll(arrayList);
        notifyDataSetChanged();
    }

    /* renamed from: final, reason: not valid java name */
    public void m10896final(boolean z) {
        this.f9141try = z;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m10897for() {
        return this.f9141try;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9134do.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Cif cif;
        View view2;
        Context context = viewGroup.getContext();
        if (view == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            int iM8613interface = ur.m8613interface(context, this.f9140this);
            if (viewGroup instanceof AbsListView) {
                linearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, iM8613interface));
            } else {
                linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, iM8613interface));
            }
            int iM8613interface2 = ur.m8613interface(context, 5.0f);
            linearLayout.setPadding(iM8613interface2, iM8613interface2, iM8613interface2, iM8613interface2);
            ImageView imageView = new ImageView(context);
            int iM8613interface3 = ur.m8613interface(context, 30.0f);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(iM8613interface3, iM8613interface3));
            imageView.setImageResource(R.drawable.ic_menu_report_image);
            linearLayout.addView(imageView);
            TextView textView = new TextView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = ur.m8613interface(context, 10.0f);
            textView.setLayoutParams(layoutParams);
            textView.setGravity(8388627);
            textView.setSingleLine();
            linearLayout.addView(textView);
            cif = new Cif();
            cif.f9142do = imageView;
            cif.f9143if = textView;
            linearLayout.setTag(cif);
            view2 = linearLayout;
        } else {
            cif = (Cif) view.getTag();
            view2 = view;
        }
        qa0 qa0Var = this.f9134do.get(i);
        cif.f9142do.setImageDrawable(qa0Var.getIcon());
        cif.f9143if.setText(qa0Var.getName());
        return view2;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10898goto() {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        Bitmap bitmap4;
        this.f9134do.clear();
        Drawable drawable = this.f9129break;
        if ((drawable instanceof BitmapDrawable) && (bitmap4 = ((BitmapDrawable) drawable).getBitmap()) != null && !bitmap4.isRecycled()) {
            bitmap4.recycle();
        }
        Drawable drawable2 = this.f9131catch;
        if ((drawable2 instanceof BitmapDrawable) && (bitmap3 = ((BitmapDrawable) drawable2).getBitmap()) != null && !bitmap3.isRecycled()) {
            bitmap3.recycle();
        }
        Drawable drawable3 = this.f9132class;
        if ((drawable3 instanceof BitmapDrawable) && (bitmap2 = ((BitmapDrawable) drawable3).getBitmap()) != null && !bitmap2.isRecycled()) {
            bitmap2.recycle();
        }
        Drawable drawable4 = this.f9133const;
        if (!(drawable4 instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable4).getBitmap()) == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    @Override // android.widget.Adapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public qa0 getItem(int i) {
        return this.f9134do.get(i);
    }

    /* renamed from: import, reason: not valid java name */
    public void m10900import(Drawable drawable) {
        this.f9131catch = drawable;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m10901new() {
        return this.f9137goto;
    }

    /* renamed from: super, reason: not valid java name */
    public void m10902super(boolean z) {
        this.f9137goto = z;
    }

    /* renamed from: this, reason: not valid java name */
    public void m10903this(String[] strArr) {
        this.f9139new = strArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m10904throw(boolean z) {
        this.f9130case = z;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m10905try() {
        return this.f9130case;
    }

    /* renamed from: while, reason: not valid java name */
    public void m10906while(boolean z) {
        this.f9135else = z;
    }
}

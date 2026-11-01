package cn.qqtheme.framework.adapter;

import android.annotation.SuppressLint;
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
import com.wsw.cospa.R;
import java.io.File;
import java.util.ArrayList;

/* renamed from: cn.qqtheme.framework.adapter.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo extends BaseAdapter {

    /* renamed from: final, reason: not valid java name */
    public static final String f9110final = ".";

    /* renamed from: super, reason: not valid java name */
    public static final String f9111super = "..";

    /* renamed from: do, reason: not valid java name */
    private ArrayList<qa0> f9117do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    private String f9121if = null;

    /* renamed from: for, reason: not valid java name */
    private String f9119for = null;

    /* renamed from: new, reason: not valid java name */
    private String[] f9122new = null;

    /* renamed from: try, reason: not valid java name */
    private boolean f9124try = false;

    /* renamed from: case, reason: not valid java name */
    private boolean f9113case = false;

    /* renamed from: else, reason: not valid java name */
    private boolean f9118else = true;

    /* renamed from: goto, reason: not valid java name */
    private boolean f9120goto = true;

    /* renamed from: this, reason: not valid java name */
    private int f9123this = 40;

    /* renamed from: break, reason: not valid java name */
    private Drawable f9112break = null;

    /* renamed from: catch, reason: not valid java name */
    private Drawable f9114catch = null;

    /* renamed from: class, reason: not valid java name */
    private Drawable f9115class = null;

    /* renamed from: const, reason: not valid java name */
    private Drawable f9116const = null;

    /* renamed from: cn.qqtheme.framework.adapter.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public ImageView f9125do;

        /* renamed from: if, reason: not valid java name */
        public TextView f9126if;

        private Cif() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m10871break(Drawable drawable) {
        this.f9116const = drawable;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m10872case() {
        return this.f9118else;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m10873catch(Drawable drawable) {
        this.f9115class = drawable;
    }

    /* renamed from: class, reason: not valid java name */
    public void m10874class(Drawable drawable) {
        this.f9112break = drawable;
    }

    /* renamed from: const, reason: not valid java name */
    public void m10875const(int i) {
        this.f9123this = i;
    }

    /* renamed from: do, reason: not valid java name */
    public String m10876do() {
        return this.f9119for;
    }

    /* renamed from: else, reason: not valid java name */
    public void m10877else(String str) {
        if (str == null) {
            uv0.m8687throws("current directory is null");
            return;
        }
        if (this.f9112break == null) {
            this.f9112break = ur.m8621static(sa0.m7345new());
        }
        if (this.f9114catch == null) {
            this.f9114catch = ur.m8621static(sa0.m7346try());
        }
        if (this.f9115class == null) {
            this.f9115class = ur.m8621static(sa0.m7343for());
        }
        if (this.f9116const == null) {
            this.f9116const = ur.m8621static(sa0.m7344if());
        }
        ArrayList arrayList = new ArrayList();
        if (this.f9121if == null) {
            this.f9121if = str;
        }
        uv0.m8680public("current directory path: " + str);
        this.f9119for = str;
        if (this.f9113case) {
            qa0 qa0Var = new qa0();
            qa0Var.setDirectory(true);
            qa0Var.setIcon(this.f9112break);
            qa0Var.setName(".");
            qa0Var.setSize(0L);
            qa0Var.setPath(this.f9121if);
            arrayList.add(qa0Var);
        }
        if (this.f9118else && !str.equals(on0.f4694final)) {
            qa0 qa0Var2 = new qa0();
            qa0Var2.setDirectory(true);
            qa0Var2.setIcon(this.f9114catch);
            qa0Var2.setName("..");
            qa0Var2.setSize(0L);
            qa0Var2.setPath(new File(str).getParent());
            arrayList.add(qa0Var2);
        }
        String[] strArr = this.f9122new;
        File[] fileArrM10980return = strArr == null ? this.f9124try ? cn.qqtheme.framework.util.Cdo.m10980return(this.f9119for) : cn.qqtheme.framework.util.Cdo.m10988throws(this.f9119for) : this.f9124try ? cn.qqtheme.framework.util.Cdo.m10981static(this.f9119for, strArr) : cn.qqtheme.framework.util.Cdo.m10961default(this.f9119for, strArr);
        if (fileArrM10980return != null) {
            for (File file : fileArrM10980return) {
                if (this.f9120goto || !file.getName().startsWith(".")) {
                    qa0 qa0Var3 = new qa0();
                    boolean zIsDirectory = file.isDirectory();
                    qa0Var3.setDirectory(zIsDirectory);
                    if (zIsDirectory) {
                        qa0Var3.setIcon(this.f9115class);
                        qa0Var3.setSize(0L);
                    } else {
                        qa0Var3.setIcon(this.f9116const);
                        qa0Var3.setSize(file.length());
                    }
                    qa0Var3.setName(file.getName());
                    qa0Var3.setPath(file.getAbsolutePath());
                    arrayList.add(qa0Var3);
                }
            }
        }
        this.f9117do.clear();
        this.f9117do.addAll(arrayList);
        notifyDataSetChanged();
    }

    /* renamed from: final, reason: not valid java name */
    public void m10878final(boolean z) {
        this.f9124try = z;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m10879for() {
        return this.f9124try;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9117do.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant", "ResourceType"})
    public View getView(int i, View view, ViewGroup viewGroup) {
        Cif cif;
        View view2;
        Context context = viewGroup.getContext();
        if (view == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            int iM8613interface = ur.m8613interface(context, this.f9123this);
            if (viewGroup instanceof AbsListView) {
                linearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, iM8613interface));
            } else {
                linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, iM8613interface));
            }
            int iM8613interface2 = ur.m8613interface(context, 5.0f);
            linearLayout.setPadding(iM8613interface2, iM8613interface2, iM8613interface2, iM8613interface2);
            linearLayout.setBackgroundColor(context.getResources().getColor(R.color.arg_res_0x7f0600fd));
            ImageView imageView = new ImageView(context);
            int iM8613interface3 = ur.m8613interface(context, 30.0f);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(iM8613interface3, iM8613interface3));
            imageView.setImageResource(android.R.drawable.ic_menu_report_image);
            linearLayout.addView(imageView);
            TextView textView = new TextView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = ur.m8613interface(context, 10.0f);
            textView.setLayoutParams(layoutParams);
            textView.setGravity(8388627);
            textView.setSingleLine();
            textView.setTextColor(context.getResources().getColor(R.color.arg_res_0x7f060114));
            linearLayout.addView(textView);
            cif = new Cif();
            cif.f9125do = imageView;
            cif.f9126if = textView;
            linearLayout.setTag(cif);
            view2 = linearLayout;
        } else {
            cif = (Cif) view.getTag();
            view2 = view;
        }
        qa0 qa0Var = this.f9117do.get(i);
        cif.f9125do.setImageDrawable(qa0Var.getIcon());
        cif.f9126if.setText(qa0Var.getName());
        cif.f9126if.setTextColor(context.getResources().getColor(R.color.arg_res_0x7f060114));
        return view2;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10880goto() {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        Bitmap bitmap4;
        this.f9117do.clear();
        Drawable drawable = this.f9112break;
        if ((drawable instanceof BitmapDrawable) && (bitmap4 = ((BitmapDrawable) drawable).getBitmap()) != null && !bitmap4.isRecycled()) {
            bitmap4.recycle();
        }
        Drawable drawable2 = this.f9114catch;
        if ((drawable2 instanceof BitmapDrawable) && (bitmap3 = ((BitmapDrawable) drawable2).getBitmap()) != null && !bitmap3.isRecycled()) {
            bitmap3.recycle();
        }
        Drawable drawable3 = this.f9115class;
        if ((drawable3 instanceof BitmapDrawable) && (bitmap2 = ((BitmapDrawable) drawable3).getBitmap()) != null && !bitmap2.isRecycled()) {
            bitmap2.recycle();
        }
        Drawable drawable4 = this.f9116const;
        if (!(drawable4 instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable4).getBitmap()) == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    @Override // android.widget.Adapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public qa0 getItem(int i) {
        return this.f9117do.get(i);
    }

    /* renamed from: import, reason: not valid java name */
    public void m10882import(Drawable drawable) {
        this.f9114catch = drawable;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m10883new() {
        return this.f9120goto;
    }

    /* renamed from: super, reason: not valid java name */
    public void m10884super(boolean z) {
        this.f9120goto = z;
    }

    /* renamed from: this, reason: not valid java name */
    public void m10885this(String[] strArr) {
        this.f9122new = strArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m10886throw(boolean z) {
        this.f9113case = z;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m10887try() {
        return this.f9113case;
    }

    /* renamed from: while, reason: not valid java name */
    public void m10888while(boolean z) {
        this.f9118else = z;
    }
}

package cn.qqtheme.framework.adapter;

import android.annotation.SuppressLint;
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
import com.wsw.cospa.R;
import java.util.Collections;
import java.util.LinkedList;

/* renamed from: cn.qqtheme.framework.adapter.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif extends BaseAdapter {

    /* renamed from: new, reason: not valid java name */
    private static final String f9144new = "SD";

    /* renamed from: do, reason: not valid java name */
    private LinkedList<String> f9145do = new LinkedList<>();

    /* renamed from: if, reason: not valid java name */
    private Drawable f9147if = null;

    /* renamed from: for, reason: not valid java name */
    private String f9146for = Environment.getExternalStorageDirectory().getAbsolutePath();

    /* renamed from: cn.qqtheme.framework.adapter.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0018if {

        /* renamed from: do, reason: not valid java name */
        public TextView f9148do;

        /* renamed from: if, reason: not valid java name */
        public ImageView f9149if;

        private C0018if() {
        }
    }

    @Override // android.widget.Adapter
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public String getItem(int i) {
        String str = this.f9146for + on0.f4694final;
        if (i == 0) {
            return str;
        }
        for (int i2 = 1; i2 <= i; i2++) {
            str = str + this.f9145do.get(i2) + on0.f4694final;
        }
        return str;
    }

    /* renamed from: for, reason: not valid java name */
    public void m10908for(Drawable drawable) {
        this.f9147if = drawable;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9145do.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        C0018if c0018if;
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
            linearLayout.setBackgroundColor(context.getResources().getColor(R.color.arg_res_0x7f0600fd));
            TextView textView = new TextView(context);
            textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
            textView.setGravity(8388627);
            int iM8613interface = ur.m8613interface(context, 5.0f);
            textView.setPadding(iM8613interface, 0, iM8613interface, 0);
            textView.setTextColor(context.getResources().getColor(R.color.arg_res_0x7f060114));
            linearLayout.addView(textView);
            ImageView imageView = new ImageView(context);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(ur.m8613interface(context, 20.0f), -1));
            linearLayout.addView(imageView);
            c0018if = new C0018if();
            c0018if.f9148do = textView;
            c0018if.f9149if = imageView;
            linearLayout.setTag(c0018if);
            view2 = linearLayout;
        } else {
            view2 = view;
            c0018if = (C0018if) view.getTag();
        }
        c0018if.f9148do.setText(this.f9145do.get(i));
        c0018if.f9148do.setTextColor(context.getResources().getColor(R.color.arg_res_0x7f060114));
        c0018if.f9149if.setImageDrawable(this.f9147if);
        return view2;
    }

    /* renamed from: if, reason: not valid java name */
    public void m10909if() {
        Bitmap bitmap;
        this.f9145do.clear();
        Drawable drawable = this.f9147if;
        if (!(drawable instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    /* renamed from: new, reason: not valid java name */
    public void m10910new(String str) {
        String strReplace = str.replace(this.f9146for, "");
        if (this.f9147if == null) {
            this.f9147if = ur.m8621static(sa0.m7342do());
        }
        this.f9145do.clear();
        if (!strReplace.equals(on0.f4694final) && !strReplace.equals("")) {
            Collections.addAll(this.f9145do, strReplace.substring(strReplace.indexOf(on0.f4694final) + 1).split(on0.f4694final));
        }
        this.f9145do.addFirst(f9144new);
        notifyDataSetChanged();
    }
}

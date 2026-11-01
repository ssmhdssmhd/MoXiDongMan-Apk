package cn.qqtheme.framework.picker;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.on0;
import android.support.v4.qa0;
import android.support.v4.ur;
import android.support.v4.uv0;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.qqtheme.framework.widget.HorizontalListView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* loaded from: classes.dex */
public class ComicFilePicker extends cn.qqtheme.framework.popup.Cif<LinearLayout> implements AdapterView.OnItemClickListener {
    public static final int c = 0;
    public static final int d = 1;
    private int a;
    private CharSequence b;

    /* renamed from: implements, reason: not valid java name */
    private cn.qqtheme.framework.adapter.Cif f9156implements;

    /* renamed from: instanceof, reason: not valid java name */
    private TextView f9157instanceof;

    /* renamed from: protected, reason: not valid java name */
    private String f9158protected;

    /* renamed from: synchronized, reason: not valid java name */
    private OnFilePickListener f9159synchronized;

    /* renamed from: transient, reason: not valid java name */
    private cn.qqtheme.framework.adapter.Cdo f9160transient;

    public interface OnFilePickListener {
        void onFilePicked(String str);
    }

    /* renamed from: cn.qqtheme.framework.picker.ComicFilePicker$do, reason: invalid class name */
    public class Cdo implements AdapterView.OnItemClickListener {
        public Cdo() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ComicFilePicker comicFilePicker = ComicFilePicker.this;
            comicFilePicker.C(comicFilePicker.f9156implements.getItem(i));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: cn.qqtheme.framework.picker.ComicFilePicker$if, reason: invalid class name */
    public @interface Cif {
    }

    public ComicFilePicker(Activity activity, int i) {
        super(activity);
        this.f9160transient = new cn.qqtheme.framework.adapter.Cdo();
        this.f9156implements = new cn.qqtheme.framework.adapter.Cif();
        this.b = Locale.getDefault().getDisplayLanguage().contains("中文") ? "<空>" : "<Empty>";
        m10940static(true);
        try {
            this.f9158protected = cn.qqtheme.framework.util.Cif.m11006new();
        } catch (RuntimeException unused) {
            this.f9158protected = cn.qqtheme.framework.util.Cif.m11007this(activity);
        }
        this.a = i;
        this.f9160transient.m10878final(i == 0);
        this.f9160transient.m10884super(false);
        this.f9160transient.m10886throw(false);
        this.f9160transient.m10888while(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"WrongConstant"})
    public void C(String str) {
        if (str.equals(on0.f4694final)) {
            this.f9156implements.m10910new(on0.f4694final);
        } else {
            this.f9156implements.m10910new(str);
        }
        this.f9160transient.m10877else(str);
        int count = this.f9160transient.getCount();
        if (this.f9160transient.m10887try()) {
            count--;
        }
        if (this.f9160transient.m10872case()) {
            count--;
        }
        if (count < 1) {
            uv0.m8678native(this, "no files, or dir is empty");
            this.f9157instanceof.setVisibility(0);
            this.f9157instanceof.setText(this.b);
        } else {
            uv0.m8678native(this, "files or dirs count: " + count);
            this.f9157instanceof.setVisibility(8);
        }
    }

    public cn.qqtheme.framework.adapter.Cif A() {
        return this.f9156implements;
    }

    @Override // cn.qqtheme.framework.popup.Cif
    @NonNull
    @SuppressLint({"WrongConstant"})
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public LinearLayout mo10917strictfp() {
        LinearLayout linearLayout = new LinearLayout(this.f9171do);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        ListView listView = new ListView(this.f9171do);
        listView.setDivider(new ColorDrawable(-2236963));
        listView.setDividerHeight(1);
        listView.setCacheColorHint(0);
        listView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        listView.setAdapter((ListAdapter) this.f9160transient);
        listView.setOnItemClickListener(this);
        linearLayout.addView(listView);
        this.f9157instanceof = new TextView(this.f9171do);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.f9157instanceof.setLayoutParams(layoutParams);
        this.f9157instanceof.setGravity(17);
        this.f9157instanceof.setVisibility(8);
        linearLayout.addView(this.f9157instanceof);
        return linearLayout;
    }

    public void D(String[] strArr) {
        this.f9160transient.m10885this(strArr);
    }

    public void E(Drawable drawable) {
        this.f9156implements.m10908for(drawable);
    }

    public void F(CharSequence charSequence) {
        this.b = charSequence;
    }

    public void G(Drawable drawable) {
        this.f9160transient.m10871break(drawable);
    }

    public void H(Drawable drawable) {
        this.f9160transient.m10873catch(drawable);
    }

    public void I(Drawable drawable) {
        this.f9160transient.m10874class(drawable);
    }

    public void J(int i) {
        this.f9160transient.m10875const(i);
    }

    public void K(String str) {
        this.f9158protected = str;
    }

    public void L(boolean z) {
        this.f9160transient.m10884super(z);
    }

    public void M(boolean z) {
        this.f9160transient.m10886throw(z);
    }

    public void N(boolean z) {
        this.f9160transient.m10888while(z);
    }

    public void O(Drawable drawable) {
        this.f9160transient.m10882import(drawable);
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    /* renamed from: do, reason: not valid java name */
    public void mo10915do() {
        super.mo10915do();
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    @SuppressLint({"ResourceType"})
    /* renamed from: import, reason: not valid java name */
    public void mo10916import() {
        boolean z = this.a == 1;
        c(!z);
        if (z) {
            i(this.f9171do.getString(R.string.cancel));
        } else {
            i(this.f9171do.getString(R.string.ok));
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        qa0 item = this.f9160transient.getItem(i);
        if (item.isDirectory()) {
            C(item.getPath());
            return;
        }
        String path = item.getPath();
        if (this.a == 0) {
            uv0.m8687throws("not directory: " + path);
            return;
        }
        mo10915do();
        uv0.m8679new("picked path: " + path);
        OnFilePickListener onFilePickListener = this.f9159synchronized;
        if (onFilePickListener != null) {
            onFilePickListener.onFilePicked(path);
        }
    }

    public void setOnFilePickListener(OnFilePickListener onFilePickListener) {
        this.f9159synchronized = onFilePickListener;
    }

    @Override // cn.qqtheme.framework.popup.Cif
    /* renamed from: transient, reason: not valid java name */
    public void mo10918transient() {
        if (this.a == 1) {
            uv0.m8680public("pick file canceled");
            return;
        }
        String strM10876do = this.f9160transient.m10876do();
        uv0.m8679new("picked directory: " + strM10876do);
        OnFilePickListener onFilePickListener = this.f9159synchronized;
        if (onFilePickListener != null) {
            onFilePickListener.onFilePicked(strM10876do);
        }
    }

    @Override // cn.qqtheme.framework.popup.Cif
    @Nullable
    @SuppressLint({"WrongConstant"})
    /* renamed from: volatile, reason: not valid java name */
    public View mo10919volatile() {
        LinearLayout linearLayout = new LinearLayout(this.f9171do);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setBackgroundColor(this.f9171do.getResources().getColor(com.wsw.cospa.R.color.arg_res_0x7f0600fd));
        linearLayout.setOrientation(1);
        View view = new View(this.f9171do);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
        view.setBackgroundColor(-2236963);
        linearLayout.addView(view);
        HorizontalListView horizontalListView = new HorizontalListView(this.f9171do);
        horizontalListView.setLayoutParams(new LinearLayout.LayoutParams(-1, ur.m8613interface(this.f9171do, 30.0f)));
        horizontalListView.setAdapter((ListAdapter) this.f9156implements);
        horizontalListView.setBackgroundColor(this.f9171do.getResources().getColor(com.wsw.cospa.R.color.arg_res_0x7f0600fd));
        horizontalListView.setOnItemClickListener(new Cdo());
        linearLayout.addView(horizontalListView);
        return linearLayout;
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    /* renamed from: while, reason: not valid java name */
    public void mo10920while(View view) {
        C(this.f9158protected);
    }

    public cn.qqtheme.framework.adapter.Cdo y() {
        return this.f9160transient;
    }

    public String z() {
        return this.f9160transient.m10876do();
    }
}

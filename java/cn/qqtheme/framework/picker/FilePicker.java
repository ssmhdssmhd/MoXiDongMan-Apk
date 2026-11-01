package cn.qqtheme.framework.picker;

import android.R;
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
import cn.qqtheme.framework.adapter.Cfor;
import cn.qqtheme.framework.adapter.Cnew;
import cn.qqtheme.framework.widget.HorizontalListView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* loaded from: classes.dex */
public class FilePicker extends cn.qqtheme.framework.popup.Cif<LinearLayout> implements AdapterView.OnItemClickListener {
    public static final int c = 0;
    public static final int d = 1;
    private int a;
    private CharSequence b;

    /* renamed from: implements, reason: not valid java name */
    private Cnew f9162implements;

    /* renamed from: instanceof, reason: not valid java name */
    private TextView f9163instanceof;

    /* renamed from: protected, reason: not valid java name */
    private String f9164protected;

    /* renamed from: synchronized, reason: not valid java name */
    private OnFilePickListener f9165synchronized;

    /* renamed from: transient, reason: not valid java name */
    private Cfor f9166transient;

    public interface OnFilePickListener {
        void onFilePicked(String str);
    }

    /* renamed from: cn.qqtheme.framework.picker.FilePicker$do, reason: invalid class name */
    public class Cdo implements AdapterView.OnItemClickListener {
        public Cdo() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            FilePicker filePicker = FilePicker.this;
            filePicker.C(filePicker.f9162implements.getItem(i));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: cn.qqtheme.framework.picker.FilePicker$if, reason: invalid class name */
    public @interface Cif {
    }

    public FilePicker(Activity activity, int i) {
        super(activity);
        this.f9166transient = new Cfor();
        this.f9162implements = new Cnew();
        this.b = Locale.getDefault().getDisplayLanguage().contains("中文") ? "<空>" : "<Empty>";
        m10940static(true);
        try {
            this.f9164protected = cn.qqtheme.framework.util.Cif.m11006new();
        } catch (RuntimeException unused) {
            this.f9164protected = cn.qqtheme.framework.util.Cif.m11007this(activity);
        }
        this.a = i;
        this.f9166transient.m10896final(i == 0);
        this.f9166transient.m10902super(false);
        this.f9166transient.m10904throw(false);
        this.f9166transient.m10906while(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(String str) {
        if (str.equals(on0.f4694final)) {
            this.f9162implements.m10914new(on0.f4694final);
        } else {
            this.f9162implements.m10914new(str);
        }
        this.f9166transient.m10895else(str);
        int count = this.f9166transient.getCount();
        if (this.f9166transient.m10905try()) {
            count--;
        }
        if (this.f9166transient.m10890case()) {
            count--;
        }
        if (count < 1) {
            uv0.m8678native(this, "no files, or dir is empty");
            this.f9163instanceof.setVisibility(0);
            this.f9163instanceof.setText(this.b);
        } else {
            uv0.m8678native(this, "files or dirs count: " + count);
            this.f9163instanceof.setVisibility(8);
        }
    }

    public Cnew A() {
        return this.f9162implements;
    }

    @Override // cn.qqtheme.framework.popup.Cif
    @NonNull
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
        listView.setAdapter((ListAdapter) this.f9166transient);
        listView.setOnItemClickListener(this);
        linearLayout.addView(listView);
        this.f9163instanceof = new TextView(this.f9171do);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.f9163instanceof.setLayoutParams(layoutParams);
        this.f9163instanceof.setGravity(17);
        this.f9163instanceof.setVisibility(8);
        linearLayout.addView(this.f9163instanceof);
        return linearLayout;
    }

    public void D(String[] strArr) {
        this.f9166transient.m10903this(strArr);
    }

    public void E(Drawable drawable) {
        this.f9162implements.m10912for(drawable);
    }

    public void F(CharSequence charSequence) {
        this.b = charSequence;
    }

    public void G(Drawable drawable) {
        this.f9166transient.m10889break(drawable);
    }

    public void H(Drawable drawable) {
        this.f9166transient.m10891catch(drawable);
    }

    public void I(Drawable drawable) {
        this.f9166transient.m10892class(drawable);
    }

    public void J(int i) {
        this.f9166transient.m10893const(i);
    }

    public void K(String str) {
        this.f9164protected = str;
    }

    public void L(boolean z) {
        this.f9166transient.m10902super(z);
    }

    public void M(boolean z) {
        this.f9166transient.m10904throw(z);
    }

    public void N(boolean z) {
        this.f9166transient.m10906while(z);
    }

    public void O(Drawable drawable) {
        this.f9166transient.m10900import(drawable);
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    /* renamed from: do */
    public void mo10915do() {
        super.mo10915do();
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    /* renamed from: import */
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
        qa0 item = this.f9166transient.getItem(i);
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
        OnFilePickListener onFilePickListener = this.f9165synchronized;
        if (onFilePickListener != null) {
            onFilePickListener.onFilePicked(path);
        }
    }

    public void setOnFilePickListener(OnFilePickListener onFilePickListener) {
        this.f9165synchronized = onFilePickListener;
    }

    @Override // cn.qqtheme.framework.popup.Cif
    /* renamed from: transient */
    public void mo10918transient() {
        if (this.a == 1) {
            uv0.m8680public("pick file canceled");
            return;
        }
        String strM10894do = this.f9166transient.m10894do();
        uv0.m8679new("picked directory: " + strM10894do);
        OnFilePickListener onFilePickListener = this.f9165synchronized;
        if (onFilePickListener != null) {
            onFilePickListener.onFilePicked(strM10894do);
        }
    }

    @Override // cn.qqtheme.framework.popup.Cif
    @Nullable
    /* renamed from: volatile */
    public View mo10919volatile() {
        LinearLayout linearLayout = new LinearLayout(this.f9171do);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setOrientation(1);
        View view = new View(this.f9171do);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
        view.setBackgroundColor(-2236963);
        linearLayout.addView(view);
        HorizontalListView horizontalListView = new HorizontalListView(this.f9171do);
        horizontalListView.setLayoutParams(new LinearLayout.LayoutParams(-1, ur.m8613interface(this.f9171do, 30.0f)));
        horizontalListView.setAdapter((ListAdapter) this.f9162implements);
        horizontalListView.setOnItemClickListener(new Cdo());
        linearLayout.addView(horizontalListView);
        return linearLayout;
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    /* renamed from: while */
    public void mo10920while(View view) {
        C(this.f9164protected);
    }

    public Cfor y() {
        return this.f9166transient;
    }

    public String z() {
        return this.f9166transient.m10894do();
    }
}

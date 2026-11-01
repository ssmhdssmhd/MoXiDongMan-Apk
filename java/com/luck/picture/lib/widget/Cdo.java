package com.luck.picture.lib.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.support.v4.is1;
import android.support.v4.k22;
import android.support.v4.x4;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.luck.picture.lib.R;
import com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter;
import com.luck.picture.lib.decoration.RecycleViewDivider;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.luck.picture.lib.widget.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends PopupWindow implements View.OnClickListener {

    /* renamed from: break, reason: not valid java name */
    private Drawable f18892break;

    /* renamed from: case, reason: not valid java name */
    private Animation f18893case;

    /* renamed from: catch, reason: not valid java name */
    private Drawable f18894catch;

    /* renamed from: class, reason: not valid java name */
    private int f18895class;

    /* renamed from: do, reason: not valid java name */
    private Context f18896do;

    /* renamed from: else, reason: not valid java name */
    private boolean f18897else = false;

    /* renamed from: for, reason: not valid java name */
    private RecyclerView f18898for;

    /* renamed from: goto, reason: not valid java name */
    private LinearLayout f18899goto;

    /* renamed from: if, reason: not valid java name */
    private View f18900if;

    /* renamed from: new, reason: not valid java name */
    private PictureAlbumDirectoryAdapter f18901new;

    /* renamed from: this, reason: not valid java name */
    private TextView f18902this;

    /* renamed from: try, reason: not valid java name */
    private Animation f18903try;

    /* renamed from: com.luck.picture.lib.widget.do$do, reason: invalid class name and collision with other inner class name */
    public class AnimationAnimationListenerC0182do implements Animation.AnimationListener {
        public AnimationAnimationListenerC0182do() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Cdo.this.f18897else = false;
            if (Build.VERSION.SDK_INT <= 16) {
                Cdo.this.m23328case();
            } else {
                Cdo.super.dismiss();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.luck.picture.lib.widget.do$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cdo.super.dismiss();
        }
    }

    public Cdo(Context context, int i) {
        this.f18896do = context;
        this.f18895class = i;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.picture_window_folder, (ViewGroup) null);
        this.f18900if = viewInflate;
        setContentView(viewInflate);
        setWidth(is1.m3569for(context));
        setHeight(is1.m3570if(context));
        setAnimationStyle(R.style.WindowStyle);
        setFocusable(true);
        setOutsideTouchable(true);
        update();
        setBackgroundDrawable(new ColorDrawable(Color.argb(123, 0, 0, 0)));
        this.f18892break = x4.m9389for(context, R.attr.picture_arrow_up_icon);
        this.f18894catch = x4.m9389for(context, R.attr.picture_arrow_down_icon);
        this.f18903try = AnimationUtils.loadAnimation(context, R.anim.photo_album_show);
        this.f18893case = AnimationUtils.loadAnimation(context, R.anim.photo_album_dismiss);
        m23333else();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public void m23328case() {
        new Handler().post(new Cif());
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (this.f18897else) {
            return;
        }
        k22.m4217if(this.f18902this, this.f18894catch, 2);
        this.f18897else = true;
        this.f18898for.startAnimation(this.f18893case);
        dismiss();
        this.f18893case.setAnimationListener(new AnimationAnimationListenerC0182do());
    }

    /* renamed from: else, reason: not valid java name */
    public void m23333else() {
        this.f18899goto = (LinearLayout) this.f18900if.findViewById(R.id.id_ll_root);
        this.f18901new = new PictureAlbumDirectoryAdapter(this.f18896do);
        RecyclerView recyclerView = (RecyclerView) this.f18900if.findViewById(R.id.folder_list);
        this.f18898for = recyclerView;
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        double dM3570if = is1.m3570if(this.f18896do);
        Double.isNaN(dM3570if);
        layoutParams.height = (int) (dM3570if * 0.6d);
        RecyclerView recyclerView2 = this.f18898for;
        Context context = this.f18896do;
        recyclerView2.addItemDecoration(new RecycleViewDivider(context, 0, is1.m3568do(context, 0.0f), ContextCompat.getColor(this.f18896do, R.color.transparent)));
        this.f18898for.setLayoutManager(new LinearLayoutManager(this.f18896do));
        this.f18898for.setAdapter(this.f18901new);
        this.f18899goto.setOnClickListener(this);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23334goto(List<LocalMedia> list) {
        try {
            List<LocalMediaFolder> listM22948try = this.f18901new.m22948try();
            Iterator<LocalMediaFolder> it = listM22948try.iterator();
            while (it.hasNext()) {
                it.next().m23119this(0);
            }
            if (list.size() > 0) {
                for (LocalMediaFolder localMediaFolder : listM22948try) {
                    Iterator<LocalMedia> it2 = localMediaFolder.m23118new().iterator();
                    int i = 0;
                    while (it2.hasNext()) {
                        String strM23084case = it2.next().m23084case();
                        Iterator<LocalMedia> it3 = list.iterator();
                        while (it3.hasNext()) {
                            if (strM23084case.equals(it3.next().m23084case())) {
                                i++;
                                localMediaFolder.m23119this(i);
                            }
                        }
                    }
                }
            }
            this.f18901new.m22947new(listM22948try);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.id_ll_root) {
            dismiss();
        }
    }

    public void setOnItemClickListener(PictureAlbumDirectoryAdapter.OnItemClickListener onItemClickListener) {
        this.f18901new.setOnItemClickListener(onItemClickListener);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                Rect rect = new Rect();
                view.getGlobalVisibleRect(rect);
                setHeight(view.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            }
            super.showAsDropDown(view);
            this.f18897else = false;
            this.f18898for.startAnimation(this.f18903try);
            k22.m4217if(this.f18902this, this.f18892break, 2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m23335this(TextView textView) {
        this.f18902this = textView;
    }

    /* renamed from: try, reason: not valid java name */
    public void m23336try(List<LocalMediaFolder> list) {
        this.f18901new.m22946goto(this.f18895class);
        this.f18901new.m22947new(list);
    }
}

package com.wsw.cospa.adapter;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.bb0;
import android.support.v4.tl0;
import android.support.v4.v72;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.LocalPreviewActivity;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.utils.Ctry;
import com.wsw.cospa.widget.scroller.FastScroller;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class FileSelectorAdapter extends RecyclerView.Adapter<Cdo> implements FastScroller.SectionIndexer {

    /* renamed from: break, reason: not valid java name */
    private boolean f21675break;

    /* renamed from: case, reason: not valid java name */
    private final Context f21676case;

    /* renamed from: catch, reason: not valid java name */
    private int f21677catch;

    /* renamed from: class, reason: not valid java name */
    private Drawable f21678class;

    /* renamed from: do, reason: not valid java name */
    private final List<RipeFile> f21680do;

    /* renamed from: else, reason: not valid java name */
    private boolean f21681else;

    /* renamed from: final, reason: not valid java name */
    private OnItemClickListener f21682final;

    /* renamed from: for, reason: not valid java name */
    private ArrayList<String> f21683for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f21684goto;

    /* renamed from: new, reason: not valid java name */
    private WeakReference<Activity> f21686new;

    /* renamed from: super, reason: not valid java name */
    private OnItemCheckedListener f21687super;

    /* renamed from: this, reason: not valid java name */
    private boolean f21688this;

    /* renamed from: try, reason: not valid java name */
    private LayoutInflater f21689try;

    /* renamed from: if, reason: not valid java name */
    private String[] f21685if = {"png", "jpg", "jpeg", "webp", "gif"};

    /* renamed from: const, reason: not valid java name */
    private RipeFile f21679const = null;

    public interface OnItemCheckedListener {
        void onItemChecked(RipeFile ripeFile, boolean z, int i);
    }

    public interface OnItemClickListener {
        void onItemClick(View view, RipeFile ripeFile, int i);
    }

    /* renamed from: com.wsw.cospa.adapter.FileSelectorAdapter$do, reason: invalid class name */
    public static class Cdo extends RecyclerView.ViewHolder {

        /* renamed from: case, reason: not valid java name */
        private TextView f21690case;

        /* renamed from: do, reason: not valid java name */
        private ImageView f21691do;

        /* renamed from: else, reason: not valid java name */
        private CheckBox f21692else;

        /* renamed from: for, reason: not valid java name */
        private ImageView f21693for;

        /* renamed from: if, reason: not valid java name */
        private ImageView f21694if;

        /* renamed from: new, reason: not valid java name */
        private TextView f21695new;

        /* renamed from: try, reason: not valid java name */
        private TextView f21696try;

        public Cdo(@NonNull View view) {
            super(view);
            this.f21691do = (ImageView) view.findViewById(R.id.arg_res_0x7f0901b9);
            this.f21694if = (ImageView) view.findViewById(R.id.arg_res_0x7f0901b7);
            this.f21693for = (ImageView) view.findViewById(R.id.arg_res_0x7f0901b8);
            this.f21692else = (CheckBox) view.findViewById(R.id.arg_res_0x7f0901bd);
            this.f21695new = (TextView) view.findViewById(R.id.arg_res_0x7f0901bf);
            this.f21696try = (TextView) view.findViewById(R.id.arg_res_0x7f0901c0);
            this.f21690case = (TextView) view.findViewById(R.id.arg_res_0x7f0901be);
        }
    }

    public FileSelectorAdapter(Activity activity, boolean z, boolean z2, boolean z3, boolean z4) {
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.f21686new = weakReference;
        this.f21681else = z;
        this.f21684goto = z2;
        this.f21688this = z3;
        this.f21675break = z4;
        Activity activity2 = weakReference.get();
        this.f21676case = activity2;
        this.f21689try = LayoutInflater.from(activity2);
        this.f21680do = new ArrayList();
        this.f21683for = new ArrayList<>(Arrays.asList(this.f21685if));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public /* synthetic */ void m25664break(RipeFile ripeFile, Cdo cdo, int i, CompoundButton compoundButton, boolean z) {
        if (m25669new(ripeFile, cdo.getLayoutPosition())) {
            return;
        }
        if (ripeFile.isDirectory() || cdo.f21692else.isShown()) {
            if (this.f21684goto) {
                if (ripeFile.isDirectory()) {
                    ripeFile.setSelected(z);
                    this.f21679const = ripeFile;
                    return;
                }
                return;
            }
            if (ripeFile.isDirectory()) {
                ripeFile.setSelected(!ripeFile.isSelected());
                OnItemCheckedListener onItemCheckedListener = this.f21687super;
                if (onItemCheckedListener != null) {
                    onItemCheckedListener.onItemChecked(ripeFile, z, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public /* synthetic */ void m25665catch(RipeFile ripeFile, int i, View view) {
        OnItemClickListener onItemClickListener;
        if (ripeFile.isDirectory()) {
            OnItemClickListener onItemClickListener2 = this.f21682final;
            if (onItemClickListener2 != null) {
                onItemClickListener2.onItemClick(view, ripeFile, i);
                return;
            }
            return;
        }
        String parent = ripeFile.getFile().getParent();
        if (m25678this(ripeFile.getName())) {
            RipeFile ripeFile2 = new RipeFile();
            ripeFile2.setFile(new File(parent));
            ripeFile2.setRootPath(ripeFile.getRootPath());
            LocalPreviewActivity.C0(this.f21686new.get(), ripeFile2, Integer.valueOf(m25680try(ripeFile).intValue() + 1));
            return;
        }
        if (!bb0.m500new(ripeFile.getPath()) || (onItemClickListener = this.f21682final) == null) {
            return;
        }
        onItemClickListener.onItemClick(view, ripeFile, i);
    }

    /* renamed from: goto, reason: not valid java name */
    private synchronized boolean m25667goto(File file) {
        if (this.f21688this && !file.isDirectory()) {
            return com.wsw.cospa.dao.Cdo.m26107interface(file.getAbsolutePath());
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private synchronized boolean m25669new(RipeFile ripeFile, int i) {
        if (ripeFile.exists()) {
            return false;
        }
        v72.m8769if("文件不存在");
        this.f21680do.remove(ripeFile);
        notifyItemRemoved(i);
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    private synchronized void m25670super() {
        this.f21679const = null;
        Iterator<RipeFile> it = this.f21680do.iterator();
        while (it.hasNext()) {
            it.next().setSelected(false);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public RipeFile m25671case() {
        return this.f21679const;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull Cdo cdo, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final Cdo cdo, final int i, @NonNull List<Object> list) throws Throwable {
        if (!list.isEmpty()) {
            cdo.f21692else.setChecked(false);
            return;
        }
        final RipeFile ripeFile = this.f21680do.get(cdo.getLayoutPosition());
        cdo.f21695new.setText(ripeFile.getName());
        if (ripeFile.isDirectory()) {
            cdo.f21691do.setImageResource(R.drawable.arg_res_0x7f0800dd);
            Ctry.m27151this(cdo.f21691do, cdo.f21692else.getResources().getColor(R.color.arg_res_0x7f0600f4));
            cdo.f21691do.setVisibility(0);
            cdo.f21694if.setVisibility(4);
            cdo.f21693for.setVisibility(4);
            cdo.f21696try.setVisibility(8);
            if (this.f21681else) {
                cdo.f21692else.setVisibility(4);
            } else {
                cdo.f21692else.setVisibility(0);
            }
            cdo.f21690case.setText(String.format(Locale.getDefault(), "%d项 | %s", Integer.valueOf(ripeFile.getChildCount()), ripeFile.getDate()));
        } else {
            boolean zM500new = bb0.m500new(ripeFile.getPath());
            StringBuilder sb = new StringBuilder();
            sb.append("onBindViewHolder: compressFile ");
            sb.append(zM500new);
            if (zM500new) {
                cdo.f21691do.setImageResource(R.drawable.arg_res_0x7f0800dd);
                Ctry.m27151this(cdo.f21691do, cdo.f21692else.getResources().getColor(R.color.arg_res_0x7f0600f4));
                cdo.f21691do.setVisibility(0);
                cdo.f21694if.setVisibility(4);
                cdo.f21693for.setVisibility(4);
                cdo.f21696try.setVisibility(8);
                cdo.f21692else.setVisibility(8);
                cdo.f21696try.setText(ripeFile.getSuffix());
                cdo.f21690case.setText(String.format(Locale.getDefault(), "%s | %s", ripeFile.getSize(), ripeFile.getDate()));
            } else {
                cdo.f21696try.setVisibility(0);
                cdo.f21692else.setVisibility(8);
                Ctry.m27151this(cdo.f21691do, cdo.f21692else.getResources().getColor(R.color.arg_res_0x7f060362));
                if (this.f21675break) {
                    cdo.f21691do.setVisibility(4);
                    cdo.f21694if.setVisibility(4);
                    cdo.f21693for.setVisibility(0);
                    Glide.m11041package(this.f21686new.get()).load(ripeFile.getPath()).E0(0.1f).m0(cdo.f21693for);
                } else if (this.f21688this && m25667goto(ripeFile.getFile())) {
                    cdo.f21691do.setVisibility(4);
                    cdo.f21694if.setVisibility(0);
                    cdo.f21693for.setVisibility(4);
                    cdo.f21691do.setImageResource(R.drawable.arg_res_0x7f0800be);
                    cdo.f21692else.setVisibility(8);
                } else {
                    cdo.f21691do.setVisibility(0);
                    cdo.f21694if.setVisibility(4);
                    cdo.f21693for.setVisibility(4);
                    cdo.f21691do.setImageResource(R.drawable.arg_res_0x7f0800dc);
                    Ctry.m27151this(cdo.f21691do, cdo.f21692else.getResources().getColor(R.color.arg_res_0x7f060116));
                }
                if (TextUtils.isEmpty(ripeFile.getSuffix())) {
                    cdo.f21696try.setVisibility(8);
                } else {
                    cdo.f21696try.setVisibility(0);
                    cdo.f21696try.setText(ripeFile.getSuffix());
                }
                cdo.f21696try.setText(ripeFile.getSuffix());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onBindViewHolder: Suffix ");
                sb2.append(ripeFile.getSuffix());
                cdo.f21690case.setText(String.format(Locale.getDefault(), "%s | %s", ripeFile.getSize(), ripeFile.getDate()));
            }
        }
        cdo.f21692else.setChecked(ripeFile.isSelected());
        cdo.f21692else.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.wsw.cospa.adapter.catch
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f21878do.m25664break(ripeFile, cdo, i, compoundButton, z);
            }
        });
        cdo.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.xa0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7849do.m25665catch(ripeFile, i, view);
            }
        });
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized ArrayList<RipeFile> m25674else() {
        ArrayList<RipeFile> arrayList;
        this.f21677catch = 0;
        arrayList = new ArrayList<>();
        for (RipeFile ripeFile : this.f21680do) {
            if (ripeFile.isDirectory()) {
                this.f21677catch++;
            }
            if (ripeFile.isSelected()) {
                arrayList.add(ripeFile);
            }
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cdo onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new Cdo(LayoutInflater.from(this.f21686new.get()).inflate(R.layout.arg_res_0x7f0c0094, viewGroup, false));
    }

    /* renamed from: for, reason: not valid java name */
    public synchronized List<tl0> m25676for() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (int i = 0; i < this.f21680do.size(); i++) {
            RipeFile ripeFile = this.f21680do.get(i);
            tl0 tl0Var = new tl0();
            Iterator<String> it = this.f21683for.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (ripeFile.getSuffix() != null && next.equalsIgnoreCase(ripeFile.getSuffix())) {
                    tl0Var.setThumbnailUrl(ripeFile.getPath());
                    tl0Var.setOriginUrl(ripeFile.getPath());
                    arrayList.add(tl0Var);
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<RipeFile> list = this.f21680do;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // com.wsw.cospa.widget.scroller.FastScroller.SectionIndexer
    public CharSequence getSectionText(int i) {
        String name = this.f21680do.get(i).getName();
        return Cclass.z(name) ? "" : name.substring(0, 1);
    }

    /* renamed from: import, reason: not valid java name */
    public synchronized void m25677import(Comparator<RipeFile> comparator) {
        Collections.sort(this.f21680do, comparator);
        notifyDataSetChanged();
    }

    public void setOnItemCheckedListener(OnItemCheckedListener onItemCheckedListener) {
        this.f21687super = onItemCheckedListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21682final = onItemClickListener;
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized boolean m25678this(String str) {
        for (String str2 : this.f21685if) {
            if (str.toUpperCase().endsWith("." + str2.toUpperCase())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public synchronized void m25679throw() {
        if (m25674else().size() < this.f21677catch) {
            Iterator<RipeFile> it = this.f21680do.iterator();
            while (it.hasNext()) {
                it.next().setSelected(true);
            }
        } else {
            Iterator<RipeFile> it2 = this.f21680do.iterator();
            while (it2.hasNext()) {
                it2.next().setSelected(false);
            }
        }
        notifyDataSetChanged();
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized Integer m25680try(RipeFile ripeFile) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f21680do.size(); i++) {
            RipeFile ripeFile2 = this.f21680do.get(i);
            tl0 tl0Var = new tl0();
            Iterator<String> it = this.f21683for.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (ripeFile2.getSuffix() != null && next.equalsIgnoreCase(ripeFile2.getSuffix())) {
                    tl0Var.setThumbnailUrl(ripeFile2.getPath());
                    tl0Var.setOriginUrl(ripeFile2.getPath());
                    arrayList.add(tl0Var);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((tl0) arrayList.get(i2)).getOriginUrl().equalsIgnoreCase(ripeFile.getPath())) {
                return Integer.valueOf(i2);
            }
        }
        return 0;
    }

    /* renamed from: while, reason: not valid java name */
    public synchronized void m25681while(List<RipeFile> list) {
        this.f21680do.clear();
        if (list != null && !list.isEmpty()) {
            this.f21680do.addAll(list);
        }
        m25670super();
        notifyDataSetChanged();
    }
}

package com.wsw.cospa.adapter;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.bb0;
import android.support.v4.l22;
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
import com.wsw.cospa.bean.Node;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Ctry;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipFile;

/* loaded from: classes2.dex */
public class ZipFileManagerAadapter extends RecyclerView.Adapter<Cdo> {

    /* renamed from: break, reason: not valid java name */
    private boolean f21849break;

    /* renamed from: case, reason: not valid java name */
    private LayoutInflater f21850case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21851catch;

    /* renamed from: class, reason: not valid java name */
    private int f21852class;

    /* renamed from: const, reason: not valid java name */
    private Drawable f21853const;

    /* renamed from: do, reason: not valid java name */
    private final List<Node> f21854do;

    /* renamed from: else, reason: not valid java name */
    private final Context f21855else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f21858goto;

    /* renamed from: if, reason: not valid java name */
    private ZipFile f21859if;

    /* renamed from: new, reason: not valid java name */
    private ArrayList<String> f21860new;

    /* renamed from: super, reason: not valid java name */
    private OnItemClickListener f21861super;

    /* renamed from: this, reason: not valid java name */
    private boolean f21862this;

    /* renamed from: throw, reason: not valid java name */
    private OnItemCheckedListener f21863throw;

    /* renamed from: try, reason: not valid java name */
    private WeakReference<Activity> f21864try;

    /* renamed from: for, reason: not valid java name */
    private String[] f21857for = {"png", "jpg", "jpeg", "webp", "gif"};

    /* renamed from: final, reason: not valid java name */
    private Node f21856final = null;

    public interface OnItemCheckedListener {
        void onItemChecked(Node node, boolean z, int i);
    }

    public interface OnItemClickListener {
        void onItemClick(View view, Node node, int i);
    }

    /* renamed from: com.wsw.cospa.adapter.ZipFileManagerAadapter$do, reason: invalid class name */
    public static class Cdo extends RecyclerView.ViewHolder {

        /* renamed from: case, reason: not valid java name */
        private TextView f21865case;

        /* renamed from: do, reason: not valid java name */
        private ImageView f21866do;

        /* renamed from: else, reason: not valid java name */
        private CheckBox f21867else;

        /* renamed from: for, reason: not valid java name */
        private ImageView f21868for;

        /* renamed from: if, reason: not valid java name */
        private ImageView f21869if;

        /* renamed from: new, reason: not valid java name */
        private TextView f21870new;

        /* renamed from: try, reason: not valid java name */
        private TextView f21871try;

        public Cdo(@NonNull View view) {
            super(view);
            this.f21866do = (ImageView) view.findViewById(R.id.arg_res_0x7f0901b9);
            this.f21869if = (ImageView) view.findViewById(R.id.arg_res_0x7f0901b7);
            this.f21868for = (ImageView) view.findViewById(R.id.arg_res_0x7f0901b8);
            this.f21867else = (CheckBox) view.findViewById(R.id.arg_res_0x7f0901bd);
            this.f21870new = (TextView) view.findViewById(R.id.arg_res_0x7f0901bf);
            this.f21871try = (TextView) view.findViewById(R.id.arg_res_0x7f0901c0);
            this.f21865case = (TextView) view.findViewById(R.id.arg_res_0x7f0901be);
        }
    }

    public ZipFileManagerAadapter(Activity activity, boolean z, boolean z2, boolean z3, boolean z4) {
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.f21864try = weakReference;
        this.f21858goto = z;
        this.f21862this = z2;
        this.f21849break = z3;
        this.f21851catch = z4;
        Activity activity2 = weakReference.get();
        this.f21855else = activity2;
        this.f21850case = LayoutInflater.from(activity2);
        this.f21854do = new ArrayList();
        this.f21860new = new ArrayList<>(Arrays.asList(this.f21857for));
    }

    /* renamed from: break, reason: not valid java name */
    private synchronized void m25851break() {
        this.f21856final = null;
        Iterator<Node> it = this.f21854do.iterator();
        while (it.hasNext()) {
            it.next().selected = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ void m25852case(Node node, int i, View view) {
        if (node.isDir) {
            OnItemClickListener onItemClickListener = this.f21861super;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(view, node, i);
                return;
            }
            return;
        }
        OnItemClickListener onItemClickListener2 = this.f21861super;
        if (onItemClickListener2 != null) {
            onItemClickListener2.onItemClick(view, node, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public /* synthetic */ void m25855try(Node node, Cdo cdo, int i, CompoundButton compoundButton, boolean z) {
        if (node.isDir || cdo.f21867else.isShown()) {
            if (this.f21862this) {
                if (node.isDir) {
                    node.selected = z;
                    this.f21856final = node;
                    return;
                }
                return;
            }
            if (node.isDir) {
                node.selected = !node.selected;
                OnItemCheckedListener onItemCheckedListener = this.f21863throw;
                if (onItemCheckedListener != null) {
                    onItemCheckedListener.onItemChecked(node, z, i);
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public synchronized void m25856catch(List<Node> list, ZipFile zipFile) {
        this.f21854do.clear();
        if (list != null && !list.isEmpty()) {
            this.f21854do.addAll(list);
        }
        this.f21859if = zipFile;
        m25851break();
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull Cdo cdo, int i) {
    }

    /* renamed from: for, reason: not valid java name */
    public Node m25858for() {
        return this.f21856final;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21854do.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final Cdo cdo, final int i, @NonNull List<Object> list) {
        try {
            if (!list.isEmpty()) {
                cdo.f21867else.setChecked(false);
                return;
            }
            final Node node = this.f21854do.get(cdo.getLayoutPosition());
            cdo.f21870new.setText(node.name);
            if (node.isDir) {
                cdo.f21866do.setImageResource(R.drawable.arg_res_0x7f0800dd);
                Ctry.m27151this(cdo.f21866do, cdo.f21867else.getResources().getColor(R.color.arg_res_0x7f0600f4));
                cdo.f21866do.setVisibility(0);
                cdo.f21869if.setVisibility(4);
                cdo.f21868for.setVisibility(4);
                cdo.f21871try.setVisibility(8);
                if (this.f21858goto) {
                    cdo.f21867else.setVisibility(4);
                } else {
                    cdo.f21867else.setVisibility(0);
                }
                cdo.f21865case.setText(String.format(Locale.getDefault(), "%d项 | %s", Integer.valueOf(node.children.size()), l22.m4563for(node.time, "yyyy-MM-dd")));
            } else {
                cdo.f21871try.setVisibility(0);
                cdo.f21867else.setVisibility(8);
                Ctry.m27151this(cdo.f21866do, cdo.f21867else.getResources().getColor(R.color.arg_res_0x7f060362));
                if (this.f21851catch) {
                    cdo.f21866do.setVisibility(4);
                    cdo.f21869if.setVisibility(4);
                    cdo.f21868for.setVisibility(0);
                    Glide.m11041package(this.f21864try.get()).load(new BitmapDrawable(this.f21855else.getResources(), this.f21859if.getInputStream(node.zipEntry)).getBitmap()).E0(0.1f).m0(cdo.f21868for);
                } else if (this.f21849break) {
                    cdo.f21866do.setVisibility(4);
                    cdo.f21869if.setVisibility(0);
                    cdo.f21868for.setVisibility(4);
                    cdo.f21866do.setImageResource(R.drawable.arg_res_0x7f0800be);
                    cdo.f21867else.setVisibility(8);
                } else {
                    cdo.f21866do.setVisibility(0);
                    cdo.f21869if.setVisibility(4);
                    cdo.f21868for.setVisibility(4);
                    cdo.f21866do.setImageResource(R.drawable.arg_res_0x7f0800dc);
                    Ctry.m27151this(cdo.f21866do, cdo.f21867else.getResources().getColor(R.color.arg_res_0x7f060116));
                }
                cdo.f21871try.setText(bb0.m499if(node.name).toUpperCase());
                cdo.f21865case.setText(String.format(Locale.getDefault(), "%s | %s", Cdefault.m26761finally(node.size), l22.m4563for(node.time, "yyyy-MM-dd")));
            }
            cdo.f21867else.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.wsw.cospa.adapter.final
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.f21890do.m25855try(node, cdo, i, compoundButton, z);
                }
            });
            cdo.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.tj2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6592do.m25852case(node, i, view);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized boolean m25860new(String str) {
        for (String str2 : this.f21857for) {
            if (str.toUpperCase().endsWith("." + str2.toUpperCase())) {
                return true;
            }
        }
        return false;
    }

    public void setOnItemCheckedListener(OnItemCheckedListener onItemCheckedListener) {
        this.f21863throw = onItemCheckedListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21861super = onItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cdo onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new Cdo(LayoutInflater.from(this.f21864try.get()).inflate(R.layout.arg_res_0x7f0c0094, viewGroup, false));
    }
}

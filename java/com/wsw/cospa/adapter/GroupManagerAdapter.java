package com.wsw.cospa.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ComicGroupManagerActivity;
import com.wsw.cospa.adapter.DownloadTaskAdapter;
import com.wsw.cospa.bean.ComicShelfBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class GroupManagerAdapter extends RecyclerView.Adapter<GroupViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private boolean f21740case;

    /* renamed from: do, reason: not valid java name */
    private Context f21741do;

    /* renamed from: for, reason: not valid java name */
    private List<ComicShelfBean> f21742for = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private LayoutInflater f21743if;

    /* renamed from: new, reason: not valid java name */
    private DownloadTaskAdapter.OnCheckedChangeListener f21744new;

    /* renamed from: try, reason: not valid java name */
    public ComicGroupManagerActivity.DragListener f21745try;

    public static class GroupViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0900f1)
        public CheckBox checkbox;

        @BindView(R.id.arg_res_0x7f090218)
        public ImageView imgIcon;

        @BindView(R.id.arg_res_0x7f090219)
        public ImageView imgMove;

        @BindView(R.id.arg_res_0x7f0904cc)
        public TextView txtTitle;

        public GroupViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class GroupViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private GroupViewHolder f21746do;

        @UiThread
        public GroupViewHolder_ViewBinding(GroupViewHolder groupViewHolder, View view) {
            this.f21746do = groupViewHolder;
            groupViewHolder.imgIcon = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090218, "field 'imgIcon'", ImageView.class);
            groupViewHolder.txtTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904cc, "field 'txtTitle'", TextView.class);
            groupViewHolder.imgMove = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090219, "field 'imgMove'", ImageView.class);
            groupViewHolder.checkbox = (CheckBox) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", CheckBox.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            GroupViewHolder groupViewHolder = this.f21746do;
            if (groupViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21746do = null;
            groupViewHolder.imgIcon = null;
            groupViewHolder.txtTitle = null;
            groupViewHolder.imgMove = null;
            groupViewHolder.checkbox = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.GroupManagerAdapter$do, reason: invalid class name */
    public class Cdo implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ GroupViewHolder f21747do;

        public Cdo(GroupViewHolder groupViewHolder) {
            this.f21747do = groupViewHolder;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (GroupManagerAdapter.this.f21744new != null) {
                GroupManagerAdapter.this.f21744new.onCheckedChanged(this.f21747do.getAdapterPosition(), z);
            }
        }
    }

    public GroupManagerAdapter(Context context) {
        this.f21741do = context;
        this.f21743if = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ boolean m25720case(GroupViewHolder groupViewHolder, View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        this.f21745try.onStartDrag(groupViewHolder);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public /* synthetic */ void m25722else(GroupViewHolder groupViewHolder, ComicShelfBean comicShelfBean, View view) {
        DownloadTaskAdapter.OnCheckedChangeListener onCheckedChangeListener = this.f21744new;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(groupViewHolder.getAdapterPosition(), !comicShelfBean.isChecked());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public GroupViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new GroupViewHolder(this.f21743if.inflate(R.layout.arg_res_0x7f0c0099, viewGroup, false));
    }

    /* renamed from: catch, reason: not valid java name */
    public void m25726catch(ComicShelfBean comicShelfBean) {
        for (int i = 0; i < this.f21742for.size(); i++) {
            if (this.f21742for.get(i).equals(comicShelfBean)) {
                comicShelfBean.setChecked(false);
                this.f21742for.remove(i);
                notifyItemRemoved(i);
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m25727class(boolean z) {
        this.f21740case = z;
    }

    /* renamed from: const, reason: not valid java name */
    public void m25728const(ComicGroupManagerActivity.DragListener dragListener) {
        this.f21745try = dragListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ComicShelfBean> list = this.f21742for;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m25729goto(int i, int i2) {
        if (i < i2) {
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                Collections.swap(this.f21742for, i3, i4);
                i3 = i4;
            }
        } else {
            for (int i5 = i; i5 > i2; i5--) {
                Collections.swap(this.f21742for, i5, i5 - 1);
            }
        }
        notifyItemMoved(i, i2);
    }

    /* renamed from: new, reason: not valid java name */
    public List<ComicShelfBean> m25730new() {
        return this.f21742for;
    }

    public void refresh(List<ComicShelfBean> list) {
        this.f21742for = list;
        notifyDataSetChanged();
    }

    public void setOnCheckedChangeListener(DownloadTaskAdapter.OnCheckedChangeListener onCheckedChangeListener) {
        this.f21744new = onCheckedChangeListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final GroupViewHolder groupViewHolder, int i) {
        final ComicShelfBean comicShelfBean = this.f21742for.get(i);
        groupViewHolder.txtTitle.setText(comicShelfBean.getComicInfoBean().getName());
        if (groupViewHolder.imgMove.getVisibility() == 0) {
            groupViewHolder.imgMove.setOnTouchListener(new View.OnTouchListener() { // from class: android.support.v4.ei0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f1502do.m25720case(groupViewHolder, view, motionEvent);
                }
            });
        }
        groupViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.di0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1048do.m25722else(groupViewHolder, comicShelfBean, view);
            }
        });
        groupViewHolder.checkbox.setOnCheckedChangeListener(new Cdo(groupViewHolder));
        if (this.f21740case) {
            groupViewHolder.imgMove.setVisibility(0);
        } else {
            groupViewHolder.imgMove.setVisibility(4);
        }
        if (comicShelfBean.isChecked()) {
            groupViewHolder.checkbox.setChecked(true);
        } else {
            groupViewHolder.checkbox.setChecked(false);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized void m25732try() {
        for (int i = 0; i < this.f21742for.size(); i++) {
            this.f21742for.get(i).setChecked(false);
        }
        notifyDataSetChanged();
    }
}

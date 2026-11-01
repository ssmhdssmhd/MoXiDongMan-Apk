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
import com.wsw.cospa.activity.AddBookShelfActivity;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.listener.OnCheckedChangeListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class AddBookShelfAdapter extends RecyclerView.Adapter<GroupViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private boolean f21519case;

    /* renamed from: do, reason: not valid java name */
    private Context f21520do;

    /* renamed from: for, reason: not valid java name */
    private List<ComicShelfGroupBean> f21521for = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private LayoutInflater f21522if;

    /* renamed from: new, reason: not valid java name */
    public AddBookShelfActivity.DragListener f21523new;

    /* renamed from: try, reason: not valid java name */
    private OnCheckedChangeListener f21524try;

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
        private GroupViewHolder f21525do;

        @UiThread
        public GroupViewHolder_ViewBinding(GroupViewHolder groupViewHolder, View view) {
            this.f21525do = groupViewHolder;
            groupViewHolder.checkbox = (CheckBox) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", CheckBox.class);
            groupViewHolder.imgIcon = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090218, "field 'imgIcon'", ImageView.class);
            groupViewHolder.txtTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904cc, "field 'txtTitle'", TextView.class);
            groupViewHolder.imgMove = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090219, "field 'imgMove'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            GroupViewHolder groupViewHolder = this.f21525do;
            if (groupViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21525do = null;
            groupViewHolder.checkbox = null;
            groupViewHolder.imgIcon = null;
            groupViewHolder.txtTitle = null;
            groupViewHolder.imgMove = null;
        }
    }

    public AddBookShelfAdapter(Context context) {
        this.f21520do = context;
        this.f21522if = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public /* synthetic */ void m25432case(GroupViewHolder groupViewHolder, int i, ComicShelfGroupBean comicShelfGroupBean, View view) {
        if (this.f21524try != null && groupViewHolder.checkbox.isPressed()) {
            groupViewHolder.checkbox.setChecked(!r1.isChecked());
        }
        notifyItemChanged(i);
        this.f21524try.onCheckedChanged(comicShelfGroupBean, !comicShelfGroupBean.getEnable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public /* synthetic */ void m25434else(GroupViewHolder groupViewHolder, ComicShelfGroupBean comicShelfGroupBean, CompoundButton compoundButton, boolean z) {
        if (this.f21524try == null || !groupViewHolder.checkbox.isPressed()) {
            return;
        }
        this.f21524try.onCheckedChanged(comicShelfGroupBean, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public /* synthetic */ boolean m25437try(GroupViewHolder groupViewHolder, View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        this.f21523new.onStartDrag(groupViewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public GroupViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new GroupViewHolder(this.f21522if.inflate(R.layout.arg_res_0x7f0c008f, viewGroup, false));
    }

    /* renamed from: catch, reason: not valid java name */
    public void m25439catch(boolean z) {
        this.f21519case = z;
    }

    /* renamed from: class, reason: not valid java name */
    public void m25440class(AddBookShelfActivity.DragListener dragListener) {
        this.f21523new = dragListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ComicShelfGroupBean> list = this.f21521for;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m25441goto(int i, int i2) {
        if (i < i2) {
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                Collections.swap(this.f21521for, i3, i4);
                i3 = i4;
            }
        } else {
            for (int i5 = i; i5 > i2; i5--) {
                Collections.swap(this.f21521for, i5, i5 - 1);
            }
        }
        notifyItemMoved(i, i2);
    }

    /* renamed from: new, reason: not valid java name */
    public List<ComicShelfGroupBean> m25442new() {
        return this.f21521for;
    }

    public void refresh(List<ComicShelfGroupBean> list) {
        this.f21521for = list;
        notifyDataSetChanged();
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f21524try = onCheckedChangeListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final GroupViewHolder groupViewHolder, final int i) {
        final ComicShelfGroupBean comicShelfGroupBean = this.f21521for.get(i);
        groupViewHolder.txtTitle.setText(comicShelfGroupBean.getGroupName());
        groupViewHolder.checkbox.setChecked(comicShelfGroupBean.getEnable());
        if (groupViewHolder.imgMove.getVisibility() == 0) {
            groupViewHolder.imgMove.setOnTouchListener(new View.OnTouchListener() { // from class: android.support.v4.f0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f1638do.m25437try(groupViewHolder, view, motionEvent);
                }
            });
        }
        groupViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1171do.m25432case(groupViewHolder, i, comicShelfGroupBean, view);
            }
        });
        groupViewHolder.checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: android.support.v4.g0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f2026do.m25434else(groupViewHolder, comicShelfGroupBean, compoundButton, z);
            }
        });
        if (this.f21519case) {
            groupViewHolder.imgMove.setVisibility(0);
        } else {
            groupViewHolder.imgMove.setVisibility(4);
        }
    }
}

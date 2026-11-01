package com.luck.picture.lib.adapter;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.support.v4.cx;
import android.support.v4.dn1;
import android.support.v4.k22;
import android.support.v4.od1;
import android.support.v4.ps1;
import android.support.v4.rd1;
import android.support.v4.u72;
import android.support.v4.z71;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.LocalMedia;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class PictureImageGridAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: return, reason: not valid java name */
    private static final int f18571return = 450;

    /* renamed from: break, reason: not valid java name */
    private boolean f18572break;

    /* renamed from: catch, reason: not valid java name */
    private boolean f18574catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f18575class;

    /* renamed from: const, reason: not valid java name */
    private int f18576const;

    /* renamed from: do, reason: not valid java name */
    private Context f18577do;

    /* renamed from: else, reason: not valid java name */
    private boolean f18578else;

    /* renamed from: final, reason: not valid java name */
    private int f18579final;

    /* renamed from: for, reason: not valid java name */
    private OnPhotoSelectChangedListener f18580for;

    /* renamed from: goto, reason: not valid java name */
    private int f18581goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f18582if;

    /* renamed from: import, reason: not valid java name */
    private int f18583import;

    /* renamed from: native, reason: not valid java name */
    private boolean f18584native;

    /* renamed from: new, reason: not valid java name */
    private int f18585new;

    /* renamed from: public, reason: not valid java name */
    private boolean f18586public;

    /* renamed from: super, reason: not valid java name */
    private float f18587super;

    /* renamed from: this, reason: not valid java name */
    private boolean f18588this;

    /* renamed from: throw, reason: not valid java name */
    private Animation f18589throw;

    /* renamed from: while, reason: not valid java name */
    private PictureSelectionConfig f18591while;

    /* renamed from: try, reason: not valid java name */
    private List<LocalMedia> f18590try = new ArrayList();

    /* renamed from: case, reason: not valid java name */
    private List<LocalMedia> f18573case = new ArrayList();

    public class HeaderViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public View f18592do;

        /* renamed from: if, reason: not valid java name */
        public TextView f18594if;

        public HeaderViewHolder(View view) {
            super(view);
            this.f18592do = view;
            this.f18594if = (TextView) view.findViewById(R.id.tv_title_camera);
            this.f18594if.setText(PictureImageGridAdapter.this.f18583import == rd1.m6918super() ? PictureImageGridAdapter.this.f18577do.getString(R.string.picture_tape) : PictureImageGridAdapter.this.f18577do.getString(R.string.picture_take_picture));
        }
    }

    public interface OnPhotoSelectChangedListener {
        void onChange(List<LocalMedia> list);

        void onPictureClick(LocalMedia localMedia, int i);

        void onTakePhoto();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: case, reason: not valid java name */
        public View f18595case;

        /* renamed from: do, reason: not valid java name */
        public ImageView f18596do;

        /* renamed from: else, reason: not valid java name */
        public LinearLayout f18597else;

        /* renamed from: for, reason: not valid java name */
        public TextView f18598for;

        /* renamed from: if, reason: not valid java name */
        public TextView f18600if;

        /* renamed from: new, reason: not valid java name */
        public TextView f18601new;

        /* renamed from: try, reason: not valid java name */
        public TextView f18602try;

        public ViewHolder(View view) {
            super(view);
            this.f18595case = view;
            this.f18596do = (ImageView) view.findViewById(R.id.iv_picture);
            this.f18600if = (TextView) view.findViewById(R.id.check);
            this.f18597else = (LinearLayout) view.findViewById(R.id.ll_check);
            this.f18598for = (TextView) view.findViewById(R.id.tv_duration);
            this.f18601new = (TextView) view.findViewById(R.id.tv_isGif);
            this.f18602try = (TextView) view.findViewById(R.id.tv_long_chart);
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.PictureImageGridAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f18603do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ViewHolder f18604for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f18605if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ LocalMedia f18606new;

        public Cdo(String str, int i, ViewHolder viewHolder, LocalMedia localMedia) {
            this.f18603do = str;
            this.f18605if = i;
            this.f18604for = viewHolder;
            this.f18606new = localMedia;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (new File(ps1.m6218do() ? com.luck.picture.lib.tools.Cdo.m23300final(PictureImageGridAdapter.this.f18577do, Uri.parse(this.f18603do)) : this.f18603do).exists()) {
                PictureImageGridAdapter.this.m22951const(this.f18604for, this.f18606new);
            } else {
                u72.m8276do(PictureImageGridAdapter.this.f18577do, rd1.m6916native(PictureImageGridAdapter.this.f18577do, this.f18605if));
            }
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.PictureImageGridAdapter$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f18609do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f18610for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f18611if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ LocalMedia f18612new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ ViewHolder f18613try;

        public Cif(String str, int i, int i2, LocalMedia localMedia, ViewHolder viewHolder) {
            this.f18609do = str;
            this.f18611if = i;
            this.f18610for = i2;
            this.f18612new = localMedia;
            this.f18613try = viewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!new File(ps1.m6218do() ? com.luck.picture.lib.tools.Cdo.m23300final(PictureImageGridAdapter.this.f18577do, Uri.parse(this.f18609do)) : this.f18609do).exists()) {
                u72.m8276do(PictureImageGridAdapter.this.f18577do, rd1.m6916native(PictureImageGridAdapter.this.f18577do, this.f18611if));
                return;
            }
            boolean z = true;
            int i = PictureImageGridAdapter.this.f18582if ? this.f18610for - 1 : this.f18610for;
            if ((this.f18611if != 1 || !PictureImageGridAdapter.this.f18578else) && ((this.f18611if != 2 || (!PictureImageGridAdapter.this.f18588this && PictureImageGridAdapter.this.f18581goto != 1)) && (this.f18611if != 3 || (!PictureImageGridAdapter.this.f18572break && PictureImageGridAdapter.this.f18581goto != 1)))) {
                z = false;
            }
            if (z) {
                PictureImageGridAdapter.this.f18580for.onPictureClick(this.f18612new, i);
            } else {
                PictureImageGridAdapter.this.m22951const(this.f18613try, this.f18612new);
            }
        }
    }

    public PictureImageGridAdapter(Context context, PictureSelectionConfig pictureSelectionConfig) {
        this.f18577do = context;
        this.f18591while = pictureSelectionConfig;
        this.f18581goto = pictureSelectionConfig.f18683else;
        this.f18582if = pictureSelectionConfig.f18684extends;
        this.f18585new = pictureSelectionConfig.f18688goto;
        this.f18578else = pictureSelectionConfig.f18696package;
        this.f18588this = pictureSelectionConfig.f18697private;
        this.f18572break = pictureSelectionConfig.f18674abstract;
        this.f18574catch = pictureSelectionConfig.f18680continue;
        this.f18576const = pictureSelectionConfig.f18712while;
        this.f18579final = pictureSelectionConfig.f18691import;
        this.f18575class = pictureSelectionConfig.f18702strictfp;
        this.f18587super = pictureSelectionConfig.f18700return;
        this.f18583import = pictureSelectionConfig.f18682do;
        this.f18584native = pictureSelectionConfig.f18708throws;
        this.f18589throw = z71.m10082for(context, R.anim.modal_in);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public void m22951const(ViewHolder viewHolder, LocalMedia localMedia) {
        boolean zIsSelected = viewHolder.f18600if.isSelected();
        String strM23089else = this.f18573case.size() > 0 ? this.f18573case.get(0).m23089else() : "";
        if (!TextUtils.isEmpty(strM23089else) && !rd1.m6908const(strM23089else, localMedia.m23089else())) {
            Context context = this.f18577do;
            u72.m8276do(context, context.getString(R.string.picture_rule));
            return;
        }
        if (this.f18573case.size() >= this.f18585new && !zIsSelected) {
            u72.m8276do(this.f18577do, strM23089else.startsWith(od1.f4554const) ? this.f18577do.getString(R.string.picture_message_max_num, Integer.valueOf(this.f18585new)) : this.f18577do.getString(R.string.picture_message_video_max_num, Integer.valueOf(this.f18585new)));
            return;
        }
        if (zIsSelected) {
            Iterator<LocalMedia> it = this.f18573case.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                LocalMedia next = it.next();
                if (next.m23084case().equals(localMedia.m23084case())) {
                    this.f18573case.remove(next);
                    m22962switch();
                    m22954final(viewHolder.f18596do);
                    break;
                }
            }
        } else {
            if (this.f18581goto == 1) {
                m22961static();
            }
            this.f18573case.add(localMedia);
            localMedia.m23095native(this.f18573case.size());
            com.luck.picture.lib.tools.Cif.m23318for(this.f18577do, this.f18575class);
            m22964throws(viewHolder.f18596do);
        }
        notifyItemChanged(viewHolder.getAdapterPosition());
        m22968public(viewHolder, !zIsSelected, true);
        OnPhotoSelectChangedListener onPhotoSelectChangedListener = this.f18580for;
        if (onPhotoSelectChangedListener != null) {
            onPhotoSelectChangedListener.onChange(this.f18573case);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m22954final(ImageView imageView) {
        if (this.f18584native) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(imageView, "scaleX", 1.12f, 1.0f), ObjectAnimator.ofFloat(imageView, "scaleY", 1.12f, 1.0f));
            animatorSet.setDuration(450L);
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public /* synthetic */ void m22958import(View view) {
        OnPhotoSelectChangedListener onPhotoSelectChangedListener = this.f18580for;
        if (onPhotoSelectChangedListener != null) {
            onPhotoSelectChangedListener.onTakePhoto();
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m22959native(ViewHolder viewHolder, LocalMedia localMedia) {
        viewHolder.f18600if.setText("");
        for (LocalMedia localMedia2 : this.f18573case) {
            if (localMedia2.m23084case().equals(localMedia.m23084case())) {
                localMedia.m23095native(localMedia2.m23103try());
                localMedia2.m23099static(localMedia.m23092goto());
                viewHolder.f18600if.setText(String.valueOf(localMedia.m23103try()));
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m22961static() {
        List<LocalMedia> list = this.f18573case;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f18586public = true;
        int i = 0;
        LocalMedia localMedia = this.f18573case.get(0);
        if (this.f18591while.f18684extends || this.f18586public) {
            i = localMedia.f18738else;
        } else {
            int i2 = localMedia.f18738else;
            if (i2 > 0) {
                i = i2 - 1;
            }
        }
        notifyItemChanged(i);
        this.f18573case.clear();
    }

    /* renamed from: switch, reason: not valid java name */
    private void m22962switch() {
        if (this.f18574catch) {
            int size = this.f18573case.size();
            int i = 0;
            while (i < size) {
                LocalMedia localMedia = this.f18573case.get(i);
                i++;
                localMedia.m23095native(i);
                notifyItemChanged(localMedia.f18738else);
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m22964throws(ImageView imageView) {
        if (this.f18584native) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofFloat(imageView, "scaleX", 1.0f, 1.12f), ObjectAnimator.ofFloat(imageView, "scaleY", 1.0f, 1.12f));
            animatorSet.setDuration(450L);
            animatorSet.start();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m22966catch(List<LocalMedia> list) {
        this.f18590try = list;
        notifyDataSetChanged();
    }

    /* renamed from: class, reason: not valid java name */
    public void m22967class(List<LocalMedia> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<LocalMedia> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        this.f18573case = arrayList;
        m22962switch();
        OnPhotoSelectChangedListener onPhotoSelectChangedListener = this.f18580for;
        if (onPhotoSelectChangedListener != null) {
            onPhotoSelectChangedListener.onChange(this.f18573case);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18582if ? this.f18590try.size() + 1 : this.f18590try.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return (this.f18582if && i == 0) ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == 1) {
            ((HeaderViewHolder) viewHolder).f18592do.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.qd1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5344do.m22958import(view);
                }
            });
            return;
        }
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        LocalMedia localMedia = this.f18590try.get(this.f18582if ? i - 1 : i);
        localMedia.f18738else = viewHolder2.getAdapterPosition();
        String strM23084case = localMedia.m23084case();
        String strM23089else = localMedia.m23089else();
        if (this.f18574catch) {
            m22959native(viewHolder2, localMedia);
        }
        m22968public(viewHolder2, m22972while(localMedia), false);
        int iM6906catch = rd1.m6906catch(strM23089else);
        viewHolder2.f18601new.setVisibility(rd1.m6910else(strM23089else) ? 0 : 8);
        if (this.f18583import == rd1.m6918super()) {
            viewHolder2.f18598for.setVisibility(0);
            k22.m4217if(viewHolder2.f18598for, ContextCompat.getDrawable(this.f18577do, R.drawable.picture_audio), 0);
        } else {
            k22.m4217if(viewHolder2.f18598for, ContextCompat.getDrawable(this.f18577do, R.drawable.video_icon), 0);
            viewHolder2.f18598for.setVisibility(iM6906catch == 2 ? 0 : 8);
        }
        viewHolder2.f18602try.setVisibility(rd1.m6904break(localMedia) ? 0 : 8);
        viewHolder2.f18598for.setText(cx.m1061for(localMedia.m23091for()));
        if (this.f18583import == rd1.m6918super()) {
            viewHolder2.f18596do.setImageResource(R.drawable.audio_placeholder);
        } else {
            dn1 dn1Var = new dn1();
            int i2 = this.f18576const;
            if (i2 > 0 || this.f18579final > 0) {
                dn1Var.z(i2, this.f18579final);
            } else {
                dn1Var.J(this.f18587super);
            }
            dn1Var.mo11946this(Ccase.f9734do);
            dn1Var.mo11927for();
            dn1Var.A(R.drawable.image_placeholder);
            Glide.m11032abstract(this.f18577do).mo6031new().load(strM23084case).mo11166do(dn1Var).m0(viewHolder2.f18596do);
        }
        if (this.f18578else || this.f18588this || this.f18572break) {
            viewHolder2.f18597else.setOnClickListener(new Cdo(strM23084case, iM6906catch, viewHolder2, localMedia));
        }
        viewHolder2.f18595case.setOnClickListener(new Cif(strM23084case, iM6906catch, i, localMedia, viewHolder2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i == 1 ? new HeaderViewHolder(LayoutInflater.from(this.f18577do).inflate(R.layout.picture_item_camera, viewGroup, false)) : new ViewHolder(LayoutInflater.from(this.f18577do).inflate(R.layout.picture_image_grid_item, viewGroup, false));
    }

    /* renamed from: public, reason: not valid java name */
    public void m22968public(ViewHolder viewHolder, boolean z, boolean z2) {
        Animation animation;
        viewHolder.f18600if.setSelected(z);
        if (!z) {
            viewHolder.f18596do.setColorFilter(ContextCompat.getColor(this.f18577do, R.color.image_overlay_false), PorterDuff.Mode.SRC_ATOP);
            return;
        }
        if (z2 && (animation = this.f18589throw) != null) {
            viewHolder.f18600if.startAnimation(animation);
        }
        viewHolder.f18596do.setColorFilter(ContextCompat.getColor(this.f18577do, R.color.image_overlay_true), PorterDuff.Mode.SRC_ATOP);
    }

    /* renamed from: return, reason: not valid java name */
    public void m22969return(boolean z) {
        this.f18582if = z;
    }

    public void setOnPhotoSelectChangedListener(OnPhotoSelectChangedListener onPhotoSelectChangedListener) {
        this.f18580for = onPhotoSelectChangedListener;
    }

    /* renamed from: super, reason: not valid java name */
    public List<LocalMedia> m22970super() {
        if (this.f18590try == null) {
            this.f18590try = new ArrayList();
        }
        return this.f18590try;
    }

    /* renamed from: throw, reason: not valid java name */
    public List<LocalMedia> m22971throw() {
        if (this.f18573case == null) {
            this.f18573case = new ArrayList();
        }
        return this.f18573case;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m22972while(LocalMedia localMedia) {
        Iterator<LocalMedia> it = this.f18573case.iterator();
        while (it.hasNext()) {
            if (it.next().m23084case().equals(localMedia.m23084case())) {
                return true;
            }
        }
        return false;
    }
}

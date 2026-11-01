package android.support.v4;

import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.engine.Ccase;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.BannerInfo;
import com.wsw.cospa.widget.view.RoundImageView;
import com.youth.banner.loader.ImageLoader;

/* loaded from: classes2.dex */
public class mh0 extends ImageLoader {
    @Override // com.youth.banner.loader.ImageLoader, com.youth.banner.loader.ImageLoaderInterface
    public ImageView createImageView(Context context) {
        RoundImageView roundImageView = new RoundImageView(context);
        roundImageView.setBorderRadius((int) j10.m3660new(context, 2.0f));
        roundImageView.setType(1);
        roundImageView.setAdjustViewBounds(true);
        roundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return roundImageView;
    }

    @Override // com.youth.banner.loader.ImageLoaderInterface
    public void displayImage(Context context, Object obj, ImageView imageView) {
        jh0.m3888this(context).load(((BannerInfo.BannerBean) obj).imagePath).mo11166do(new dn1().mo11927for().A(R.drawable.arg_res_0x7f0801bb).mo11943super(R.drawable.arg_res_0x7f0801bb).C(Ctry.HIGH).mo11946this(Ccase.f9737new)).m0(imageView);
    }
}

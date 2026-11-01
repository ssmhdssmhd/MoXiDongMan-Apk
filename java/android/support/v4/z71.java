package android.support.v4;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class z71 {
    /* renamed from: do, reason: not valid java name */
    private static Animation m10081do(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return m10083if(context, xmlPullParser, null, Xml.asAttributeSet(xmlPullParser));
    }

    /* renamed from: for, reason: not valid java name */
    public static Animation m10082for(Context context, int i) throws Resources.NotFoundException {
        XmlResourceParser animation = null;
        try {
            try {
                animation = context.getResources().getAnimation(i);
                return m10081do(context, animation);
            } catch (IOException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static Animation m10083if(Context context, XmlPullParser xmlPullParser, AnimationSet animationSet, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Animation translateAnimation = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("set")) {
                    AnimationSet animationSet2 = new AnimationSet(context, attributeSet);
                    m10083if(context, xmlPullParser, animationSet2, attributeSet);
                    translateAnimation = animationSet2;
                } else if (name.equals("alpha")) {
                    translateAnimation = new AlphaAnimation(context, attributeSet);
                } else if (name.equals("scale")) {
                    translateAnimation = new ScaleAnimation(context, attributeSet);
                } else if (name.equals("rotate")) {
                    translateAnimation = new RotateAnimation(context, attributeSet);
                } else if (name.equals("translate")) {
                    translateAnimation = new TranslateAnimation(context, attributeSet);
                } else {
                    try {
                        translateAnimation = (Animation) Class.forName(name).getConstructor(Context.class, AttributeSet.class).newInstance(context, attributeSet);
                    } catch (Exception e) {
                        throw new RuntimeException("Unknown animation name: " + xmlPullParser.getName() + " error:" + e.getMessage());
                    }
                }
                if (animationSet != null) {
                    animationSet.addAnimation(translateAnimation);
                }
            }
        }
        return translateAnimation;
    }
}

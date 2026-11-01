package freemarker.core;

import android.support.v4.l80;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.oc;
import android.support.v4.on0;
import android.support.v4.ul2;
import android.support.v4.w72;
import android.support.v4.wd;
import android.support.v4.yk2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentManagerImpl;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import com.scwang.smartrefresh.header.TaurusHeader;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.io.PrintStream;
import java.util.StringTokenizer;
import kotlin.time.Ctry;
import net.minidev.json.parser.Cdo;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
class k0 implements FMParserConstants {

    /* renamed from: volatile, reason: not valid java name */
    private static final String f23959volatile = "(If you have seen this directive in use elsewhere, this was a planned directive, so maybe you need to upgrade FreeMarker.)";

    /* renamed from: abstract, reason: not valid java name */
    private int f23960abstract;

    /* renamed from: break, reason: not valid java name */
    public boolean f23961break;

    /* renamed from: case, reason: not valid java name */
    private int f23962case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f23963catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f23964class;

    /* renamed from: const, reason: not valid java name */
    public int f23965const;

    /* renamed from: continue, reason: not valid java name */
    private int f23966continue;

    /* renamed from: default, reason: not valid java name */
    public t3 f23967default;

    /* renamed from: do, reason: not valid java name */
    public String f23968do;

    /* renamed from: else, reason: not valid java name */
    private boolean f23969else;

    /* renamed from: extends, reason: not valid java name */
    private final int[] f23970extends;

    /* renamed from: final, reason: not valid java name */
    public int f23971final;

    /* renamed from: finally, reason: not valid java name */
    private final int[] f23972finally;

    /* renamed from: for, reason: not valid java name */
    private int f23973for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f23974goto;

    /* renamed from: if, reason: not valid java name */
    private j0 f23975if;

    /* renamed from: import, reason: not valid java name */
    public PrintStream f23976import;

    /* renamed from: native, reason: not valid java name */
    public int f23977native;

    /* renamed from: new, reason: not valid java name */
    private int f23978new;

    /* renamed from: package, reason: not valid java name */
    private final StringBuilder f23979package;

    /* renamed from: private, reason: not valid java name */
    private StringBuilder f23980private;

    /* renamed from: public, reason: not valid java name */
    public int f23981public;

    /* renamed from: return, reason: not valid java name */
    public int f23982return;

    /* renamed from: static, reason: not valid java name */
    public int f23983static;

    /* renamed from: strictfp, reason: not valid java name */
    public int f23984strictfp;

    /* renamed from: super, reason: not valid java name */
    public int f23985super;

    /* renamed from: switch, reason: not valid java name */
    public int f23986switch;

    /* renamed from: this, reason: not valid java name */
    public boolean f23987this;

    /* renamed from: throw, reason: not valid java name */
    public m4 f23988throw;

    /* renamed from: throws, reason: not valid java name */
    public int f23989throws;

    /* renamed from: try, reason: not valid java name */
    private int f23990try;

    /* renamed from: while, reason: not valid java name */
    public int f23991while;

    /* renamed from: interface, reason: not valid java name */
    public static final long[] f23955interface = {-2, -1, -1, -1};

    /* renamed from: protected, reason: not valid java name */
    public static final long[] f23956protected = {0, 0, -1, -1};

    /* renamed from: transient, reason: not valid java name */
    public static final long[] f23958transient = {-4503595332403202L, -8193, -17386027614209L, 1585267068842803199L};

    /* renamed from: implements, reason: not valid java name */
    public static final long[] f23953implements = {0, 0, 297241973452963840L, -36028797027352577L};

    /* renamed from: instanceof, reason: not valid java name */
    public static final long[] f23954instanceof = {0, -9222809086901354496L, 536805376, 0};

    /* renamed from: synchronized, reason: not valid java name */
    public static final long[] f23957synchronized = {-864764451093480316L, 17376, 24, 0};
    public static final long[] a = {-140737488355329L, -2147483649L, -1, 3509778554814463L};
    public static final long[] b = {-245465970900993L, 141836999983103L, 9187201948305063935L, 2139062143};
    public static final long[] c = {140737488355328L, 0, 0, 0};
    public static final long[] d = {1746833705466331232L, -1, -1, -1};
    public static final long[] e = {-1, -1, 576460748008521727L, -281474976710656L};
    public static final long[] f = {-1, -1, 0, 0};
    public static final long[] g = {-1, -1, 18014398509481983L, 0};
    public static final long[] h = {-1, -1, 8191, 4611686018427322368L};
    public static final long[] i = {17592185987071L, -9223231299366420481L, -4278190081L, 274877906943L};
    public static final long[] j = {-12893290496L, -1, 8791799069183L, -72057594037927936L};
    public static final long[] k = {34359736251L, 4503599627370495L, 4503599627370492L, 647392446501552128L};
    public static final long[] l = {-281200098803713L, 2305843004918726783L, 2251799813685232L, 67076096};
    public static final long[] m = {2199023255551L, 324259168942755831L, 4495436853045886975L, 7890092085477381L};
    public static final long[] n = {140183445864062L, 0, 0, 287948935534739455L};
    public static final long[] o = {-1, -1, -281406257233921L, 1152921504606845055L};
    public static final long[] p = {6881498030004502655L, -37, 1125899906842623L, -524288};
    public static final long[] q = {Ctry.f28072for, -65536, -196609, 1152640029630136575L};
    public static final long[] r = {0, -9288674231451648L, -1, 2305843009213693951L};
    public static final long[] s = {576460743780532224L, -274743689218L, Long.MAX_VALUE, 486341884};
    public static final int[] t = {10, 12, 4, 5, 3, 4, 5, 697, 712, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, l80.f3570goto, l80.f3574this, 413, 414, TypedValues.Cycle.TYPE_WAVE_PERIOD, TypedValues.Cycle.TYPE_WAVE_OFFSET, 431, 432, 443, 444, 455, 456, 467, 468, 477, 478, 488, 489, 499, 500, 512, InputDeviceCompat.SOURCE_DPAD, 522, 523, 539, 540, 551, 552, 570, 571, 583, 584, 597, 598, TypedValues.Motion.TYPE_DRAW_PATH, 609, TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS, TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_TYPE, TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_ID, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 636, 637, 638, 650, 651, Cdo.f28225import, 662, 663, 665, 12, 21, 24, 31, 36, 45, 50, 58, 65, 70, 77, 84, 90, 98, 105, 114, 120, 130, 136, 141, 148, 153, 161, 174, 183, 199, 209, 218, 227, 234, 242, 253, 262, 269, 277, 278, 286, 291, 296, 305, 314, 321, 331, 339, 350, 357, 367, 5, 6, 14, 15, 38, 41, 47, 48, 178, 179, 187, 188, 201, 202, org.bouncycastle.math.Cdo.f31781do, 212, 222, 223, 229, 230, 231, 236, 237, 238, 244, 245, 246, 255, 256, 257, 264, 265, 266, 271, 272, 273, 279, 280, 281, 283, 284, Creturn.f24112class, 288, 289, 290, 293, 294, 295, 298, 299, 307, 308, 309, 323, 324, 325, 341, 342, 343, 361, 362, 400, 401, 407, 408, TypedValues.Cycle.TYPE_PATH_ROTATE, 417, 426, 427, 434, 435, 446, 447, 460, 461, 470, 471, 480, 481, 491, 492, 502, 503, 515, 516, 527, 528, 544, 545, 556, 557, 573, 574, 586, 587, 600, 601, 628, 629, 642, 643, TypedValues.Transition.TYPE_DURATION, TypedValues.Transition.TYPE_FROM, 703, 708, 709, 704, 710, 703, TypedValues.Transition.TYPE_INTERPOLATOR, TypedValues.Transition.TYPE_STAGGERED, 708, 709, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 609, TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS, TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_TYPE, TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_ID, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 685, 637, 686, 651, 689, 692, 663, 693, 193, 198, 562, 567, 658, 659, 699, 711, 708, 709, 58, 59, 60, 81, 84, 87, 91, 92, 101, 54, 56, 47, 51, 44, 45, 13, 14, 17, 6, 7, 10, 67, 69, 71, 74, 77, 20, 23, 8, 11, 15, 18, 21, 22, 24, 25, 55, 56, 57, 78, 81, 84, 88, 89, 98, 51, 53, 44, 48, 64, 66, 68, 71, 74, 3, 5, 54, 55, 56, 77, 80, 83, 87, 88, 97, 50, 52, 43, 47, 40, 41, 8, 9, 12, 1, 2, 5, 63, 65, 67, 70, 73, 3, 6, 10, 13, 16, 17, 19, 20, 60, 61, 62, 83, 86, 89, 93, 94, 103, 56, 58, 49, 53, 46, 47, 69, 71, 73, 76, 79};
    public static final String[] u = {"", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "${", "#{", "[=", null, null, null, null, null, null, null, null, null, null, b2.f23510do, b2.f23511if, null, null, ".", "..", null, "..*", "?", "??", "=", "==", "!=", "+=", "-=", "*=", "/=", "%=", "++", "--", null, null, null, null, null, "+", "-", "*", "**", "...", on0.f4694final, "%", null, null, org.antlr.v4.runtime.tree.xpath.Cdo.f28590try, ",", ";", ":", "[", "]", "(", ")", "{", "}", "in", "as", "using", null, null, null, null, null, null, ">", null, ">", ">=", null, null, null, null, null, null};
    public static final String[] v = {"DEFAULT", "NO_DIRECTIVE", "FM_EXPRESSION", "IN_PAREN", "NAMED_PARAMETER_EXPRESSION", "EXPRESSION_COMMENT", "NO_SPACE_EXPRESSION", "NO_PARSE"};
    public static final int[] w = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2, 2, -1, -1, -1, -1};
    public static final long[] x = {-63, -534773761, 1072758783};
    public static final long[] y = {0, 266338304, 0};

    public k0(t3 t3Var) {
        this.f23973for = -1;
        this.f23976import = System.out;
        this.f23977native = 0;
        this.f23981public = 0;
        this.f23970extends = new int[713];
        this.f23972finally = new int[1426];
        StringBuilder sb = new StringBuilder();
        this.f23979package = sb;
        this.f23980private = sb;
        this.f23967default = t3Var;
    }

    private final int A(int i2, long j2, long j3, long j4) {
        return m28147finally(I(i2, j2, j3, j4), i2 + 1);
    }

    private final int B(int i2, long j2, long j3, long j4) {
        return m28154package(J(i2, j2, j3, j4), i2 + 1);
    }

    private final int C(int i2, long j2, long j3, long j4) {
        return m28155private(K(i2, j2, j3, j4), i2 + 1);
    }

    private final int D(int i2, long j2, long j3) {
        return m28139abstract(L(i2, j2, j3), i2 + 1);
    }

    private final int E(int i2, long j2, long j3, long j4) {
        return m28143continue(M(i2, j2, j3, j4), i2 + 1);
    }

    private int F(int i2, int i3) {
        this.f23989throws = i3;
        this.f23986switch = i2;
        return i2 + 1;
    }

    private final int G(int i2, long j2, long j3) {
        if (i2 != 0) {
            return -1;
        }
        if ((1048576 & j3) != 0) {
            this.f23989throws = 81;
            return 697;
        }
        if ((j3 & 786432) != 0) {
            this.f23989throws = 81;
        }
        return -1;
    }

    private final int H(int i2, long j2, long j3) {
        if (i2 == 0 && (j3 & 1835008) != 0) {
            this.f23989throws = 81;
        }
        return -1;
    }

    private final int I(int i2, long j2, long j3, long j4) {
        if (i2 == 0) {
            if ((j4 & 32) != 0) {
                return 2;
            }
            if ((j3 & 6442450944L) != 0 || (j4 & 14336) != 0) {
                this.f23989throws = 142;
                return 104;
            }
            if ((j3 & 2305983746702049280L) != 0) {
                return 44;
            }
            if ((j3 & 1152921882563969024L) != 0) {
                return 54;
            }
            return (j3 & 145276272354787328L) != 0 ? 47 : -1;
        }
        if (i2 == 1) {
            if ((j4 & 6144) != 0) {
                return 104;
            }
            if ((j3 & 1152921848204230656L) != 0) {
                return 53;
            }
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            if (this.f23986switch != 1) {
                this.f23989throws = 142;
                this.f23986switch = 1;
            }
            return 104;
        }
        if (i2 == 2) {
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            this.f23989throws = 142;
            this.f23986switch = 2;
            return 104;
        }
        if (i2 != 3) {
            return -1;
        }
        if ((j3 & o3.f24027catch) != 0) {
            return 104;
        }
        if ((j3 & 2147483648L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
            return -1;
        }
        this.f23989throws = 142;
        this.f23986switch = 3;
        return 104;
    }

    private final int J(int i2, long j2, long j3, long j4) {
        if (i2 == 0) {
            if ((j4 & 32) != 0) {
                return 2;
            }
            if ((j3 & 6442450944L) != 0 || (j4 & 14336) != 0) {
                this.f23989throws = 142;
                return 101;
            }
            if ((j3 & 1152921882563969024L) != 0) {
                return 51;
            }
            return (j3 & 145276272354787328L) != 0 ? 44 : -1;
        }
        if (i2 == 1) {
            if ((j4 & 6144) != 0) {
                return 101;
            }
            if ((j3 & 1152921848204230656L) != 0) {
                return 50;
            }
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            if (this.f23986switch != 1) {
                this.f23989throws = 142;
                this.f23986switch = 1;
            }
            return 101;
        }
        if (i2 == 2) {
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            this.f23989throws = 142;
            this.f23986switch = 2;
            return 101;
        }
        if (i2 != 3) {
            return -1;
        }
        if ((j3 & o3.f24027catch) != 0) {
            return 101;
        }
        if ((j3 & 2147483648L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
            return -1;
        }
        this.f23989throws = 142;
        this.f23986switch = 3;
        return 101;
    }

    private final int K(int i2, long j2, long j3, long j4) {
        if (i2 == 0) {
            if ((j4 & 32) != 0) {
                return 2;
            }
            if ((j3 & 6442450944L) != 0 || (j4 & 14336) != 0) {
                this.f23989throws = 142;
                return 106;
            }
            if ((j3 & 2305983746702049280L) != 0) {
                return 46;
            }
            if ((j3 & 1152921882563969024L) != 0) {
                return 56;
            }
            if ((j3 & 145276272354787328L) != 0) {
                return 49;
            }
            return ((j3 & 8796093022208L) == 0 && (j4 & 2) == 0) ? -1 : 44;
        }
        if (i2 == 1) {
            if ((j4 & 6144) != 0) {
                return 106;
            }
            if ((j3 & 1152921848204230656L) != 0) {
                return 55;
            }
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            if (this.f23986switch != 1) {
                this.f23989throws = 142;
                this.f23986switch = 1;
            }
            return 106;
        }
        if (i2 == 2) {
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            this.f23989throws = 142;
            this.f23986switch = 2;
            return 106;
        }
        if (i2 != 3) {
            return -1;
        }
        if ((j3 & o3.f24027catch) != 0) {
            return 106;
        }
        if ((j3 & 2147483648L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
            return -1;
        }
        this.f23989throws = 142;
        this.f23986switch = 3;
        return 106;
    }

    private final int L(int i2, long j2, long j3) {
        return -1;
    }

    private final int M(int i2, long j2, long j3, long j4) {
        if (i2 == 0) {
            if ((j4 & 32) != 0) {
                return 36;
            }
            if ((j3 & 2305983746702049280L) != 0) {
                return 40;
            }
            if ((j3 & 145276272354787328L) != 0) {
                return 43;
            }
            if ((j3 & 1152921882563969024L) != 0) {
                return 50;
            }
            if ((j3 & 6442450944L) == 0 && (j4 & 14336) == 0) {
                return -1;
            }
            this.f23989throws = 142;
            return 100;
        }
        if (i2 == 1) {
            if ((j4 & 6144) != 0) {
                return 100;
            }
            if ((j3 & 1152921848204230656L) != 0) {
                return 49;
            }
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            if (this.f23986switch != 1) {
                this.f23989throws = 142;
                this.f23986switch = 1;
            }
            return 100;
        }
        if (i2 == 2) {
            if ((j3 & 6442450944L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
                return -1;
            }
            this.f23989throws = 142;
            this.f23986switch = 2;
            return 100;
        }
        if (i2 != 3) {
            return -1;
        }
        if ((j3 & o3.f24027catch) != 0) {
            return 100;
        }
        if ((j3 & 2147483648L) == 0 && (j4 & PlaybackStateCompat.ACTION_PLAY_FROM_URI) == 0) {
            return -1;
        }
        this.f23989throws = 142;
        this.f23986switch = 3;
        return 100;
    }

    private w72 N(m4 m4Var) {
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ");
        sb.append(this.f23971final == 10 ? "must consistently use the same naming convention within the same template. This template uses " : "must use the configured naming convention, which is the ");
        int i2 = this.f23985super;
        sb.append(i2 == 12 ? "camel case naming convention (like: exampleName) " : i2 == 11 ? "legacy naming convention (directive (tag) names are like examplename, everything else is like example_name) " : "??? (internal error)");
        if (this.f23988throw != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("estabilished by auto-detection at ");
            m4 m4Var2 = this.f23988throw;
            sb2.append(b5.m27853class(m4Var2.beginLine, m4Var2.beginColumn));
            sb2.append(" by token ");
            sb2.append(Csuper.m29330synchronized(this.f23988throw.image.trim()));
            string = sb2.toString();
        } else {
            string = "";
        }
        sb.append(string);
        sb.append(", but the problematic token, ");
        sb.append(Csuper.m29330synchronized(m4Var.image.trim()));
        sb.append(", uses a different convention.");
        return new w72(sb.toString(), 0, m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn);
    }

    private w72 O(m4 m4Var) {
        return new w72("You can't have an \"" + m4Var.image + "\" here, as there's nothing open that it could close.", 0, m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn);
    }

    private void R(m4 m4Var) {
        int i2 = this.f23965const;
        if ((i2 == 20 && m4Var.kind == 84) || ((i2 == 21 && m4Var.kind != 82) || (i2 == 22 && m4Var.kind != 84))) {
            m4Var.kind = 80;
            return;
        }
        if (this.f23973for == -1) {
            this.f23973for = this.f23977native;
            m28177try(2);
            return;
        }
        m4Var.image.charAt(0);
        StringBuilder sb = new StringBuilder();
        sb.append("You can't start an interpolation (");
        sb.append(m4Var.image);
        sb.append("...");
        sb.append(this.f23965const == 22 ? "]" : "}");
        sb.append(") here as you are inside another interpolation.)");
        throw new w72(sb.toString(), 0, m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn);
    }

    private void S(m4 m4Var) {
        char cCharAt = m4Var.image.charAt(0);
        if (this.f23961break && !this.f23963catch) {
            this.f23987this = cCharAt == '[';
        }
        boolean z = this.f23987this;
        if (z && cCharAt == '<') {
            m4Var.kind = 80;
        } else if (!z && cCharAt == '[') {
            m4Var.kind = 80;
        } else {
            this.f23963catch = true;
            m28177try(6);
        }
    }

    private void T(m4 m4Var) {
        char cCharAt = m4Var.image.charAt(0);
        boolean z = this.f23987this;
        if (z && cCharAt == '<') {
            m4Var.kind = 80;
        } else {
            if (z || cCharAt != '[') {
                return;
            }
            m4Var.kind = 80;
        }
    }

    private int a() {
        return m28160strictfp(0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x012b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x012a A[SYNTHETIC] */
    /* renamed from: abstract, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28139abstract(int i2, int i3) {
        int i4;
        this.f23982return = 6;
        this.f23972finally[0] = i2;
        int i5 = Integer.MAX_VALUE;
        int i6 = 1;
        int i7 = i3;
        int i8 = 1;
        int i9 = Integer.MAX_VALUE;
        int i10 = 0;
        while (true) {
            int i11 = this.f23983static + i6;
            this.f23983static = i11;
            if (i11 == i5) {
                m28148for();
            }
            int i12 = this.f23984strictfp;
            if (i12 < 64) {
                long j2 = 1 << i12;
                while (true) {
                    int[] iArr = this.f23972finally;
                    i8--;
                    int i13 = iArr[i8];
                    if (i13 != 0) {
                        if (i13 != i6) {
                            if (i13 != 2) {
                                if (i13 == 3) {
                                    int i14 = this.f23984strictfp;
                                    if (i14 == 45) {
                                        int i15 = this.f23982return;
                                        this.f23982return = i15 + 1;
                                        iArr[i15] = 4;
                                    }
                                    if (i14 == 45) {
                                        int i16 = this.f23982return;
                                        this.f23982return = i16 + 1;
                                        iArr[i16] = 2;
                                    }
                                } else if (i13 == 5 && this.f23984strictfp == 45) {
                                    int i17 = this.f23982return;
                                    this.f23982return = i17 + 1;
                                    iArr[i17] = 4;
                                }
                            } else if (this.f23984strictfp == 62) {
                                i9 = 91;
                            }
                        } else if ((j2 & (-4611721202799476737L)) != 0) {
                            if (i9 > 87) {
                                i9 = 87;
                            }
                            m28158return(0);
                        } else if (this.f23984strictfp == 45) {
                            m28150import(397, 398);
                        }
                    } else if ((j2 & (-4611721202799476737L)) != 0) {
                        m28158return(0);
                        i9 = 87;
                    }
                    if (i8 == i10) {
                        break;
                    }
                    i6 = 1;
                }
            } else if (i12 < 128) {
                long j3 = 1 << (i12 & 63);
                do {
                    i8--;
                    int i18 = this.f23972finally[i8];
                    if (i18 == 0 || i18 == 1) {
                        if (((-536870913) & j3) != 0) {
                            m28158return(0);
                            i9 = 87;
                        }
                    } else if (i18 == 4 && this.f23984strictfp == 93) {
                        i9 = 91;
                    }
                } while (i8 != i10);
            } else {
                int i19 = i12 >> 8;
                int i20 = i19 >> 6;
                long j4 = 1 << (i19 & 63);
                int i21 = (i12 & 255) >> 6;
                long j5 = 1 << (i12 & 63);
                do {
                    i8--;
                    int i22 = this.f23972finally[i8];
                    if (i22 == 0 || i22 == 1) {
                        if (m28153native(i19, i20, i21, j4, j5)) {
                            if (i9 > 87) {
                                i9 = 87;
                            }
                            m28158return(0);
                        }
                    } else if (i20 != 0) {
                        int i23 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                    }
                } while (i8 != i10);
                i4 = Integer.MAX_VALUE;
                if (i9 != i4) {
                    this.f23989throws = i9;
                    this.f23986switch = i7;
                    i9 = Integer.MAX_VALUE;
                }
                i7++;
                i8 = this.f23982return;
                this.f23982return = i10;
                i10 = 6 - i10;
                if (i8 != i10) {
                    return i7;
                }
                try {
                    this.f23984strictfp = this.f23967default.m28301finally();
                    i5 = Integer.MAX_VALUE;
                    i6 = 1;
                } catch (IOException unused) {
                    return i7;
                }
            }
            i4 = Integer.MAX_VALUE;
            if (i9 != i4) {
            }
            i7++;
            i8 = this.f23982return;
            this.f23982return = i10;
            i10 = 6 - i10;
            if (i8 != i10) {
            }
        }
    }

    private int b(long j2) {
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '=') {
                if (cM28301finally == '{') {
                    if ((PlaybackStateCompat.ACTION_SET_REPEAT_MODE & j2) != 0) {
                        return F(1, 82);
                    }
                    if ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED & j2) != 0) {
                        return F(1, 83);
                    }
                }
            } else if ((1048576 & j2) != 0) {
                return F(1, 84);
            }
            return y(0, 0L, j2);
        } catch (IOException unused) {
            G(0, 0L, j2);
            return 1;
        }
    }

    /* renamed from: break, reason: not valid java name */
    private void m28140break(m4 m4Var) {
        m28177try(this.f23973for);
        this.f23973for = -1;
    }

    private int c(long j2) {
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '=') {
                if (cM28301finally == '{') {
                    if ((PlaybackStateCompat.ACTION_SET_REPEAT_MODE & j2) != 0) {
                        return F(1, 82);
                    }
                    if ((PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED & j2) != 0) {
                        return F(1, 83);
                    }
                }
            } else if ((1048576 & j2) != 0) {
                return F(1, 84);
            }
            return z(0, 0L, j2);
        } catch (IOException unused) {
            H(0, 0L, j2);
            return 1;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m28141catch(m4 m4Var) {
        if (!this.f23963catch) {
            this.f23987this = m4Var.image.charAt(0) == '[';
            this.f23963catch = true;
            this.f23961break = false;
        }
        String str = m4Var.image;
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(str.length() - 1);
        if ((cCharAt == '[' && !this.f23987this) || (cCharAt == '<' && this.f23987this)) {
            m4Var.kind = 80;
        }
        if (m4Var.kind != 80) {
            if (cCharAt2 == '>' || cCharAt2 == ']') {
                m28164this();
            } else {
                m28177try(2);
                this.f23969else = true;
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static char m28142const(m4 m4Var, int i2) {
        String str = m4Var.image;
        int i3 = 0;
        while (true) {
            char cCharAt = str.charAt(i3);
            if (cCharAt != '<' && cCharAt != '[' && cCharAt != '/' && cCharAt != '#') {
                return str.charAt(i3 + i2);
            }
            i3++;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x045c A[LOOP:1: B:9:0x003b->B:299:0x045c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:589:0x09ce A[SYNTHETIC] */
    /* renamed from: continue, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28143continue(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        this.f23982return = 100;
        this.f23972finally[0] = i2;
        int i8 = 1;
        int i9 = i3;
        int i10 = 0;
        int i11 = Integer.MAX_VALUE;
        int i12 = 1;
        while (true) {
            int i13 = this.f23983static + i8;
            this.f23983static = i13;
            if (i13 == Integer.MAX_VALUE) {
                m28148for();
            }
            int i14 = this.f23984strictfp;
            if (i14 < 64) {
                long j2 = 1 << i14;
                while (true) {
                    int[] iArr = this.f23972finally;
                    i12--;
                    int i15 = iArr[i12];
                    if (i15 != 0) {
                        if (i15 != i8) {
                            if (i15 != 28) {
                                if (i15 == 29) {
                                    if ((j2 & 287948969894477824L) != 0) {
                                        if (i11 > 142) {
                                            i11 = 142;
                                        }
                                        m28162switch(29, 30);
                                    }
                                } else if (i15 != 74) {
                                    if (i15 != 75) {
                                        switch (i15) {
                                            case 4:
                                                if ((j2 & 287948901175001088L) != 0) {
                                                    m28159static(417, 419);
                                                    break;
                                                }
                                                break;
                                            case 5:
                                                if (this.f23984strictfp == 34 && i11 > 93) {
                                                    i11 = 93;
                                                    break;
                                                }
                                                break;
                                            case 6:
                                                if ((j2 & 2305843576149377024L) != 0) {
                                                    m28159static(417, 419);
                                                    break;
                                                }
                                                break;
                                            case 7:
                                                if (this.f23984strictfp == 39) {
                                                    m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                                                    break;
                                                }
                                                break;
                                            case 8:
                                                if ((j2 & (-549755813889L)) != 0) {
                                                    m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (i15) {
                                                    case 11:
                                                        if ((j2 & 287948901175001088L) != 0) {
                                                            m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                                                            break;
                                                        }
                                                        break;
                                                    case 12:
                                                        if (this.f23984strictfp == 39 && i11 > 93) {
                                                        }
                                                        break;
                                                    case 13:
                                                        if ((j2 & 2305843576149377024L) != 0) {
                                                            m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (i15) {
                                                            case 15:
                                                                if (this.f23984strictfp == 34) {
                                                                    m28162switch(16, 17);
                                                                    break;
                                                                }
                                                                break;
                                                            case 16:
                                                                if ((j2 & (-17179869185L)) != 0) {
                                                                    m28162switch(16, 17);
                                                                    break;
                                                                }
                                                                break;
                                                            case 17:
                                                                if (this.f23984strictfp == 34 && i11 > 94) {
                                                                    i11 = 94;
                                                                    break;
                                                                }
                                                                break;
                                                            case 18:
                                                                if (this.f23984strictfp == 39) {
                                                                    m28162switch(19, 20);
                                                                    break;
                                                                }
                                                                break;
                                                            case 19:
                                                                if ((j2 & (-549755813889L)) != 0) {
                                                                    m28162switch(19, 20);
                                                                    break;
                                                                }
                                                                break;
                                                            case 20:
                                                                if (this.f23984strictfp == 39 && i11 > 94) {
                                                                }
                                                                break;
                                                            case 21:
                                                                if (this.f23984strictfp == 60 && i11 > 115) {
                                                                    i11 = 115;
                                                                    break;
                                                                }
                                                                break;
                                                            case 22:
                                                                if (this.f23984strictfp == 61 && i11 > 116) {
                                                                    i11 = 116;
                                                                    break;
                                                                }
                                                                break;
                                                            case 23:
                                                                if (this.f23984strictfp == 60) {
                                                                    m28158return(22);
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                switch (i15) {
                                                                    case 31:
                                                                        if ((j2 & 288335929267978240L) != 0) {
                                                                            if (i11 > 142) {
                                                                                i7 = 30;
                                                                                i11 = 142;
                                                                            } else {
                                                                                i7 = 30;
                                                                            }
                                                                            m28162switch(29, i7);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 47:
                                                                        if (this.f23984strictfp == 38) {
                                                                            int i16 = this.f23982return;
                                                                            this.f23982return = i16 + 1;
                                                                            iArr[i16] = 46;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 48:
                                                                        if (this.f23984strictfp == 46) {
                                                                            m28150import(408, l80.f3561break);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 49:
                                                                        int i17 = this.f23984strictfp;
                                                                        if (i17 != 33 ? !(i17 != 60 || i11 <= 101) : i11 > 101) {
                                                                            i11 = 101;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 50:
                                                                        int i18 = this.f23984strictfp;
                                                                        if (i18 == 46) {
                                                                            int i19 = this.f23982return;
                                                                            this.f23982return = i19 + 1;
                                                                            iArr[i19] = 51;
                                                                        }
                                                                        if (i18 == 46) {
                                                                            int i20 = this.f23982return;
                                                                            this.f23982return = i20 + 1;
                                                                            iArr[i20] = 49;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 51:
                                                                        if (this.f23984strictfp == 33 && i11 > 101) {
                                                                        }
                                                                        break;
                                                                    case 52:
                                                                        if (this.f23984strictfp == 46) {
                                                                            int i21 = this.f23982return;
                                                                            this.f23982return = i21 + 1;
                                                                            iArr[i21] = 51;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 53:
                                                                        if ((j2 & 287948901175001088L) != 0) {
                                                                            if (i11 > 97) {
                                                                                i11 = 97;
                                                                            }
                                                                            m28159static(399, 401);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 54:
                                                                        if ((j2 & 287948901175001088L) != 0) {
                                                                            if (i11 > 97) {
                                                                                i11 = 97;
                                                                            }
                                                                            m28158return(54);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 55:
                                                                        if ((j2 & 287948901175001088L) != 0) {
                                                                            m28162switch(55, 56);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 56:
                                                                        if (this.f23984strictfp == 46) {
                                                                            m28158return(57);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 57:
                                                                        if ((j2 & 287948901175001088L) != 0) {
                                                                            if (i11 > 98) {
                                                                                i11 = 98;
                                                                            }
                                                                            m28158return(57);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 78:
                                                                        if (this.f23984strictfp == 59) {
                                                                            m28158return(22);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 81:
                                                                        if (this.f23984strictfp == 59 && i11 > 117) {
                                                                            i11 = 117;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 84:
                                                                        if (this.f23984strictfp == 61 && i11 > 118) {
                                                                            i11 = 118;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 85:
                                                                        if (this.f23984strictfp == 59) {
                                                                            int i22 = this.f23982return;
                                                                            this.f23982return = i22 + 1;
                                                                            iArr[i22] = 84;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 88:
                                                                        break;
                                                                    case 89:
                                                                        if (this.f23984strictfp == 59 && i11 > 127) {
                                                                            i11 = 127;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 93:
                                                                        if (this.f23984strictfp == 38) {
                                                                            int i23 = this.f23982return;
                                                                            this.f23982return = i23 + 1;
                                                                            iArr[i23] = 92;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 94:
                                                                        if (this.f23984strictfp == 59) {
                                                                            int i24 = this.f23982return;
                                                                            this.f23982return = i24 + 1;
                                                                            iArr[i24] = 93;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 100:
                                                                        break;
                                                                    default:
                                                                        switch (i15) {
                                                                            case 34:
                                                                                if (this.f23984strictfp == 36) {
                                                                                    m28158return(33);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 35:
                                                                                if (this.f23984strictfp == 35) {
                                                                                    m28158return(33);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 36:
                                                                                if (this.f23984strictfp == 61 && i11 > 143) {
                                                                                    i11 = 143;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            default:
                                                                                switch (i15) {
                                                                                    case 38:
                                                                                        if ((j2 & 4294977024L) != 0) {
                                                                                            if (i11 > 152) {
                                                                                                i11 = 152;
                                                                                            }
                                                                                            m28158return(38);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 39:
                                                                                        if (this.f23984strictfp == 47) {
                                                                                            m28150import(412, 413);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 40:
                                                                                        if (this.f23984strictfp == 62 && i11 > 149) {
                                                                                            i11 = 149;
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    default:
                                                                                        switch (i15) {
                                                                                            case 42:
                                                                                                if (this.f23984strictfp == 45) {
                                                                                                    m28150import(410, 411);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 43:
                                                                                                int i25 = this.f23984strictfp;
                                                                                                if (i25 != 38) {
                                                                                                    if (i25 == 62 && i11 > 119) {
                                                                                                        i11 = 119;
                                                                                                        break;
                                                                                                    }
                                                                                                } else {
                                                                                                    int i26 = this.f23982return;
                                                                                                    this.f23982return = i26 + 1;
                                                                                                    iArr[i26] = 46;
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 44:
                                                                                                if (this.f23984strictfp == 59 && i11 > 119) {
                                                                                                }
                                                                                                break;
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                            case 24:
                                                                if (this.f23984strictfp == 38 && i11 > 127) {
                                                                }
                                                                break;
                                                        }
                                                }
                                        }
                                    } else if (this.f23984strictfp == 59 && i11 > 115) {
                                    }
                                } else if (this.f23984strictfp == 38) {
                                    m28150import(TypedValues.Cycle.TYPE_VISIBILITY, 407);
                                }
                            } else if (this.f23984strictfp == 36) {
                                if (i11 > 142) {
                                    i11 = 142;
                                }
                                m28162switch(29, 30);
                            }
                        } else if ((j2 & (-17179869185L)) != 0) {
                            m28159static(417, 419);
                        }
                        if (i12 == i10) {
                            i8 = 1;
                        }
                    } else {
                        if ((j2 & 287948901175001088L) != 0) {
                            if (i11 > 97) {
                                i11 = 97;
                            }
                            m28159static(399, 401);
                        } else if ((j2 & 4294977024L) != 0) {
                            if (i11 > 152) {
                                i11 = 152;
                            }
                            m28158return(38);
                        } else {
                            int i27 = this.f23984strictfp;
                            if (i27 == 38) {
                                m28150import(TypedValues.Cycle.TYPE_VISIBILITY, 407);
                            } else if (i27 == 46) {
                                m28150import(408, l80.f3561break);
                            } else if (i27 == 45) {
                                m28150import(410, 411);
                            } else if (i27 == 47) {
                                m28150import(412, 413);
                            } else if (i27 == 35 || i27 == 36) {
                                m28158return(33);
                            } else if (i27 == 60) {
                                m28158return(22);
                            } else if (i27 == 39) {
                                m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                            } else if (i27 == 34) {
                                m28159static(417, 419);
                            }
                        }
                        int i28 = this.f23984strictfp;
                        if (i28 == 36) {
                            if (i11 > 142) {
                                i11 = 142;
                            }
                            m28162switch(29, 30);
                        } else if (i28 == 38) {
                            if (i11 > 127) {
                            }
                        } else if (i28 == 60 && i11 > 115) {
                        }
                        if (i12 == i10) {
                        }
                    }
                }
            } else if (i14 < 128) {
                long j3 = 1 << (i14 & 63);
                do {
                    int[] iArr2 = this.f23972finally;
                    i12--;
                    switch (iArr2[i12]) {
                        case 0:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i11 > 142) {
                                    i11 = 142;
                                }
                                m28162switch(29, 30);
                            } else {
                                int i29 = this.f23984strictfp;
                                if (i29 == 92) {
                                    m28150import(TypedValues.Cycle.TYPE_EASING, TypedValues.Cycle.TYPE_WAVE_OFFSET);
                                } else if (i29 == 91) {
                                    int i30 = this.f23982return;
                                    this.f23982return = i30 + 1;
                                    iArr2[i30] = 36;
                                } else if (i29 == 124) {
                                    int i31 = this.f23982return;
                                    this.f23982return = i31 + 1;
                                    iArr2[i31] = 26;
                                }
                            }
                            int i32 = this.f23984strictfp;
                            if (i32 != 103) {
                                if (i32 != 108) {
                                    if (i32 != 92) {
                                        if (i32 != 124) {
                                            if (i32 != 114) {
                                                break;
                                            } else {
                                                m28150import(373, 374);
                                                break;
                                            }
                                        } else if (i11 <= 128) {
                                            break;
                                        } else {
                                            i11 = 128;
                                            break;
                                        }
                                    } else {
                                        m28158return(31);
                                        break;
                                    }
                                } else {
                                    m28162switch(59, 61);
                                    break;
                                }
                            } else {
                                m28162switch(66, 99);
                                break;
                            }
                        case 1:
                            if ((j3 & (-268435457)) != 0) {
                                m28159static(417, 419);
                            }
                            break;
                        case 2:
                            if (this.f23984strictfp == 92) {
                                m28150import(TypedValues.Cycle.TYPE_WAVE_PHASE, 426);
                            }
                            break;
                        case 3:
                            if (this.f23984strictfp == 120) {
                                int i33 = this.f23982return;
                                this.f23982return = i33 + 1;
                                iArr2[i33] = 4;
                            }
                            break;
                        case 4:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(417, 419);
                            }
                            break;
                        case 6:
                            if ((j3 & 582179063439818752L) != 0) {
                                m28159static(417, 419);
                            }
                            break;
                        case 8:
                            if ((j3 & (-268435457)) != 0) {
                                m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                            }
                            break;
                        case 9:
                            if (this.f23984strictfp == 92) {
                                m28150import(427, 428);
                            }
                            break;
                        case 10:
                            if (this.f23984strictfp == 120) {
                                int i34 = this.f23982return;
                                this.f23982return = i34 + 1;
                                iArr2[i34] = 11;
                            }
                            break;
                        case 11:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                            }
                            break;
                        case 13:
                            if ((j3 & 582179063439818752L) != 0) {
                                m28159static(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                            }
                            break;
                        case 14:
                            if (this.f23984strictfp == 114) {
                                m28150import(373, 374);
                            }
                            break;
                        case 16:
                            m28150import(l80.f3564class, 430);
                            break;
                        case 19:
                            m28150import(431, 432);
                            break;
                        case 25:
                        case 26:
                            if (this.f23984strictfp == 124 && i11 > 128) {
                                i11 = 128;
                            }
                            break;
                        case 27:
                            if (this.f23984strictfp == 124) {
                                int i35 = this.f23982return;
                                this.f23982return = i35 + 1;
                                iArr2[i35] = 26;
                            }
                            break;
                        case 28:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i11 > 142) {
                                    i11 = 142;
                                }
                                m28162switch(29, 30);
                            }
                            break;
                        case 29:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i11 > 142) {
                                    i5 = 30;
                                    i4 = 142;
                                } else {
                                    i4 = i11;
                                    i5 = 30;
                                }
                                m28162switch(29, i5);
                                i11 = i4;
                            }
                            break;
                        case 30:
                            if (this.f23984strictfp == 92) {
                                m28158return(31);
                            }
                            break;
                        case 32:
                            if (this.f23984strictfp == 92) {
                                m28158return(31);
                            }
                            break;
                        case 33:
                            if (this.f23984strictfp == 123 && i11 > 143) {
                                i11 = 143;
                            }
                            break;
                        case 37:
                            if (this.f23984strictfp == 91) {
                                int i36 = this.f23982return;
                                this.f23982return = i36 + 1;
                                iArr2[i36] = 36;
                            }
                            break;
                        case 40:
                            if (this.f23984strictfp == 93 && i11 > 149) {
                                i11 = 149;
                            }
                            break;
                        case 45:
                            if (this.f23984strictfp == 116) {
                                int i37 = this.f23982return;
                                this.f23982return = i37 + 1;
                                iArr2[i37] = 44;
                            }
                            break;
                        case 46:
                            if (this.f23984strictfp == 103) {
                                int i38 = this.f23982return;
                                this.f23982return = i38 + 1;
                                iArr2[i38] = 45;
                            }
                            break;
                        case 58:
                            if (this.f23984strictfp == 108) {
                                m28162switch(59, 61);
                            }
                            break;
                        case 59:
                            if (this.f23984strictfp == 116 && i11 > 115) {
                                i11 = 115;
                            }
                            break;
                        case 60:
                            if (this.f23984strictfp == 101 && i11 > 116) {
                                i11 = 116;
                            }
                            break;
                        case 61:
                        case 64:
                            if (this.f23984strictfp == 116) {
                                m28158return(60);
                            }
                            break;
                        case 62:
                            if (this.f23984strictfp == 92) {
                                m28150import(TypedValues.Cycle.TYPE_EASING, TypedValues.Cycle.TYPE_WAVE_OFFSET);
                            }
                            break;
                        case 63:
                            if (this.f23984strictfp == 108) {
                                m28158return(59);
                            }
                            break;
                        case 65:
                            if (this.f23984strictfp == 108) {
                                int i39 = this.f23982return;
                                this.f23982return = i39 + 1;
                                iArr2[i39] = 64;
                            }
                            break;
                        case 66:
                            if (this.f23984strictfp == 116 && i11 > 117) {
                                i11 = 117;
                            }
                            break;
                        case 67:
                            if (this.f23984strictfp == 103) {
                                m28158return(66);
                            }
                            break;
                        case 68:
                            if (this.f23984strictfp == 101 && i11 > 118) {
                                i11 = 118;
                            }
                            break;
                        case 69:
                        case 99:
                            if (this.f23984strictfp == 116) {
                                m28158return(68);
                            }
                            break;
                        case 70:
                            if (this.f23984strictfp == 103) {
                                int i40 = this.f23982return;
                                this.f23982return = i40 + 1;
                                iArr2[i40] = 69;
                            }
                            break;
                        case 71:
                            if (this.f23984strictfp == 100 && i11 > 127) {
                                i11 = 127;
                            }
                            break;
                        case 72:
                            if (this.f23984strictfp == 110) {
                                int i41 = this.f23982return;
                                this.f23982return = i41 + 1;
                                iArr2[i41] = 71;
                            }
                            break;
                        case 73:
                            if (this.f23984strictfp == 97) {
                                int i42 = this.f23982return;
                                this.f23982return = i42 + 1;
                                iArr2[i42] = 72;
                            }
                            break;
                        case 76:
                            if (this.f23984strictfp == 116) {
                                int i43 = this.f23982return;
                                this.f23982return = i43 + 1;
                                iArr2[i43] = 75;
                            }
                            break;
                        case 77:
                            if (this.f23984strictfp == 108) {
                                int i44 = this.f23982return;
                                this.f23982return = i44 + 1;
                                iArr2[i44] = 76;
                            }
                            break;
                        case 79:
                            if (this.f23984strictfp == 116) {
                                int i45 = this.f23982return;
                                this.f23982return = i45 + 1;
                                iArr2[i45] = 78;
                            }
                            break;
                        case 80:
                            if (this.f23984strictfp == 108) {
                                int i46 = this.f23982return;
                                this.f23982return = i46 + 1;
                                iArr2[i46] = 79;
                            }
                            break;
                        case 82:
                            if (this.f23984strictfp == 116) {
                                int i47 = this.f23982return;
                                this.f23982return = i47 + 1;
                                iArr2[i47] = 81;
                            }
                            break;
                        case 83:
                            if (this.f23984strictfp == 103) {
                                int i48 = this.f23982return;
                                this.f23982return = i48 + 1;
                                iArr2[i48] = 82;
                            }
                            break;
                        case 86:
                            if (this.f23984strictfp == 116) {
                                int i49 = this.f23982return;
                                this.f23982return = i49 + 1;
                                iArr2[i49] = 85;
                            }
                            break;
                        case 87:
                            if (this.f23984strictfp == 103) {
                                int i50 = this.f23982return;
                                this.f23982return = i50 + 1;
                                iArr2[i50] = 86;
                            }
                            break;
                        case 90:
                            if (this.f23984strictfp == 112) {
                                int i51 = this.f23982return;
                                this.f23982return = i51 + 1;
                                iArr2[i51] = 89;
                            }
                            break;
                        case 91:
                            if (this.f23984strictfp == 109) {
                                int i52 = this.f23982return;
                                this.f23982return = i52 + 1;
                                iArr2[i52] = 90;
                            }
                            break;
                        case 92:
                            if (this.f23984strictfp == 97) {
                                int i53 = this.f23982return;
                                this.f23982return = i53 + 1;
                                iArr2[i53] = 91;
                            }
                            break;
                        case 95:
                            if (this.f23984strictfp == 112) {
                                int i54 = this.f23982return;
                                this.f23982return = i54 + 1;
                                iArr2[i54] = 94;
                            }
                            break;
                        case 96:
                            if (this.f23984strictfp == 109) {
                                int i55 = this.f23982return;
                                this.f23982return = i55 + 1;
                                iArr2[i55] = 95;
                            }
                            break;
                        case 97:
                            if (this.f23984strictfp == 97) {
                                int i56 = this.f23982return;
                                this.f23982return = i56 + 1;
                                iArr2[i56] = 96;
                            }
                            break;
                        case 98:
                            if (this.f23984strictfp == 103) {
                                m28162switch(66, 99);
                            }
                            break;
                        case 100:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i11 > 142) {
                                    i6 = 30;
                                    i11 = 142;
                                } else {
                                    i6 = 30;
                                }
                                m28162switch(29, i6);
                            } else if (this.f23984strictfp == 92) {
                                m28158return(31);
                            }
                            break;
                    }
                } while (i12 != i10);
            } else {
                int i57 = i14 >> 8;
                int i58 = i57 >> 6;
                long j4 = 1 << (i57 & 63);
                int i59 = (i14 & 255) >> 6;
                long j5 = 1 << (i14 & 63);
                do {
                    i12--;
                    int i60 = this.f23972finally[i12];
                    if (i60 != 0) {
                        if (i60 != 1) {
                            if (i60 != 8) {
                                if (i60 != 16) {
                                    if (i60 != 19) {
                                        if (i60 == 29 || i60 == 100) {
                                            if (m28157public(i57, i58, i59, j4, j5)) {
                                                if (i11 > 142) {
                                                    i11 = 142;
                                                }
                                                m28162switch(29, 30);
                                            }
                                        } else if (i58 != 0) {
                                            int i61 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                                        }
                                    } else if (m28153native(i57, i58, i59, j4, j5)) {
                                        m28150import(431, 432);
                                    }
                                } else if (m28153native(i57, i58, i59, j4, j5)) {
                                    m28150import(l80.f3564class, 430);
                                }
                            } else if (m28153native(i57, i58, i59, j4, j5)) {
                                m28150import(414, TypedValues.Cycle.TYPE_PATH_ROTATE);
                            }
                        } else if (m28153native(i57, i58, i59, j4, j5)) {
                            m28150import(417, 419);
                        }
                    } else if (m28157public(i57, i58, i59, j4, j5)) {
                        if (i11 > 142) {
                            i11 = 142;
                        }
                        m28162switch(29, 30);
                    }
                } while (i12 != i10);
            }
            if (i11 != Integer.MAX_VALUE) {
                this.f23989throws = i11;
                this.f23986switch = i9;
                i11 = Integer.MAX_VALUE;
            }
            i9++;
            i12 = this.f23982return;
            this.f23982return = i10;
            i10 = 100 - i10;
            if (i12 == i10) {
                return i9;
            }
            try {
                this.f23984strictfp = this.f23967default.m28301finally();
                i8 = 1;
            } catch (IOException unused) {
                return i9;
            }
        }
    }

    private int d(long j2, long j3) {
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '+') {
                    if (cM28301finally != '-') {
                        if (cM28301finally == '.') {
                            if ((68719476736L & j2) != 0) {
                                this.f23989throws = 100;
                                this.f23986switch = 1;
                            }
                            return h(j2, 1152921779484753920L, j3, 0L);
                        }
                        if (cM28301finally != '=') {
                            if (cM28301finally != '?') {
                                if (cM28301finally == 'a') {
                                    return h(j2, 2147483648L, j3, 0L);
                                }
                                if (cM28301finally != 'n') {
                                    if (cM28301finally == 'r') {
                                        return h(j2, o3.f24027catch, j3, 0L);
                                    }
                                    if (cM28301finally == 's') {
                                        return (4096 & j3) != 0 ? t(1, 140, 104) : h(j2, 0L, j3, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                                    }
                                } else if ((PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH & j3) != 0) {
                                    return t(1, 139, 104);
                                }
                            } else if ((1099511627776L & j2) != 0) {
                                return F(1, 104);
                            }
                        } else {
                            if ((4398046511104L & j2) != 0) {
                                return F(1, 106);
                            }
                            if ((8796093022208L & j2) != 0) {
                                return F(1, 107);
                            }
                            if ((17592186044416L & j2) != 0) {
                                return F(1, 108);
                            }
                            if ((35184372088832L & j2) != 0) {
                                return F(1, 109);
                            }
                            if ((70368744177664L & j2) != 0) {
                                return F(1, 110);
                            }
                            if ((140737488355328L & j2) != 0) {
                                return F(1, 111);
                            }
                            if ((281474976710656L & j2) != 0) {
                                return F(1, 112);
                            }
                        }
                    } else if ((1125899906842624L & j2) != 0) {
                        return F(1, 114);
                    }
                } else if ((562949953421312L & j2) != 0) {
                    return F(1, 113);
                }
            } else if ((576460752303423488L & j2) != 0) {
                return F(1, 123);
            }
            return A(0, 0L, j2, j3);
        } catch (IOException unused) {
            I(0, 0L, j2, j3);
            return 1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:1208:0x1151  */
    /* JADX WARN: Removed duplicated region for block: B:1568:0x1818 A[PHI: r4
      0x1818: PHI (r4v7 int) = 
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v53 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v54 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v55 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v56 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v57 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v62 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v63 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v64 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v65 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v66 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v67 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v6 int)
      (r4v69 int)
     binds: [B:1258:0x120c, B:1592:0x1896, B:1589:0x1885, B:1585:0x1872, B:1586:0x1874, B:1582:0x1863, B:1583:0x1865, B:1579:0x1852, B:1580:0x1854, B:1576:0x1841, B:1577:0x1843, B:1573:0x1832, B:1574:0x1834, B:1570:0x181e, B:1571:0x1820, B:1564:0x180e, B:1566:0x1812, B:1567:0x1814, B:1561:0x17ff, B:1562:0x1801, B:1558:0x17ee, B:1559:0x17f0, B:1556:0x17df, B:1552:0x17cc, B:1553:0x17ce, B:1549:0x17bb, B:1550:0x17bd, B:1546:0x17aa, B:1547:0x17ac, B:1543:0x1798, B:1544:0x179a, B:1540:0x1788, B:1541:0x178a, B:1537:0x1776, B:1538:0x1778, B:1534:0x1764, B:1535:0x1766, B:1531:0x1752, B:1532:0x1754, B:1528:0x173d, B:1529:0x173f, B:1523:0x172f, B:1525:0x1733, B:1526:0x1735, B:1520:0x171f, B:1521:0x1721, B:1517:0x170f, B:1518:0x1711, B:1514:0x16ff, B:1515:0x1701, B:1511:0x16ed, B:1512:0x16ef, B:1508:0x16de, B:1509:0x16e0, B:1505:0x16d1, B:1506:0x16d3, B:1502:0x16c2, B:1503:0x16c4, B:1497:0x16b4, B:1499:0x16b8, B:1500:0x16ba, B:1494:0x16a4, B:1495:0x16a6, B:1491:0x1694, B:1492:0x1696, B:1488:0x1682, B:1489:0x1684, B:1485:0x1672, B:1486:0x1674, B:1482:0x1660, B:1483:0x1662, B:1479:0x1653, B:1480:0x1655, B:1476:0x1641, B:1477:0x1643, B:1473:0x162f, B:1474:0x1631, B:1470:0x161f, B:1471:0x1621, B:1467:0x160d, B:1468:0x160f, B:1464:0x15fb, B:1465:0x15fd, B:1461:0x15ee, B:1462:0x15f0, B:1456:0x15e0, B:1458:0x15e4, B:1459:0x15e6, B:1453:0x15d0, B:1454:0x15d2, B:1450:0x15c0, B:1451:0x15c2, B:1448:0x15b0, B:1444:0x159c, B:1445:0x159e, B:1441:0x158a, B:1442:0x158c, B:1438:0x1578, B:1439:0x157a, B:1435:0x1566, B:1436:0x1568, B:1432:0x1559, B:1433:0x155b, B:1427:0x1549, B:1429:0x154d, B:1430:0x154f, B:1425:0x153b, B:1421:0x1527, B:1422:0x1529, B:1418:0x1515, B:1419:0x1517, B:1415:0x1505, B:1416:0x1507, B:1412:0x14f5, B:1413:0x14f7, B:1409:0x14e5, B:1410:0x14e7, B:1407:0x14d5, B:1403:0x14c1, B:1404:0x14c3, B:1400:0x14b4, B:1401:0x14b6, B:1395:0x14a4, B:1397:0x14a8, B:1398:0x14aa, B:1392:0x1494, B:1393:0x1496, B:1389:0x1484, B:1390:0x1486, B:1386:0x1474, B:1387:0x1476, B:1383:0x1462, B:1384:0x1464, B:1380:0x1450, B:1381:0x1452, B:1377:0x1443, B:1378:0x1445, B:1372:0x1433, B:1374:0x1437, B:1375:0x1439, B:1369:0x1423, B:1370:0x1425, B:1366:0x1411, B:1367:0x1413, B:1363:0x13ff, B:1364:0x1401, B:1360:0x13ef, B:1361:0x13f1, B:1357:0x13df, B:1358:0x13e1, B:1354:0x13cd, B:1355:0x13cf, B:1351:0x13bb, B:1352:0x13bd, B:1348:0x13a6, B:1349:0x13a8, B:1343:0x1396, B:1345:0x139a, B:1346:0x139c, B:1340:0x1386, B:1341:0x1388, B:1337:0x1374, B:1338:0x1376, B:1334:0x1362, B:1335:0x1364, B:1331:0x1352, B:1332:0x1354, B:1328:0x1342, B:1329:0x1344, B:1323:0x1334, B:1325:0x1338, B:1326:0x133a, B:1320:0x1322, B:1321:0x1324, B:1317:0x1317, B:1318:0x1319, B:1314:0x1307, B:1315:0x1309, B:1311:0x12fa, B:1312:0x12fc, B:1306:0x12ec, B:1308:0x12f0, B:1309:0x12f2, B:1303:0x12e1, B:1304:0x12e3, B:1300:0x12d1, B:1301:0x12d3, B:1293:0x12b9, B:1298:0x12c3, B:1290:0x12a4, B:1291:0x12a6, B:1287:0x1292, B:1288:0x1294, B:1284:0x1282, B:1285:0x1284, B:1281:0x1276, B:1282:0x1278, B:1278:0x1267, B:1279:0x1269, B:1275:0x1258, B:1276:0x125a, B:1272:0x1245, B:1273:0x1247, B:1269:0x1236, B:1270:0x1238, B:1266:0x1223, B:1267:0x1225, B:1261:0x1213, B:1263:0x1217, B:1264:0x1219] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:2860:0x3622  */
    /* JADX WARN: Removed duplicated region for block: B:2867:0x3637 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:2869:0x3636 A[SYNTHETIC] */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28144default(int i2, int i3) {
        this.f23982return = 713;
        this.f23972finally[0] = i2;
        int i4 = 1;
        int i5 = i3;
        int i6 = 0;
        int i7 = Integer.MAX_VALUE;
        int i8 = 1;
        while (true) {
            int i9 = this.f23983static + i4;
            this.f23983static = i9;
            if (i9 == Integer.MAX_VALUE) {
                m28148for();
            }
            int i10 = this.f23984strictfp;
            long j2 = 0;
            if (i10 < 64) {
                long j3 = 1 << i10;
                while (true) {
                    int[] iArr = this.f23972finally;
                    i8--;
                    int i11 = iArr[i8];
                    if (i11 != 0) {
                        if (i11 != i4) {
                            if (i11 != 2) {
                                if (i11 == 3) {
                                    if (this.f23984strictfp == 60) {
                                        m28159static(101, 147);
                                    }
                                } else if (i11 != 5) {
                                    if (i11 != 6) {
                                        if (i11 != 14) {
                                            if (i11 != 15) {
                                                if (i11 != 47) {
                                                    if (i11 != 48) {
                                                        if (i11 != 178) {
                                                            if (i11 != 179) {
                                                                if (i11 != 187) {
                                                                    if (i11 != 188) {
                                                                        if (i11 != 201) {
                                                                            if (i11 != 202) {
                                                                                if (i11 != 211) {
                                                                                    if (i11 != 212) {
                                                                                        if (i11 != 222) {
                                                                                            if (i11 != 223) {
                                                                                                switch (i11) {
                                                                                                    case 3:
                                                                                                        break;
                                                                                                    case 23:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 8) {
                                                                                                            i7 = 8;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 28:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 9) {
                                                                                                            i7 = 9;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 33:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 10) {
                                                                                                            i7 = 10;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 38:
                                                                                                        if ((j3 & 4294977024L) != j2) {
                                                                                                            m28150import(152, 153);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 40:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 11) {
                                                                                                            i7 = 11;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 54:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 13) {
                                                                                                            i7 = 13;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 60:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 14) {
                                                                                                            i7 = 14;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 67:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 15) {
                                                                                                            i7 = 15;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 72:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 16) {
                                                                                                            i7 = 16;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 79:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 17) {
                                                                                                            i7 = 17;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 86:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 18) {
                                                                                                            i7 = 18;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 92:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 19) {
                                                                                                            i7 = 19;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 100:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 20) {
                                                                                                            i7 = 20;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 107:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 21) {
                                                                                                            i7 = 21;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 116:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 22) {
                                                                                                            i7 = 22;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 122:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 23) {
                                                                                                            i7 = 23;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 132:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 24) {
                                                                                                            i7 = 24;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 138:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 25) {
                                                                                                            i7 = 25;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 143:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 26) {
                                                                                                            i7 = 26;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 150:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 27) {
                                                                                                            i7 = 27;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 155:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 28) {
                                                                                                            i7 = 28;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 165:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 29) {
                                                                                                            i7 = 29;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 236:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(169, 171);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 237:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(238);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 238:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 55) {
                                                                                                            i7 = 55;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 244:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(172, 174);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 245:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(246);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 246:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 56) {
                                                                                                            i7 = 56;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 255:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(175, 177);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 256:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(257);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 257:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 57) {
                                                                                                            i7 = 57;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 264:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(178, 180);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 265:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(266);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 266:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 58) {
                                                                                                            i7 = 58;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 271:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(181, 183);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 272:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(273);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 273:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 59) {
                                                                                                            i7 = 59;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 279:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(184, 186);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 280:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(281);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 281:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 60) {
                                                                                                            i7 = 60;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 283:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(187, 189);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 284:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(Creturn.f24112class);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case Creturn.f24112class /* 285 */:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 61) {
                                                                                                            i7 = 61;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 288:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(190, 192);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 289:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(290);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 290:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 62) {
                                                                                                            i7 = 62;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 293:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(193, 195);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 294:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(295);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 295:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 63) {
                                                                                                            i7 = 63;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 298:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(196, 197);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 299:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 64) {
                                                                                                            i7 = 64;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 307:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(198, 200);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 308:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(309);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 309:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 65) {
                                                                                                            i7 = 65;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 316:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 66) {
                                                                                                            i7 = 66;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 323:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(201, 203);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 324:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(325);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 325:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 67) {
                                                                                                            i7 = 67;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 333:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 68) {
                                                                                                            i7 = 68;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 341:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28159static(204, 206);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 342:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(343);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 343:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 69) {
                                                                                                            i7 = 69;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 352:
                                                                                                        if ((j3 & 4294977024L) != j2 && i7 > 70) {
                                                                                                            i7 = 70;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 361:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(207, 208);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 362:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 72) {
                                                                                                            i7 = 72;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 368:
                                                                                                        if (this.f23984strictfp == 60) {
                                                                                                            m28159static(9, 100);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 369:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(12);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 370:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(21);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 371:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(24);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 372:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(31);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 373:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(36);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 374:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(45);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 375:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(50);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 376:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(58);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 377:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(65);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 378:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(70);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 379:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(77);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 380:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(84);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 381:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(90);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 382:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(98);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 383:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(105);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 384:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(114);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 385:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(120);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 386:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(130);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 387:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(136);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 388:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(141);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 389:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(148);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 390:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(153);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 391:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(161);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 392:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(174);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 393:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(183);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 394:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(199);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 395:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(209);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 396:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(218);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 397:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(227);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 398:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(TypedValues.Cycle.TYPE_VISIBILITY);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 400:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(209, oc.f4541try);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 401:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 36) {
                                                                                                            i7 = 36;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 403:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(TypedValues.Cycle.TYPE_VISIBILITY);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case l80.f3570goto /* 404 */:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(403);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case l80.f3574this /* 405 */:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(411);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 407:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(org.bouncycastle.math.Cdo.f31781do, 212);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 408:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 37) {
                                                                                                            i7 = 37;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 412:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(411);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 413:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(412);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 414:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(421);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Cycle.TYPE_PATH_ROTATE /* 416 */:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(213, 214);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 417:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 38) {
                                                                                                            i7 = 38;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 422:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(421);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Cycle.TYPE_WAVE_PERIOD /* 423 */:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(422);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Cycle.TYPE_WAVE_OFFSET /* 424 */:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(l80.f3564class);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 426:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(215, 216);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 427:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 39) {
                                                                                                            i7 = 39;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 430:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(l80.f3564class);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 431:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(430);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 432:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(441);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 434:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(217, 218);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 435:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 40) {
                                                                                                            i7 = 40;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 442:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(441);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 443:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(442);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 444:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(453);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 446:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(219, FragmentManagerImpl.ANIM_DUR);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 447:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 41) {
                                                                                                            i7 = 41;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 454:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(453);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 455:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(454);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 456:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(465);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 460:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(221, 222);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 461:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 42) {
                                                                                                            i7 = 42;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 466:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(465);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 467:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(466);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 468:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(475);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 470:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(223, 224);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 471:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 43) {
                                                                                                            i7 = 43;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 476:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(475);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 477:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(476);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 478:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(486);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 480:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(225, 226);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 481:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 44) {
                                                                                                            i7 = 44;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 487:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(486);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 488:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(487);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 489:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(497);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 491:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(227, 228);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 492:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 45) {
                                                                                                            i7 = 45;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 498:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(497);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 499:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(498);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 500:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(TypedValues.Position.TYPE_POSITION_TYPE);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 502:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(229, 230);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 503:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 46) {
                                                                                                            i7 = 46;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 511:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(TypedValues.Position.TYPE_POSITION_TYPE);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 512:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(511);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case InputDeviceCompat.SOURCE_DPAD /* 513 */:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(520);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 515:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(231, 232);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 516:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 47) {
                                                                                                            i7 = 47;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 521:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(520);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 522:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(521);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 523:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(537);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 527:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(233, 234);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 528:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 48) {
                                                                                                            i7 = 48;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 538:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(537);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 539:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(538);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 540:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(549);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 544:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(235, 236);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 545:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 49) {
                                                                                                            i7 = 49;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 550:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(549);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 551:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(550);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 552:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(568);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 556:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(237, 238);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 557:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 50) {
                                                                                                            i7 = 50;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 569:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(568);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 570:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(569);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 571:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(581);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 573:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(239, MountainSceneView.f20267finally);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 574:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 51) {
                                                                                                            i7 = 51;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 582:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(581);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 583:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(582);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 584:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(595);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 586:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(241, 242);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 587:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 52) {
                                                                                                            i7 = 52;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 596:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(595);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 597:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(596);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 598:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(TypedValues.Motion.TYPE_ANIMATE_CIRCLEANGLE_TO);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 600:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(243, 244);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 601:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 53) {
                                                                                                            i7 = 53;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Motion.TYPE_PATHMOTION_ARC /* 607 */:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(TypedValues.Motion.TYPE_ANIMATE_CIRCLEANGLE_TO);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Motion.TYPE_DRAW_PATH /* 608 */:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(TypedValues.Motion.TYPE_PATHMOTION_ARC);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 609:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(234);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS /* 610 */:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(242);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_TYPE /* 611 */:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(253);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_ID /* 612 */:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(262);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 613:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(269);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 614:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(277);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 615:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(278);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 616:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(286);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 617:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(291);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 618:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(296);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 619:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(305);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 620:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(314);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 621:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(321);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 622:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(331);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 623:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(339);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 624:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(350);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 625:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(357);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 626:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(634);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 628:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(245, 246);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 629:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 71) {
                                                                                                            i7 = 71;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 635:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(634);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 636:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(635);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 637:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(367);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 638:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(648);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 642:
                                                                                                        if ((j3 & 4294977024L) != 0) {
                                                                                                            m28150import(247, 248);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 643:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 73) {
                                                                                                            i7 = 73;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 649:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(648);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 650:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(649);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 653:
                                                                                                        if ((j3 & 4294977024L) != 0 && i7 > 76) {
                                                                                                            i7 = 76;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case Cdo.f28225import /* 656 */:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            int i12 = this.f23982return;
                                                                                                            this.f23982return = i12 + 1;
                                                                                                            iArr[i12] = 655;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 658:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            int i13 = this.f23982return;
                                                                                                            this.f23982return = i13 + 1;
                                                                                                            iArr[i13] = 659;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 659:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 77) {
                                                                                                            i7 = 77;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 662:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            int i14 = this.f23982return;
                                                                                                            this.f23982return = i14 + 1;
                                                                                                            iArr[i14] = 661;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 663:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            int i15 = this.f23982return;
                                                                                                            this.f23982return = i15 + 1;
                                                                                                            iArr[i15] = 664;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 665:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(663);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 667:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(403);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 668:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(412);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 669:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(422);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 670:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(430);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 671:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(442);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 672:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(454);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 673:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(466);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 674:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(476);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 675:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(487);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 676:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(498);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 677:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(511);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 678:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(521);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 679:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(538);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 680:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(550);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 681:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(569);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 682:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(582);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 683:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(596);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 684:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(TypedValues.Motion.TYPE_PATHMOTION_ARC);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 685:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(635);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 686:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(649);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 689:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            int i16 = this.f23982return;
                                                                                                            this.f23982return = i16 + 1;
                                                                                                            iArr[i16] = 688;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 692:
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            int i17 = this.f23982return;
                                                                                                            this.f23982return = i17 + 1;
                                                                                                            iArr[i17] = 691;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 693:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            m28158return(663);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 694:
                                                                                                        if (this.f23984strictfp == 60) {
                                                                                                            m28150import(7, 8);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 695:
                                                                                                        if (this.f23984strictfp == 45 && i7 > 34) {
                                                                                                            i7 = 34;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 696:
                                                                                                        if (this.f23984strictfp == 45) {
                                                                                                            int i18 = this.f23982return;
                                                                                                            this.f23982return = i18 + 1;
                                                                                                            iArr[i18] = 695;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 697:
                                                                                                        int i19 = this.f23984strictfp;
                                                                                                        if (i19 == 47) {
                                                                                                            m28158return(663);
                                                                                                        } else if (i19 == 35) {
                                                                                                            int i20 = this.f23982return;
                                                                                                            this.f23982return = i20 + 1;
                                                                                                            iArr[i20] = 664;
                                                                                                        }
                                                                                                        int i21 = this.f23984strictfp;
                                                                                                        if (i21 == 35) {
                                                                                                            int[] iArr2 = this.f23972finally;
                                                                                                            int i22 = this.f23982return;
                                                                                                            this.f23982return = i22 + 1;
                                                                                                            iArr2[i22] = 691;
                                                                                                        } else if (i21 == 47) {
                                                                                                            int[] iArr3 = this.f23972finally;
                                                                                                            int i23 = this.f23982return;
                                                                                                            this.f23982return = i23 + 1;
                                                                                                            iArr3[i23] = 698;
                                                                                                        }
                                                                                                        if (i21 == 35) {
                                                                                                            int[] iArr4 = this.f23972finally;
                                                                                                            int i24 = this.f23982return;
                                                                                                            this.f23982return = i24 + 1;
                                                                                                            iArr4[i24] = 688;
                                                                                                        } else if (i21 == 47) {
                                                                                                            m28158return(649);
                                                                                                        }
                                                                                                        int i25 = this.f23984strictfp;
                                                                                                        if (i25 == 35) {
                                                                                                            m28158return(367);
                                                                                                        } else if (i25 == 47) {
                                                                                                            m28158return(635);
                                                                                                        }
                                                                                                        int i26 = this.f23984strictfp;
                                                                                                        if (i26 == 35) {
                                                                                                            m28158return(357);
                                                                                                        } else if (i26 == 47) {
                                                                                                            m28158return(TypedValues.Motion.TYPE_PATHMOTION_ARC);
                                                                                                        }
                                                                                                        int i27 = this.f23984strictfp;
                                                                                                        if (i27 == 35) {
                                                                                                            m28158return(350);
                                                                                                        } else if (i27 == 47) {
                                                                                                            m28158return(596);
                                                                                                        }
                                                                                                        int i28 = this.f23984strictfp;
                                                                                                        if (i28 == 35) {
                                                                                                            m28158return(339);
                                                                                                        } else if (i28 == 47) {
                                                                                                            m28158return(582);
                                                                                                        }
                                                                                                        int i29 = this.f23984strictfp;
                                                                                                        if (i29 == 35) {
                                                                                                            m28158return(331);
                                                                                                        } else if (i29 == 47) {
                                                                                                            m28158return(569);
                                                                                                        }
                                                                                                        int i30 = this.f23984strictfp;
                                                                                                        if (i30 == 35) {
                                                                                                            m28158return(321);
                                                                                                        } else if (i30 == 47) {
                                                                                                            m28158return(550);
                                                                                                        }
                                                                                                        int i31 = this.f23984strictfp;
                                                                                                        if (i31 == 35) {
                                                                                                            m28158return(314);
                                                                                                        } else if (i31 == 47) {
                                                                                                            m28158return(538);
                                                                                                        }
                                                                                                        int i32 = this.f23984strictfp;
                                                                                                        if (i32 == 35) {
                                                                                                            m28158return(305);
                                                                                                        } else if (i32 == 47) {
                                                                                                            m28158return(521);
                                                                                                        }
                                                                                                        int i33 = this.f23984strictfp;
                                                                                                        if (i33 == 35) {
                                                                                                            m28158return(296);
                                                                                                        } else if (i33 == 47) {
                                                                                                            m28158return(511);
                                                                                                        }
                                                                                                        int i34 = this.f23984strictfp;
                                                                                                        if (i34 == 35) {
                                                                                                            m28158return(291);
                                                                                                        } else if (i34 == 47) {
                                                                                                            m28158return(498);
                                                                                                        }
                                                                                                        int i35 = this.f23984strictfp;
                                                                                                        if (i35 == 35) {
                                                                                                            m28158return(286);
                                                                                                        } else if (i35 == 47) {
                                                                                                            m28158return(487);
                                                                                                        }
                                                                                                        int i36 = this.f23984strictfp;
                                                                                                        if (i36 == 35) {
                                                                                                            m28158return(278);
                                                                                                        } else if (i36 == 47) {
                                                                                                            m28158return(476);
                                                                                                        }
                                                                                                        int i37 = this.f23984strictfp;
                                                                                                        if (i37 == 35) {
                                                                                                            m28158return(277);
                                                                                                        } else if (i37 == 47) {
                                                                                                            m28158return(466);
                                                                                                        }
                                                                                                        int i38 = this.f23984strictfp;
                                                                                                        if (i38 == 35) {
                                                                                                            m28158return(269);
                                                                                                        } else if (i38 == 47) {
                                                                                                            m28158return(454);
                                                                                                        }
                                                                                                        int i39 = this.f23984strictfp;
                                                                                                        if (i39 == 35) {
                                                                                                            m28158return(262);
                                                                                                        } else if (i39 == 47) {
                                                                                                            m28158return(442);
                                                                                                        }
                                                                                                        int i40 = this.f23984strictfp;
                                                                                                        if (i40 == 35) {
                                                                                                            m28158return(253);
                                                                                                        } else if (i40 == 47) {
                                                                                                            m28158return(430);
                                                                                                        }
                                                                                                        int i41 = this.f23984strictfp;
                                                                                                        if (i41 == 35) {
                                                                                                            m28158return(242);
                                                                                                        } else if (i41 == 47) {
                                                                                                            m28158return(422);
                                                                                                        }
                                                                                                        int i42 = this.f23984strictfp;
                                                                                                        if (i42 == 35) {
                                                                                                            m28158return(234);
                                                                                                        } else if (i42 == 47) {
                                                                                                            m28158return(412);
                                                                                                        }
                                                                                                        int i43 = this.f23984strictfp;
                                                                                                        if (i43 == 47) {
                                                                                                            m28158return(403);
                                                                                                        } else if (i43 == 35) {
                                                                                                            m28158return(227);
                                                                                                        }
                                                                                                        int i44 = this.f23984strictfp;
                                                                                                        if (i44 == 35) {
                                                                                                            int[] iArr5 = this.f23972finally;
                                                                                                            int i45 = this.f23982return;
                                                                                                            this.f23982return = i45 + 1;
                                                                                                            iArr5[i45] = 696;
                                                                                                        }
                                                                                                        if (i44 == 35) {
                                                                                                            m28158return(218);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(209);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(199);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(183);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(174);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(161);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(153);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(148);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(141);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(136);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(130);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(120);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(114);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(105);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(98);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(90);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(84);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(77);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(70);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(65);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(58);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(50);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(45);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(36);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(31);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(24);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(21);
                                                                                                        }
                                                                                                        if (this.f23984strictfp == 35) {
                                                                                                            m28158return(12);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 699:
                                                                                                        if (this.f23984strictfp == 36) {
                                                                                                            m28159static(249, 253);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Transition.TYPE_DURATION /* 700 */:
                                                                                                        if ((j3 & 287948969894477824L) != j2) {
                                                                                                            m28159static(249, 253);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Transition.TYPE_TO /* 702 */:
                                                                                                        if ((j3 & 288335929267978240L) != j2) {
                                                                                                            m28159static(249, 253);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 703:
                                                                                                        if (this.f23984strictfp == 46) {
                                                                                                            m28150import(wd.i2, 255);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 704:
                                                                                                        if (this.f23984strictfp == 36) {
                                                                                                            m28159static(256, 260);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Transition.TYPE_INTERPOLATOR /* 705 */:
                                                                                                        if ((j3 & 287948969894477824L) != j2) {
                                                                                                            m28159static(256, 260);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case TypedValues.Transition.TYPE_TRANSITION_FLAGS /* 707 */:
                                                                                                        if ((j3 & 288335929267978240L) != j2) {
                                                                                                            m28159static(256, 260);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 708:
                                                                                                        if ((j3 & 4294977024L) != j2) {
                                                                                                            m28162switch(708, 709);
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 709:
                                                                                                        if (this.f23984strictfp == 62 && i7 > 75) {
                                                                                                            i7 = 75;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    case 712:
                                                                                                        if (this.f23984strictfp == 47) {
                                                                                                            int i46 = this.f23982return;
                                                                                                            this.f23982return = i46 + 1;
                                                                                                            iArr[i46] = 698;
                                                                                                            break;
                                                                                                        }
                                                                                                        break;
                                                                                                    default:
                                                                                                        switch (i11) {
                                                                                                            case 229:
                                                                                                                if ((j3 & 4294977024L) != j2) {
                                                                                                                    m28159static(166, 168);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            case 230:
                                                                                                                if (this.f23984strictfp == 47) {
                                                                                                                    m28158return(231);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            case 231:
                                                                                                                if (this.f23984strictfp == 62 && i7 > 54) {
                                                                                                                    i7 = 54;
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                }
                                                                                            } else if (this.f23984strictfp == 62 && i7 > 35) {
                                                                                                i7 = 35;
                                                                                            }
                                                                                        } else if ((j3 & 4294977024L) != 0) {
                                                                                            m28150import(164, 165);
                                                                                        }
                                                                                    } else if (this.f23984strictfp == 62 && i7 > 33) {
                                                                                        i7 = 33;
                                                                                    }
                                                                                } else if ((j3 & 4294977024L) != 0) {
                                                                                    m28150import(162, 163);
                                                                                }
                                                                            } else if (this.f23984strictfp == 62 && i7 > 32) {
                                                                                i7 = 32;
                                                                            }
                                                                        } else if ((j3 & 4294977024L) != 0) {
                                                                            m28150import(160, 161);
                                                                        }
                                                                    } else if (this.f23984strictfp == 62 && i7 > 31) {
                                                                        i7 = 31;
                                                                    }
                                                                } else if ((j3 & 4294977024L) != 0) {
                                                                    m28150import(158, 159);
                                                                }
                                                            } else if (this.f23984strictfp == 62 && i7 > 30) {
                                                                i7 = 30;
                                                            }
                                                        } else if ((j3 & 4294977024L) != 0) {
                                                            m28150import(156, 157);
                                                        }
                                                    } else if (this.f23984strictfp == 62 && i7 > 12) {
                                                        i7 = 12;
                                                    }
                                                } else if ((j3 & 4294977024L) != 0) {
                                                    m28150import(154, 155);
                                                }
                                            } else if (this.f23984strictfp == 62 && i7 > 7) {
                                                i7 = 7;
                                            }
                                        } else if ((j3 & 4294977024L) != 0) {
                                            m28150import(150, 151);
                                        }
                                    } else if (this.f23984strictfp == 62 && i7 > 6) {
                                        i7 = 6;
                                    }
                                } else if ((j3 & 4294977024L) != 0) {
                                    m28150import(148, 149);
                                }
                                if (i7 != Integer.MAX_VALUE) {
                                    this.f23989throws = i7;
                                    this.f23986switch = i5;
                                    i7 = Integer.MAX_VALUE;
                                }
                                i5++;
                                i8 = this.f23982return;
                                this.f23982return = i6;
                                i6 = 713 - i6;
                                if (i8 == i6) {
                                    return i5;
                                }
                                try {
                                    this.f23984strictfp = this.f23967default.m28301finally();
                                    i4 = 1;
                                } catch (IOException unused) {
                                    return i5;
                                }
                            } else {
                                if ((j3 & (-1152921611981039105L)) != 0) {
                                    if (i7 > 80) {
                                        i7 = 80;
                                    }
                                    m28158return(1);
                                } else if ((j3 & 4294977024L) != 0) {
                                    if (i7 > 79) {
                                        i7 = 79;
                                    }
                                    m28158return(0);
                                } else if ((j3 & 1152921607686062080L) != 0 && i7 > 81) {
                                    i7 = 81;
                                }
                                if (this.f23984strictfp == 60) {
                                    m28150import(7, 8);
                                }
                                if (this.f23984strictfp == 60) {
                                    m28159static(9, 100);
                                }
                                if (this.f23984strictfp == 60) {
                                    m28159static(101, 147);
                                }
                            }
                        } else if ((j3 & (-1152921611981039105L)) != 0) {
                            if (i7 > 80) {
                                i7 = 80;
                            }
                            m28158return(1);
                        }
                    } else if ((j3 & 4294977024L) != j2) {
                        if (i7 > 79) {
                            i7 = 79;
                        }
                        m28158return(0);
                    }
                    if (i8 != i6) {
                        i4 = 1;
                        j2 = 0;
                    }
                }
            } else if (i10 < 128) {
                long j4 = 1 << (i10 & 63);
                do {
                    int[] iArr6 = this.f23972finally;
                    i8--;
                    switch (iArr6[i8]) {
                        case 1:
                            if (((-576460752437641217L) & j4) != 0) {
                                if (i7 > 80) {
                                    i7 = 80;
                                }
                                m28158return(1);
                                break;
                            }
                            break;
                        case 2:
                            if (((-576460752437641217L) & j4) != 0) {
                                if (i7 > 80) {
                                    i7 = 80;
                                }
                                m28158return(1);
                            } else if ((576460752437641216L & j4) != 0 && i7 > 81) {
                                i7 = 81;
                            }
                            if (this.f23984strictfp == 91) {
                                m28150import(7, 8);
                            }
                            if (this.f23984strictfp == 91) {
                                m28150import(261, 332);
                                break;
                            }
                            break;
                        case 4:
                            if (this.f23984strictfp == 116) {
                                m28150import(148, 149);
                                break;
                            }
                            break;
                        case 6:
                            if (this.f23984strictfp == 93 && i7 > 6) {
                                i7 = 6;
                                break;
                            }
                            break;
                        case 7:
                            if (this.f23984strictfp == 112) {
                                int i47 = this.f23982return;
                                this.f23982return = i47 + 1;
                                iArr6[i47] = 4;
                                break;
                            }
                            break;
                        case 8:
                            if (this.f23984strictfp == 109) {
                                int i48 = this.f23982return;
                                this.f23982return = i48 + 1;
                                iArr6[i48] = 7;
                                break;
                            }
                            break;
                        case 9:
                            if (this.f23984strictfp == 101) {
                                int i49 = this.f23982return;
                                this.f23982return = i49 + 1;
                                iArr6[i49] = 8;
                                break;
                            }
                            break;
                        case 10:
                            if (this.f23984strictfp == 116) {
                                int i50 = this.f23982return;
                                this.f23982return = i50 + 1;
                                iArr6[i50] = 9;
                            }
                            break;
                        case 11:
                            if (this.f23984strictfp == 116) {
                                int i51 = this.f23982return;
                                this.f23982return = i51 + 1;
                                iArr6[i51] = 10;
                            }
                            break;
                        case 12:
                            if (this.f23984strictfp == 97) {
                                int i52 = this.f23982return;
                                this.f23982return = i52 + 1;
                                iArr6[i52] = 11;
                            }
                            break;
                        case 13:
                            if (this.f23984strictfp == 114) {
                                m28150import(150, 151);
                            }
                            break;
                        case 15:
                            if (this.f23984strictfp == 93 && i7 > 7) {
                                i7 = 7;
                            }
                            break;
                        case 16:
                            if (this.f23984strictfp == 101) {
                                int i53 = this.f23982return;
                                this.f23982return = i53 + 1;
                                iArr6[i53] = 13;
                            }
                            break;
                        case 17:
                            if (this.f23984strictfp == 118) {
                                int i54 = this.f23982return;
                                this.f23982return = i54 + 1;
                                iArr6[i54] = 16;
                            }
                            break;
                        case 18:
                            if (this.f23984strictfp == 111) {
                                int i55 = this.f23982return;
                                this.f23982return = i55 + 1;
                                iArr6[i55] = 17;
                            }
                            break;
                        case 19:
                            if (this.f23984strictfp == 99) {
                                int i56 = this.f23982return;
                                this.f23982return = i56 + 1;
                                iArr6[i56] = 18;
                            }
                            break;
                        case 20:
                            if (this.f23984strictfp == 101) {
                                int i57 = this.f23982return;
                                this.f23982return = i57 + 1;
                                iArr6[i57] = 19;
                            }
                            break;
                        case 21:
                            if (this.f23984strictfp == 114) {
                                int i58 = this.f23982return;
                                this.f23982return = i58 + 1;
                                iArr6[i58] = 20;
                            }
                            break;
                        case 22:
                            if (this.f23984strictfp == 102) {
                                int i59 = this.f23982return;
                                this.f23982return = i59 + 1;
                                iArr6[i59] = 23;
                            }
                            break;
                        case 24:
                            if (this.f23984strictfp == 105) {
                                int i60 = this.f23982return;
                                this.f23982return = i60 + 1;
                                iArr6[i60] = 22;
                            }
                            break;
                        case 25:
                            if (this.f23984strictfp == 101) {
                                int i61 = this.f23982return;
                                this.f23982return = i61 + 1;
                                iArr6[i61] = 26;
                            }
                            break;
                        case 26:
                            if ((2199023256064L & j4) != 0) {
                                int i62 = this.f23982return;
                                this.f23982return = i62 + 1;
                                iArr6[i62] = 27;
                            }
                            break;
                        case 27:
                            if (this.f23984strictfp == 102) {
                                int i63 = this.f23982return;
                                this.f23982return = i63 + 1;
                                iArr6[i63] = 28;
                            }
                            break;
                        case 29:
                            if (this.f23984strictfp == 115) {
                                int i64 = this.f23982return;
                                this.f23982return = i64 + 1;
                                iArr6[i64] = 25;
                            }
                            break;
                        case 30:
                            if (this.f23984strictfp == 108) {
                                int i65 = this.f23982return;
                                this.f23982return = i65 + 1;
                                iArr6[i65] = 29;
                            }
                            break;
                        case 31:
                            if (this.f23984strictfp == 101) {
                                int i66 = this.f23982return;
                                this.f23982return = i66 + 1;
                                iArr6[i66] = 30;
                            }
                            break;
                        case 32:
                            if (this.f23984strictfp == 116) {
                                int i67 = this.f23982return;
                                this.f23982return = i67 + 1;
                                iArr6[i67] = 33;
                            }
                            break;
                        case 34:
                            if (this.f23984strictfp == 115) {
                                int i68 = this.f23982return;
                                this.f23982return = i68 + 1;
                                iArr6[i68] = 32;
                            }
                            break;
                        case 35:
                            if (this.f23984strictfp == 105) {
                                int i69 = this.f23982return;
                                this.f23982return = i69 + 1;
                                iArr6[i69] = 34;
                            }
                            break;
                        case 36:
                            if (this.f23984strictfp == 108) {
                                int i70 = this.f23982return;
                                this.f23982return = i70 + 1;
                                iArr6[i70] = 35;
                            }
                            break;
                        case 37:
                            if (this.f23984strictfp == 115) {
                                int i71 = this.f23982return;
                                this.f23982return = i71 + 1;
                                iArr6[i71] = 38;
                            }
                            break;
                        case 39:
                            if (this.f23984strictfp == 115) {
                                int i72 = this.f23982return;
                                this.f23982return = i72 + 1;
                                iArr6[i72] = 40;
                            }
                            break;
                        case 41:
                            if (this.f23984strictfp == 97) {
                                int i73 = this.f23982return;
                                this.f23982return = i73 + 1;
                                iArr6[i73] = 39;
                            }
                            break;
                        case 42:
                            if (this.f23984strictfp == 109) {
                                int i74 = this.f23982return;
                                this.f23982return = i74 + 1;
                                iArr6[i74] = 37;
                            }
                            break;
                        case 43:
                            if (this.f23984strictfp == 101) {
                                int i75 = this.f23982return;
                                this.f23982return = i75 + 1;
                                iArr6[i75] = 42;
                            }
                            break;
                        case 44:
                            if (this.f23984strictfp == 116) {
                                int i76 = this.f23982return;
                                this.f23982return = i76 + 1;
                                iArr6[i76] = 43;
                            }
                            break;
                        case 45:
                            if (this.f23984strictfp == 105) {
                                int i77 = this.f23982return;
                                this.f23982return = i77 + 1;
                                iArr6[i77] = 44;
                            }
                            break;
                        case 46:
                            if (this.f23984strictfp == 112) {
                                m28150import(154, 155);
                            }
                            break;
                        case 48:
                            if (this.f23984strictfp == 93 && i7 > 12) {
                                i7 = 12;
                            }
                            break;
                        case 49:
                            if (this.f23984strictfp == 101) {
                                int i78 = this.f23982return;
                                this.f23982return = i78 + 1;
                                iArr6[i78] = 46;
                            }
                            break;
                        case 50:
                            if (this.f23984strictfp == 115) {
                                int i79 = this.f23982return;
                                this.f23982return = i79 + 1;
                                iArr6[i79] = 49;
                            }
                            break;
                        case 51:
                            if (this.f23984strictfp == 114) {
                                int i80 = this.f23982return;
                                this.f23982return = i80 + 1;
                                iArr6[i80] = 52;
                            }
                            break;
                        case 52:
                            if ((137438953504L & j4) != 0) {
                                int i81 = this.f23982return;
                                this.f23982return = i81 + 1;
                                iArr6[i81] = 56;
                            }
                            break;
                        case 53:
                            if (this.f23984strictfp == 104) {
                                int i82 = this.f23982return;
                                this.f23982return = i82 + 1;
                                iArr6[i82] = 54;
                            }
                            break;
                        case 55:
                            if (this.f23984strictfp == 99) {
                                int i83 = this.f23982return;
                                this.f23982return = i83 + 1;
                                iArr6[i83] = 53;
                            }
                            break;
                        case 56:
                            if (this.f23984strictfp == 97) {
                                int i84 = this.f23982return;
                                this.f23982return = i84 + 1;
                                iArr6[i84] = 55;
                            }
                            break;
                        case 57:
                            if (this.f23984strictfp == 111) {
                                int i85 = this.f23982return;
                                this.f23982return = i85 + 1;
                                iArr6[i85] = 51;
                            }
                            break;
                        case 58:
                            if (this.f23984strictfp == 102) {
                                int i86 = this.f23982return;
                                this.f23982return = i86 + 1;
                                iArr6[i86] = 57;
                            }
                            break;
                        case 59:
                            if (this.f23984strictfp == 104) {
                                int i87 = this.f23982return;
                                this.f23982return = i87 + 1;
                                iArr6[i87] = 60;
                            }
                            break;
                        case 61:
                            if (this.f23984strictfp == 99) {
                                int i88 = this.f23982return;
                                this.f23982return = i88 + 1;
                                iArr6[i88] = 59;
                            }
                            break;
                        case 62:
                            if (this.f23984strictfp == 116) {
                                int i89 = this.f23982return;
                                this.f23982return = i89 + 1;
                                iArr6[i89] = 61;
                            }
                            break;
                        case 63:
                            if (this.f23984strictfp == 105) {
                                int i90 = this.f23982return;
                                this.f23982return = i90 + 1;
                                iArr6[i90] = 62;
                            }
                            break;
                        case 64:
                            if (this.f23984strictfp == 119) {
                                int i91 = this.f23982return;
                                this.f23982return = i91 + 1;
                                iArr6[i91] = 63;
                            }
                            break;
                        case 65:
                            if (this.f23984strictfp == 115) {
                                int i92 = this.f23982return;
                                this.f23982return = i92 + 1;
                                iArr6[i92] = 64;
                            }
                            break;
                        case 66:
                            if (this.f23984strictfp == 101) {
                                int i93 = this.f23982return;
                                this.f23982return = i93 + 1;
                                iArr6[i93] = 67;
                            }
                            break;
                        case 68:
                            if (this.f23984strictfp == 115) {
                                int i94 = this.f23982return;
                                this.f23982return = i94 + 1;
                                iArr6[i94] = 66;
                            }
                            break;
                        case 69:
                            if (this.f23984strictfp == 97) {
                                int i95 = this.f23982return;
                                this.f23982return = i95 + 1;
                                iArr6[i95] = 68;
                            }
                            break;
                        case 70:
                            if (this.f23984strictfp == 99) {
                                int i96 = this.f23982return;
                                this.f23982return = i96 + 1;
                                iArr6[i96] = 69;
                            }
                            break;
                        case 71:
                            if (this.f23984strictfp == 110) {
                                int i97 = this.f23982return;
                                this.f23982return = i97 + 1;
                                iArr6[i97] = 72;
                            }
                            break;
                        case 73:
                            if (this.f23984strictfp == 103) {
                                int i98 = this.f23982return;
                                this.f23982return = i98 + 1;
                                iArr6[i98] = 71;
                            }
                            break;
                        case 74:
                            if (this.f23984strictfp == 105) {
                                int i99 = this.f23982return;
                                this.f23982return = i99 + 1;
                                iArr6[i99] = 73;
                            }
                            break;
                        case 75:
                            if (this.f23984strictfp == 115) {
                                int i100 = this.f23982return;
                                this.f23982return = i100 + 1;
                                iArr6[i100] = 74;
                            }
                            break;
                        case 76:
                            if (this.f23984strictfp == 115) {
                                int i101 = this.f23982return;
                                this.f23982return = i101 + 1;
                                iArr6[i101] = 75;
                            }
                            break;
                        case 77:
                            if (this.f23984strictfp == 97) {
                                int i102 = this.f23982return;
                                this.f23982return = i102 + 1;
                                iArr6[i102] = 76;
                            }
                            break;
                        case 78:
                            if (this.f23984strictfp == 108) {
                                int i103 = this.f23982return;
                                this.f23982return = i103 + 1;
                                iArr6[i103] = 79;
                            }
                            break;
                        case 80:
                            if (this.f23984strictfp == 97) {
                                int i104 = this.f23982return;
                                this.f23982return = i104 + 1;
                                iArr6[i104] = 78;
                            }
                            break;
                        case 81:
                            if (this.f23984strictfp == 98) {
                                int i105 = this.f23982return;
                                this.f23982return = i105 + 1;
                                iArr6[i105] = 80;
                            }
                            break;
                        case 82:
                            if (this.f23984strictfp == 111) {
                                int i106 = this.f23982return;
                                this.f23982return = i106 + 1;
                                iArr6[i106] = 81;
                            }
                            break;
                        case 83:
                            if (this.f23984strictfp == 108) {
                                int i107 = this.f23982return;
                                this.f23982return = i107 + 1;
                                iArr6[i107] = 82;
                            }
                            break;
                        case 84:
                            if (this.f23984strictfp == 103) {
                                int i108 = this.f23982return;
                                this.f23982return = i108 + 1;
                                iArr6[i108] = 83;
                            }
                            break;
                        case 85:
                            if (this.f23984strictfp == 108) {
                                int i109 = this.f23982return;
                                this.f23982return = i109 + 1;
                                iArr6[i109] = 86;
                            }
                            break;
                        case 87:
                            if (this.f23984strictfp == 97) {
                                int i110 = this.f23982return;
                                this.f23982return = i110 + 1;
                                iArr6[i110] = 85;
                            }
                            break;
                        case 88:
                            if (this.f23984strictfp == 99) {
                                int i111 = this.f23982return;
                                this.f23982return = i111 + 1;
                                iArr6[i111] = 87;
                            }
                            break;
                        case 89:
                            if (this.f23984strictfp == 111) {
                                int i112 = this.f23982return;
                                this.f23982return = i112 + 1;
                                iArr6[i112] = 88;
                            }
                            break;
                        case 90:
                            if (this.f23984strictfp == 108) {
                                int i113 = this.f23982return;
                                this.f23982return = i113 + 1;
                                iArr6[i113] = 89;
                            }
                            break;
                        case 91:
                            if (this.f23984strictfp == 101) {
                                int i114 = this.f23982return;
                                this.f23982return = i114 + 1;
                                iArr6[i114] = 92;
                            }
                            break;
                        case 93:
                            if (this.f23984strictfp == 100) {
                                int i115 = this.f23982return;
                                this.f23982return = i115 + 1;
                                iArr6[i115] = 91;
                            }
                            break;
                        case 94:
                            if (this.f23984strictfp == 117) {
                                int i116 = this.f23982return;
                                this.f23982return = i116 + 1;
                                iArr6[i116] = 93;
                            }
                            break;
                        case 95:
                            if (this.f23984strictfp == 108) {
                                int i117 = this.f23982return;
                                this.f23982return = i117 + 1;
                                iArr6[i117] = 94;
                            }
                            break;
                        case 96:
                            if (this.f23984strictfp == 99) {
                                int i118 = this.f23982return;
                                this.f23982return = i118 + 1;
                                iArr6[i118] = 95;
                            }
                            break;
                        case 97:
                            if (this.f23984strictfp == 110) {
                                int i119 = this.f23982return;
                                this.f23982return = i119 + 1;
                                iArr6[i119] = 96;
                            }
                            break;
                        case 98:
                            if (this.f23984strictfp == 105) {
                                int i120 = this.f23982return;
                                this.f23982return = i120 + 1;
                                iArr6[i120] = 97;
                            }
                            break;
                        case 99:
                            if (this.f23984strictfp == 116) {
                                int i121 = this.f23982return;
                                this.f23982return = i121 + 1;
                                iArr6[i121] = 100;
                            }
                            break;
                        case 101:
                            if (this.f23984strictfp == 114) {
                                int i122 = this.f23982return;
                                this.f23982return = i122 + 1;
                                iArr6[i122] = 99;
                            }
                            break;
                        case 102:
                            if (this.f23984strictfp == 111) {
                                int i123 = this.f23982return;
                                this.f23982return = i123 + 1;
                                iArr6[i123] = 101;
                            }
                            break;
                        case 103:
                            if (this.f23984strictfp == 112) {
                                int i124 = this.f23982return;
                                this.f23982return = i124 + 1;
                                iArr6[i124] = 102;
                            }
                            break;
                        case 104:
                            if (this.f23984strictfp == 109) {
                                int i125 = this.f23982return;
                                this.f23982return = i125 + 1;
                                iArr6[i125] = 103;
                            }
                            break;
                        case 105:
                            if (this.f23984strictfp == 105) {
                                int i126 = this.f23982return;
                                this.f23982return = i126 + 1;
                                iArr6[i126] = 104;
                            }
                            break;
                        case 106:
                            if (this.f23984strictfp == 110) {
                                int i127 = this.f23982return;
                                this.f23982return = i127 + 1;
                                iArr6[i127] = 107;
                            }
                            break;
                        case 108:
                            if (this.f23984strictfp == 111) {
                                int i128 = this.f23982return;
                                this.f23982return = i128 + 1;
                                iArr6[i128] = 106;
                            }
                            break;
                        case 109:
                            if (this.f23984strictfp == 105) {
                                int i129 = this.f23982return;
                                this.f23982return = i129 + 1;
                                iArr6[i129] = 108;
                            }
                            break;
                        case 110:
                            if (this.f23984strictfp == 116) {
                                int i130 = this.f23982return;
                                this.f23982return = i130 + 1;
                                iArr6[i130] = 109;
                            }
                            break;
                        case 111:
                            if (this.f23984strictfp == 99) {
                                int i131 = this.f23982return;
                                this.f23982return = i131 + 1;
                                iArr6[i131] = 110;
                            }
                            break;
                        case 112:
                            if (this.f23984strictfp == 110) {
                                int i132 = this.f23982return;
                                this.f23982return = i132 + 1;
                                iArr6[i132] = 111;
                            }
                            break;
                        case 113:
                            if (this.f23984strictfp == 117) {
                                int i133 = this.f23982return;
                                this.f23982return = i133 + 1;
                                iArr6[i133] = 112;
                            }
                            break;
                        case 114:
                            if (this.f23984strictfp == 102) {
                                int i134 = this.f23982return;
                                this.f23982return = i134 + 1;
                                iArr6[i134] = 113;
                            }
                            break;
                        case 115:
                            if (this.f23984strictfp == 111) {
                                int i135 = this.f23982return;
                                this.f23982return = i135 + 1;
                                iArr6[i135] = 116;
                            }
                            break;
                        case 117:
                            if (this.f23984strictfp == 114) {
                                int i136 = this.f23982return;
                                this.f23982return = i136 + 1;
                                iArr6[i136] = 115;
                            }
                            break;
                        case 118:
                            if (this.f23984strictfp == 99) {
                                int i137 = this.f23982return;
                                this.f23982return = i137 + 1;
                                iArr6[i137] = 117;
                            }
                            break;
                        case 119:
                            if (this.f23984strictfp == 97) {
                                int i138 = this.f23982return;
                                this.f23982return = i138 + 1;
                                iArr6[i138] = 118;
                            }
                            break;
                        case 120:
                            if (this.f23984strictfp == 109) {
                                int i139 = this.f23982return;
                                this.f23982return = i139 + 1;
                                iArr6[i139] = 119;
                            }
                            break;
                        case 121:
                            if (this.f23984strictfp == 109) {
                                int i140 = this.f23982return;
                                this.f23982return = i140 + 1;
                                iArr6[i140] = 122;
                            }
                            break;
                        case 123:
                            if (this.f23984strictfp == 114) {
                                int i141 = this.f23982return;
                                this.f23982return = i141 + 1;
                                iArr6[i141] = 121;
                            }
                            break;
                        case 124:
                            if (this.f23984strictfp == 111) {
                                int i142 = this.f23982return;
                                this.f23982return = i142 + 1;
                                iArr6[i142] = 123;
                            }
                            break;
                        case 125:
                            if (this.f23984strictfp == 102) {
                                int i143 = this.f23982return;
                                this.f23982return = i143 + 1;
                                iArr6[i143] = 124;
                            }
                            break;
                        case 126:
                            if (this.f23984strictfp == 115) {
                                int i144 = this.f23982return;
                                this.f23982return = i144 + 1;
                                iArr6[i144] = 125;
                            }
                            break;
                        case 127:
                            if (this.f23984strictfp == 110) {
                                int i145 = this.f23982return;
                                this.f23982return = i145 + 1;
                                iArr6[i145] = 126;
                            }
                            break;
                        case 128:
                            if (this.f23984strictfp == 97) {
                                int i146 = this.f23982return;
                                this.f23982return = i146 + 1;
                                iArr6[i146] = 127;
                            }
                            break;
                        case 129:
                            if (this.f23984strictfp == 114) {
                                int i147 = this.f23982return;
                                this.f23982return = i147 + 1;
                                iArr6[i147] = 128;
                            }
                            break;
                        case 130:
                            if (this.f23984strictfp == 116) {
                                int i148 = this.f23982return;
                                this.f23982return = i148 + 1;
                                iArr6[i148] = 129;
                            }
                            break;
                        case 131:
                            if (this.f23984strictfp == 116) {
                                int i149 = this.f23982return;
                                this.f23982return = i149 + 1;
                                iArr6[i149] = 132;
                            }
                            break;
                        case 133:
                            if (this.f23984strictfp == 105) {
                                int i150 = this.f23982return;
                                this.f23982return = i150 + 1;
                                iArr6[i150] = 131;
                            }
                            break;
                        case 134:
                            if (this.f23984strictfp == 115) {
                                int i151 = this.f23982return;
                                this.f23982return = i151 + 1;
                                iArr6[i151] = 133;
                            }
                            break;
                        case 135:
                            if (this.f23984strictfp == 105) {
                                int i152 = this.f23982return;
                                this.f23982return = i152 + 1;
                                iArr6[i152] = 134;
                            }
                            break;
                        case 136:
                            if (this.f23984strictfp == 118) {
                                int i153 = this.f23982return;
                                this.f23982return = i153 + 1;
                                iArr6[i153] = 135;
                            }
                            break;
                        case 137:
                            if (this.f23984strictfp == 112) {
                                int i154 = this.f23982return;
                                this.f23982return = i154 + 1;
                                iArr6[i154] = 138;
                            }
                            break;
                        case 139:
                            if (this.f23984strictfp == 111) {
                                int i155 = this.f23982return;
                                this.f23982return = i155 + 1;
                                iArr6[i155] = 137;
                            }
                            break;
                        case 140:
                            if (this.f23984strictfp == 116) {
                                int i156 = this.f23982return;
                                this.f23982return = i156 + 1;
                                iArr6[i156] = 139;
                            }
                            break;
                        case 141:
                            if (this.f23984strictfp == 115) {
                                int i157 = this.f23982return;
                                this.f23982return = i157 + 1;
                                iArr6[i157] = 140;
                            }
                            break;
                        case 142:
                            if (this.f23984strictfp == 110) {
                                int i158 = this.f23982return;
                                this.f23982return = i158 + 1;
                                iArr6[i158] = 143;
                            }
                            break;
                        case 144:
                            if (this.f23984strictfp == 114) {
                                int i159 = this.f23982return;
                                this.f23982return = i159 + 1;
                                iArr6[i159] = 142;
                            }
                            break;
                        case 145:
                            if (this.f23984strictfp == 117) {
                                int i160 = this.f23982return;
                                this.f23982return = i160 + 1;
                                iArr6[i160] = 144;
                            }
                            break;
                        case 146:
                            if (this.f23984strictfp == 116) {
                                int i161 = this.f23982return;
                                this.f23982return = i161 + 1;
                                iArr6[i161] = 145;
                            }
                            break;
                        case 147:
                            if (this.f23984strictfp == 101) {
                                int i162 = this.f23982return;
                                this.f23982return = i162 + 1;
                                iArr6[i162] = 146;
                            }
                            break;
                        case 148:
                            if (this.f23984strictfp == 114) {
                                int i163 = this.f23982return;
                                this.f23982return = i163 + 1;
                                iArr6[i163] = 147;
                            }
                            break;
                        case 149:
                            if (this.f23984strictfp == 108) {
                                int i164 = this.f23982return;
                                this.f23982return = i164 + 1;
                                iArr6[i164] = 150;
                            }
                            break;
                        case 151:
                            if (this.f23984strictfp == 108) {
                                int i165 = this.f23982return;
                                this.f23982return = i165 + 1;
                                iArr6[i165] = 149;
                            }
                            break;
                        case 152:
                            if (this.f23984strictfp == 97) {
                                int i166 = this.f23982return;
                                this.f23982return = i166 + 1;
                                iArr6[i166] = 151;
                            }
                            break;
                        case 153:
                            if (this.f23984strictfp == 99) {
                                int i167 = this.f23982return;
                                this.f23982return = i167 + 1;
                                iArr6[i167] = 152;
                            }
                            break;
                        case 154:
                            if (this.f23984strictfp == 103) {
                                int i168 = this.f23982return;
                                this.f23982return = i168 + 1;
                                iArr6[i168] = 155;
                            }
                            break;
                        case 156:
                            if (this.f23984strictfp == 110) {
                                int i169 = this.f23982return;
                                this.f23982return = i169 + 1;
                                iArr6[i169] = 154;
                            }
                            break;
                        case 157:
                            if (this.f23984strictfp == 105) {
                                int i170 = this.f23982return;
                                this.f23982return = i170 + 1;
                                iArr6[i170] = 156;
                            }
                            break;
                        case 158:
                            if (this.f23984strictfp == 116) {
                                int i171 = this.f23982return;
                                this.f23982return = i171 + 1;
                                iArr6[i171] = 157;
                            }
                            break;
                        case 159:
                            if (this.f23984strictfp == 116) {
                                int i172 = this.f23982return;
                                this.f23982return = i172 + 1;
                                iArr6[i172] = 158;
                            }
                            break;
                        case 160:
                            if (this.f23984strictfp == 101) {
                                int i173 = this.f23982return;
                                this.f23982return = i173 + 1;
                                iArr6[i173] = 159;
                            }
                            break;
                        case 161:
                            if (this.f23984strictfp == 115) {
                                int i174 = this.f23982return;
                                this.f23982return = i174 + 1;
                                iArr6[i174] = 160;
                            }
                            break;
                        case 162:
                            if (this.f23984strictfp == 116) {
                                int i175 = this.f23982return;
                                this.f23982return = i175 + 1;
                                iArr6[i175] = 163;
                            }
                            break;
                        case 163:
                            if ((274877907008L & j4) != 0) {
                                int i176 = this.f23982return;
                                this.f23982return = i176 + 1;
                                iArr6[i176] = 169;
                            }
                            break;
                        case 164:
                            if (this.f23984strictfp == 116) {
                                int i177 = this.f23982return;
                                this.f23982return = i177 + 1;
                                iArr6[i177] = 165;
                            }
                            break;
                        case 166:
                            if (this.f23984strictfp == 97) {
                                int i178 = this.f23982return;
                                this.f23982return = i178 + 1;
                                iArr6[i178] = 164;
                            }
                            break;
                        case 167:
                            if (this.f23984strictfp == 109) {
                                int i179 = this.f23982return;
                                this.f23982return = i179 + 1;
                                iArr6[i179] = 166;
                            }
                            break;
                        case 168:
                            if (this.f23984strictfp == 114) {
                                int i180 = this.f23982return;
                                this.f23982return = i180 + 1;
                                iArr6[i180] = 167;
                            }
                            break;
                        case 169:
                            if (this.f23984strictfp == 111) {
                                int i181 = this.f23982return;
                                this.f23982return = i181 + 1;
                                iArr6[i181] = 168;
                            }
                            break;
                        case 170:
                            if (this.f23984strictfp == 117) {
                                int i182 = this.f23982return;
                                this.f23982return = i182 + 1;
                                iArr6[i182] = 162;
                            }
                            break;
                        case 171:
                            if (this.f23984strictfp == 112) {
                                int i183 = this.f23982return;
                                this.f23982return = i183 + 1;
                                iArr6[i183] = 170;
                            }
                            break;
                        case 172:
                            if (this.f23984strictfp == 116) {
                                int i184 = this.f23982return;
                                this.f23982return = i184 + 1;
                                iArr6[i184] = 171;
                            }
                            break;
                        case 173:
                            if (this.f23984strictfp == 117) {
                                int i185 = this.f23982return;
                                this.f23982return = i185 + 1;
                                iArr6[i185] = 172;
                            }
                            break;
                        case 174:
                            if (this.f23984strictfp == 111) {
                                int i186 = this.f23982return;
                                this.f23982return = i186 + 1;
                                iArr6[i186] = 173;
                            }
                            break;
                        case 175:
                            if (this.f23984strictfp == 111) {
                                int i187 = this.f23982return;
                                this.f23982return = i187 + 1;
                                iArr6[i187] = 176;
                            }
                            break;
                        case 176:
                            if ((137438953504L & j4) != 0) {
                                int i188 = this.f23982return;
                                this.f23982return = i188 + 1;
                                iArr6[i188] = 180;
                            }
                            break;
                        case 177:
                            if (this.f23984strictfp == 99) {
                                m28150import(156, 157);
                            }
                            break;
                        case 179:
                            if (this.f23984strictfp == 93 && i7 > 30) {
                                i7 = 30;
                            }
                            break;
                        case 180:
                            if (this.f23984strictfp == 115) {
                                int i189 = this.f23982return;
                                this.f23982return = i189 + 1;
                                iArr6[i189] = 177;
                            }
                            break;
                        case 181:
                            if (this.f23984strictfp == 116) {
                                int i190 = this.f23982return;
                                this.f23982return = i190 + 1;
                                iArr6[i190] = 175;
                            }
                            break;
                        case 182:
                            if (this.f23984strictfp == 117) {
                                int i191 = this.f23982return;
                                this.f23982return = i191 + 1;
                                iArr6[i191] = 181;
                            }
                            break;
                        case 183:
                            if (this.f23984strictfp == 97) {
                                int i192 = this.f23982return;
                                this.f23982return = i192 + 1;
                                iArr6[i192] = 182;
                            }
                            break;
                        case 184:
                            if (this.f23984strictfp == 111) {
                                m28150import(333, 334);
                            }
                            break;
                        case 185:
                            if (this.f23984strictfp == 101) {
                                m28158return(189);
                            }
                            break;
                        case 186:
                            if (this.f23984strictfp == 99) {
                                m28150import(158, 159);
                            }
                            break;
                        case 188:
                            if (this.f23984strictfp == 93 && i7 > 31) {
                                i7 = 31;
                            }
                            break;
                        case 189:
                            if (this.f23984strictfp == 115) {
                                int i193 = this.f23982return;
                                this.f23982return = i193 + 1;
                                iArr6[i193] = 186;
                            }
                            break;
                        case 190:
                            if (this.f23984strictfp == 111) {
                                int i194 = this.f23982return;
                                this.f23982return = i194 + 1;
                                iArr6[i194] = 185;
                            }
                            break;
                        case 191:
                            if (this.f23984strictfp == 116) {
                                int i195 = this.f23982return;
                                this.f23982return = i195 + 1;
                                iArr6[i195] = 190;
                            }
                            break;
                        case 192:
                            if (this.f23984strictfp == 117) {
                                int i196 = this.f23982return;
                                this.f23982return = i196 + 1;
                                iArr6[i196] = 191;
                            }
                            break;
                        case 193:
                            if (this.f23984strictfp == 97) {
                                int i197 = this.f23982return;
                                this.f23982return = i197 + 1;
                                iArr6[i197] = 192;
                            }
                            break;
                        case 194:
                            if (this.f23984strictfp == 69) {
                                m28158return(189);
                            }
                            break;
                        case 195:
                            if (this.f23984strictfp == 111) {
                                int i198 = this.f23982return;
                                this.f23982return = i198 + 1;
                                iArr6[i198] = 194;
                            }
                            break;
                        case 196:
                            if (this.f23984strictfp == 116) {
                                int i199 = this.f23982return;
                                this.f23982return = i199 + 1;
                                iArr6[i199] = 195;
                            }
                            break;
                        case 197:
                            if (this.f23984strictfp == 117) {
                                int i200 = this.f23982return;
                                this.f23982return = i200 + 1;
                                iArr6[i200] = 196;
                            }
                            break;
                        case 198:
                            if (this.f23984strictfp == 65) {
                                int i201 = this.f23982return;
                                this.f23982return = i201 + 1;
                                iArr6[i201] = 197;
                            }
                            break;
                        case 199:
                            if (this.f23984strictfp == 110) {
                                int i202 = this.f23982return;
                                this.f23982return = i202 + 1;
                                iArr6[i202] = 184;
                            }
                            break;
                        case 200:
                            if (this.f23984strictfp == 115) {
                                m28150import(160, 161);
                            }
                            break;
                        case 202:
                            if (this.f23984strictfp == 93 && i7 > 32) {
                                i7 = 32;
                            }
                            break;
                        case 203:
                            if (this.f23984strictfp == 115) {
                                int i203 = this.f23982return;
                                this.f23982return = i203 + 1;
                                iArr6[i203] = 200;
                            }
                            break;
                        case 204:
                            if (this.f23984strictfp == 101) {
                                int i204 = this.f23982return;
                                this.f23982return = i204 + 1;
                                iArr6[i204] = 203;
                            }
                            break;
                        case 205:
                            if (this.f23984strictfp == 114) {
                                int i205 = this.f23982return;
                                this.f23982return = i205 + 1;
                                iArr6[i205] = 204;
                            }
                            break;
                        case 206:
                            if (this.f23984strictfp == 112) {
                                int i206 = this.f23982return;
                                this.f23982return = i206 + 1;
                                iArr6[i206] = 205;
                            }
                            break;
                        case 207:
                            if (this.f23984strictfp == 109) {
                                int i207 = this.f23982return;
                                this.f23982return = i207 + 1;
                                iArr6[i207] = 206;
                            }
                            break;
                        case 208:
                            if (this.f23984strictfp == 111) {
                                int i208 = this.f23982return;
                                this.f23982return = i208 + 1;
                                iArr6[i208] = 207;
                            }
                            break;
                        case 209:
                            if (this.f23984strictfp == 99) {
                                int i209 = this.f23982return;
                                this.f23982return = i209 + 1;
                                iArr6[i209] = 208;
                            }
                            break;
                        case oc.f4541try /* 210 */:
                            if (this.f23984strictfp == 116) {
                                m28150import(162, 163);
                            }
                            break;
                        case 212:
                            if (this.f23984strictfp == 93 && i7 > 33) {
                                i7 = 33;
                            }
                            break;
                        case 213:
                            if (this.f23984strictfp == 110) {
                                int i210 = this.f23982return;
                                this.f23982return = i210 + 1;
                                iArr6[i210] = 210;
                            }
                            break;
                        case 214:
                            if (this.f23984strictfp == 101) {
                                int i211 = this.f23982return;
                                this.f23982return = i211 + 1;
                                iArr6[i211] = 213;
                            }
                            break;
                        case 215:
                            if (this.f23984strictfp == 109) {
                                int i212 = this.f23982return;
                                this.f23982return = i212 + 1;
                                iArr6[i212] = 214;
                            }
                            break;
                        case 216:
                            if (this.f23984strictfp == 109) {
                                int i213 = this.f23982return;
                                this.f23982return = i213 + 1;
                                iArr6[i213] = 215;
                            }
                            break;
                        case 217:
                            if (this.f23984strictfp == 111) {
                                int i214 = this.f23982return;
                                this.f23982return = i214 + 1;
                                iArr6[i214] = 216;
                            }
                            break;
                        case 218:
                            if (this.f23984strictfp == 99) {
                                int i215 = this.f23982return;
                                this.f23982return = i215 + 1;
                                iArr6[i215] = 217;
                            }
                            break;
                        case 219:
                            if (this.f23984strictfp == 111) {
                                int i216 = this.f23982return;
                                this.f23982return = i216 + 1;
                                iArr6[i216] = 220;
                            }
                            break;
                        case FragmentManagerImpl.ANIM_DUR /* 220 */:
                            if ((281474976776192L & j4) != 0) {
                                int i217 = this.f23982return;
                                this.f23982return = i217 + 1;
                                iArr6[i217] = 226;
                            }
                            break;
                        case 221:
                            if (this.f23984strictfp == 101) {
                                m28150import(164, 165);
                            }
                            break;
                        case 223:
                            if (this.f23984strictfp == 93 && i7 > 35) {
                                i7 = 35;
                            }
                            break;
                        case 224:
                            if (this.f23984strictfp == 115) {
                                int i218 = this.f23982return;
                                this.f23982return = i218 + 1;
                                iArr6[i218] = 221;
                            }
                            break;
                        case 225:
                            if (this.f23984strictfp == 114) {
                                int i219 = this.f23982return;
                                this.f23982return = i219 + 1;
                                iArr6[i219] = 224;
                            }
                            break;
                        case 226:
                            if (this.f23984strictfp == 97) {
                                int i220 = this.f23982return;
                                this.f23982return = i220 + 1;
                                iArr6[i220] = 225;
                            }
                            break;
                        case 227:
                            if (this.f23984strictfp == 110) {
                                int i221 = this.f23982return;
                                this.f23982return = i221 + 1;
                                iArr6[i221] = 219;
                            }
                            break;
                        case 228:
                            if (this.f23984strictfp == 101) {
                                m28150import(166, 168);
                            }
                            break;
                        case 231:
                            if (this.f23984strictfp == 93 && i7 > 54) {
                                i7 = 54;
                            }
                            break;
                        case 232:
                            if (this.f23984strictfp == 115) {
                                int i222 = this.f23982return;
                                this.f23982return = i222 + 1;
                                iArr6[i222] = 228;
                            }
                            break;
                        case 233:
                            if (this.f23984strictfp == 108) {
                                int i223 = this.f23982return;
                                this.f23982return = i223 + 1;
                                iArr6[i223] = 232;
                            }
                            break;
                        case 234:
                            if (this.f23984strictfp == 101) {
                                int i224 = this.f23982return;
                                this.f23982return = i224 + 1;
                                iArr6[i224] = 233;
                            }
                            break;
                        case 235:
                            if (this.f23984strictfp == 107) {
                                m28150import(169, 171);
                            }
                            break;
                        case 238:
                            if (this.f23984strictfp == 93 && i7 > 55) {
                                i7 = 55;
                            }
                            break;
                        case 239:
                            if (this.f23984strictfp == 97) {
                                int i225 = this.f23982return;
                                this.f23982return = i225 + 1;
                                iArr6[i225] = 235;
                            }
                            break;
                        case MountainSceneView.f20267finally /* 240 */:
                            if (this.f23984strictfp == 101) {
                                int i226 = this.f23982return;
                                this.f23982return = i226 + 1;
                                iArr6[i226] = 239;
                            }
                            break;
                        case 241:
                            if (this.f23984strictfp == 114) {
                                int i227 = this.f23982return;
                                this.f23982return = i227 + 1;
                                iArr6[i227] = 240;
                            }
                            break;
                        case 242:
                            if (this.f23984strictfp == 98) {
                                int i228 = this.f23982return;
                                this.f23982return = i228 + 1;
                                iArr6[i228] = 241;
                            }
                            break;
                        case 243:
                            if (this.f23984strictfp == 101) {
                                m28150import(172, 174);
                            }
                            break;
                        case 246:
                            if (this.f23984strictfp == 93 && i7 > 56) {
                                i7 = 56;
                            }
                            break;
                        case 247:
                            if (this.f23984strictfp == 117) {
                                int i229 = this.f23982return;
                                this.f23982return = i229 + 1;
                                iArr6[i229] = 243;
                            }
                            break;
                        case 248:
                            if (this.f23984strictfp == 110) {
                                int i230 = this.f23982return;
                                this.f23982return = i230 + 1;
                                iArr6[i230] = 247;
                            }
                            break;
                        case 249:
                            if (this.f23984strictfp == 105) {
                                int i231 = this.f23982return;
                                this.f23982return = i231 + 1;
                                iArr6[i231] = 248;
                            }
                            break;
                        case 250:
                            if (this.f23984strictfp == 116) {
                                int i232 = this.f23982return;
                                this.f23982return = i232 + 1;
                                iArr6[i232] = 249;
                            }
                            break;
                        case 251:
                            if (this.f23984strictfp == 110) {
                                int i233 = this.f23982return;
                                this.f23982return = i233 + 1;
                                iArr6[i233] = 250;
                            }
                            break;
                        case 252:
                            if (this.f23984strictfp == 111) {
                                int i234 = this.f23982return;
                                this.f23982return = i234 + 1;
                                iArr6[i234] = 251;
                            }
                            break;
                        case 253:
                            if (this.f23984strictfp == 99) {
                                int i235 = this.f23982return;
                                this.f23982return = i235 + 1;
                                iArr6[i235] = 252;
                            }
                            break;
                        case wd.i2 /* 254 */:
                            if (this.f23984strictfp == 110) {
                                m28150import(175, 177);
                            }
                            break;
                        case 257:
                            if (this.f23984strictfp == 93 && i7 > 57) {
                                i7 = 57;
                            }
                            break;
                        case 258:
                            if (this.f23984strictfp == 114) {
                                int i236 = this.f23982return;
                                this.f23982return = i236 + 1;
                                iArr6[i236] = 254;
                            }
                            break;
                        case 259:
                            if (this.f23984strictfp == 117) {
                                int i237 = this.f23982return;
                                this.f23982return = i237 + 1;
                                iArr6[i237] = 258;
                            }
                            break;
                        case 260:
                            if (this.f23984strictfp == 116) {
                                int i238 = this.f23982return;
                                this.f23982return = i238 + 1;
                                iArr6[i238] = 259;
                            }
                            break;
                        case 261:
                            if (this.f23984strictfp == 101) {
                                int i239 = this.f23982return;
                                this.f23982return = i239 + 1;
                                iArr6[i239] = 260;
                            }
                            break;
                        case 262:
                            if (this.f23984strictfp == 114) {
                                int i240 = this.f23982return;
                                this.f23982return = i240 + 1;
                                iArr6[i240] = 261;
                            }
                            break;
                        case 263:
                            if (this.f23984strictfp == 112) {
                                m28150import(178, 180);
                            }
                            break;
                        case 266:
                            if (this.f23984strictfp == 93 && i7 > 58) {
                                i7 = 58;
                            }
                            break;
                        case 267:
                            if (this.f23984strictfp == 111) {
                                int i241 = this.f23982return;
                                this.f23982return = i241 + 1;
                                iArr6[i241] = 263;
                            }
                            break;
                        case 268:
                            if (this.f23984strictfp == 116) {
                                int i242 = this.f23982return;
                                this.f23982return = i242 + 1;
                                iArr6[i242] = 267;
                            }
                            break;
                        case 269:
                            if (this.f23984strictfp == 115) {
                                int i243 = this.f23982return;
                                this.f23982return = i243 + 1;
                                iArr6[i243] = 268;
                            }
                            break;
                        case 270:
                            if (this.f23984strictfp == 104) {
                                m28150import(181, 183);
                            }
                            break;
                        case 273:
                            if (this.f23984strictfp == 93 && i7 > 59) {
                                i7 = 59;
                            }
                            break;
                        case 274:
                            if (this.f23984strictfp == 115) {
                                int i244 = this.f23982return;
                                this.f23982return = i244 + 1;
                                iArr6[i244] = 270;
                            }
                            break;
                        case 275:
                            if (this.f23984strictfp == 117) {
                                int i245 = this.f23982return;
                                this.f23982return = i245 + 1;
                                iArr6[i245] = 274;
                            }
                            break;
                        case 276:
                            if (this.f23984strictfp == 108) {
                                int i246 = this.f23982return;
                                this.f23982return = i246 + 1;
                                iArr6[i246] = 275;
                            }
                            break;
                        case 277:
                            if (this.f23984strictfp == 102) {
                                int i247 = this.f23982return;
                                this.f23982return = i247 + 1;
                                iArr6[i247] = 276;
                            }
                            break;
                        case 278:
                            if (this.f23984strictfp == 116) {
                                m28150import(184, 186);
                            }
                            break;
                        case 281:
                            if (this.f23984strictfp == 93 && i7 > 60) {
                                i7 = 60;
                            }
                            break;
                        case 282:
                            if (this.f23984strictfp == 116) {
                                m28150import(187, 189);
                            }
                            break;
                        case Creturn.f24112class /* 285 */:
                            if (this.f23984strictfp == 93 && i7 > 61) {
                                i7 = 61;
                            }
                            break;
                        case 286:
                            if (this.f23984strictfp == 108) {
                                int i248 = this.f23982return;
                                this.f23982return = i248 + 1;
                                iArr6[i248] = 282;
                            }
                            break;
                        case 287:
                            if (this.f23984strictfp == 116) {
                                m28150import(190, 192);
                            }
                            break;
                        case 290:
                            if (this.f23984strictfp == 93 && i7 > 62) {
                                i7 = 62;
                            }
                            break;
                        case 291:
                            if (this.f23984strictfp == 114) {
                                int i249 = this.f23982return;
                                this.f23982return = i249 + 1;
                                iArr6[i249] = 287;
                            }
                            break;
                        case 292:
                            if (this.f23984strictfp == 116) {
                                m28150import(193, 195);
                            }
                            break;
                        case 295:
                            if (this.f23984strictfp == 93 && i7 > 63) {
                                i7 = 63;
                            }
                            break;
                        case 296:
                            if (this.f23984strictfp == 110) {
                                int i250 = this.f23982return;
                                this.f23982return = i250 + 1;
                                iArr6[i250] = 292;
                            }
                            break;
                        case 297:
                            if (this.f23984strictfp == 116) {
                                m28150import(196, 197);
                            }
                            break;
                        case 299:
                            if (this.f23984strictfp == 93 && i7 > 64) {
                                i7 = 64;
                            }
                            break;
                        case TaurusHeader.a /* 300 */:
                            if (this.f23984strictfp == 108) {
                                int i251 = this.f23982return;
                                this.f23982return = i251 + 1;
                                iArr6[i251] = 297;
                            }
                            break;
                        case 301:
                            if (this.f23984strictfp == 117) {
                                int i252 = this.f23982return;
                                this.f23982return = i252 + 1;
                                iArr6[i252] = 300;
                            }
                            break;
                        case 302:
                            if (this.f23984strictfp == 97) {
                                int i253 = this.f23982return;
                                this.f23982return = i253 + 1;
                                iArr6[i253] = 301;
                            }
                            break;
                        case 303:
                            if (this.f23984strictfp == 102) {
                                int i254 = this.f23982return;
                                this.f23982return = i254 + 1;
                                iArr6[i254] = 302;
                            }
                            break;
                        case 304:
                            if (this.f23984strictfp == 101) {
                                int i255 = this.f23982return;
                                this.f23982return = i255 + 1;
                                iArr6[i255] = 303;
                            }
                            break;
                        case 305:
                            if (this.f23984strictfp == 100) {
                                int i256 = this.f23982return;
                                this.f23982return = i256 + 1;
                                iArr6[i256] = 304;
                            }
                            break;
                        case 306:
                            if (this.f23984strictfp == 100) {
                                m28150import(198, 200);
                            }
                            break;
                        case 309:
                            if (this.f23984strictfp == 93 && i7 > 65) {
                                i7 = 65;
                            }
                            break;
                        case 310:
                            if (this.f23984strictfp == 101) {
                                int i257 = this.f23982return;
                                this.f23982return = i257 + 1;
                                iArr6[i257] = 306;
                            }
                            break;
                        case 311:
                            if (this.f23984strictfp == 116) {
                                int i258 = this.f23982return;
                                this.f23982return = i258 + 1;
                                iArr6[i258] = 310;
                            }
                            break;
                        case 312:
                            if (this.f23984strictfp == 115) {
                                int i259 = this.f23982return;
                                this.f23982return = i259 + 1;
                                iArr6[i259] = 311;
                            }
                            break;
                        case 313:
                            if (this.f23984strictfp == 101) {
                                int i260 = this.f23982return;
                                this.f23982return = i260 + 1;
                                iArr6[i260] = 312;
                            }
                            break;
                        case 314:
                            if (this.f23984strictfp == 110) {
                                int i261 = this.f23982return;
                                this.f23982return = i261 + 1;
                                iArr6[i261] = 313;
                            }
                            break;
                        case 315:
                            if (this.f23984strictfp == 100) {
                                int i262 = this.f23982return;
                                this.f23982return = i262 + 1;
                                iArr6[i262] = 316;
                            }
                            break;
                        case TypedValues.Attributes.TYPE_EASING /* 317 */:
                            if (this.f23984strictfp == 101) {
                                int i263 = this.f23982return;
                                this.f23982return = i263 + 1;
                                iArr6[i263] = 315;
                            }
                            break;
                        case TypedValues.Attributes.TYPE_PIVOT_TARGET /* 318 */:
                            if (this.f23984strictfp == 116) {
                                int i264 = this.f23982return;
                                this.f23982return = i264 + 1;
                                iArr6[i264] = 317;
                            }
                            break;
                        case 319:
                            if (this.f23984strictfp == 115) {
                                int i265 = this.f23982return;
                                this.f23982return = i265 + 1;
                                iArr6[i265] = 318;
                            }
                            break;
                        case 320:
                            if (this.f23984strictfp == 101) {
                                int i266 = this.f23982return;
                                this.f23982return = i266 + 1;
                                iArr6[i266] = 319;
                            }
                            break;
                        case 321:
                            if (this.f23984strictfp == 110) {
                                int i267 = this.f23982return;
                                this.f23982return = i267 + 1;
                                iArr6[i267] = 320;
                            }
                            break;
                        case 322:
                            if (this.f23984strictfp == 101) {
                                m28150import(201, 203);
                            }
                            break;
                        case 325:
                            if (this.f23984strictfp == 93 && i7 > 67) {
                                i7 = 67;
                            }
                            break;
                        case 326:
                            if (this.f23984strictfp == 115) {
                                int i268 = this.f23982return;
                                this.f23982return = i268 + 1;
                                iArr6[i268] = 322;
                            }
                            break;
                        case 327:
                            if (this.f23984strictfp == 114) {
                                int i269 = this.f23982return;
                                this.f23982return = i269 + 1;
                                iArr6[i269] = 326;
                            }
                            break;
                        case 328:
                            if (this.f23984strictfp == 117) {
                                int i270 = this.f23982return;
                                this.f23982return = i270 + 1;
                                iArr6[i270] = 327;
                            }
                            break;
                        case 329:
                            if (this.f23984strictfp == 99) {
                                int i271 = this.f23982return;
                                this.f23982return = i271 + 1;
                                iArr6[i271] = 328;
                            }
                            break;
                        case 330:
                            if (this.f23984strictfp == 101) {
                                int i272 = this.f23982return;
                                this.f23982return = i272 + 1;
                                iArr6[i272] = 329;
                            }
                            break;
                        case 331:
                            if (this.f23984strictfp == 114) {
                                int i273 = this.f23982return;
                                this.f23982return = i273 + 1;
                                iArr6[i273] = 330;
                            }
                            break;
                        case 332:
                            if (this.f23984strictfp == 101) {
                                int i274 = this.f23982return;
                                this.f23982return = i274 + 1;
                                iArr6[i274] = 333;
                            }
                            break;
                        case 334:
                            if (this.f23984strictfp == 115) {
                                int i275 = this.f23982return;
                                this.f23982return = i275 + 1;
                                iArr6[i275] = 332;
                            }
                            break;
                        case 335:
                            if (this.f23984strictfp == 114) {
                                int i276 = this.f23982return;
                                this.f23982return = i276 + 1;
                                iArr6[i276] = 334;
                            }
                            break;
                        case 336:
                            if (this.f23984strictfp == 117) {
                                int i277 = this.f23982return;
                                this.f23982return = i277 + 1;
                                iArr6[i277] = 335;
                            }
                            break;
                        case 337:
                            if (this.f23984strictfp == 99) {
                                int i278 = this.f23982return;
                                this.f23982return = i278 + 1;
                                iArr6[i278] = 336;
                            }
                            break;
                        case 338:
                            if (this.f23984strictfp == 101) {
                                int i279 = this.f23982return;
                                this.f23982return = i279 + 1;
                                iArr6[i279] = 337;
                            }
                            break;
                        case 339:
                            if (this.f23984strictfp == 114) {
                                int i280 = this.f23982return;
                                this.f23982return = i280 + 1;
                                iArr6[i280] = 338;
                            }
                            break;
                        case 340:
                            if (this.f23984strictfp == 107) {
                                m28150import(204, 206);
                            }
                            break;
                        case 343:
                            if (this.f23984strictfp == 93 && i7 > 69) {
                                i7 = 69;
                            }
                            break;
                        case 344:
                            if (this.f23984strictfp == 99) {
                                int i281 = this.f23982return;
                                this.f23982return = i281 + 1;
                                iArr6[i281] = 340;
                            }
                            break;
                        case 345:
                            if (this.f23984strictfp == 97) {
                                int i282 = this.f23982return;
                                this.f23982return = i282 + 1;
                                iArr6[i282] = 344;
                            }
                            break;
                        case 346:
                            if (this.f23984strictfp == 98) {
                                int i283 = this.f23982return;
                                this.f23982return = i283 + 1;
                                iArr6[i283] = 345;
                            }
                            break;
                        case 347:
                            if (this.f23984strictfp == 108) {
                                int i284 = this.f23982return;
                                this.f23982return = i284 + 1;
                                iArr6[i284] = 346;
                            }
                            break;
                        case 348:
                            if (this.f23984strictfp == 108) {
                                int i285 = this.f23982return;
                                this.f23982return = i285 + 1;
                                iArr6[i285] = 347;
                            }
                            break;
                        case 349:
                            if (this.f23984strictfp == 97) {
                                int i286 = this.f23982return;
                                this.f23982return = i286 + 1;
                                iArr6[i286] = 348;
                            }
                            break;
                        case 350:
                            if (this.f23984strictfp == 102) {
                                int i287 = this.f23982return;
                                this.f23982return = i287 + 1;
                                iArr6[i287] = 349;
                            }
                            break;
                        case 351:
                            if (this.f23984strictfp == 101) {
                                int i288 = this.f23982return;
                                this.f23982return = i288 + 1;
                                iArr6[i288] = 352;
                            }
                            break;
                        case 353:
                            if (this.f23984strictfp == 112) {
                                int i289 = this.f23982return;
                                this.f23982return = i289 + 1;
                                iArr6[i289] = 351;
                            }
                            break;
                        case 354:
                            if (this.f23984strictfp == 97) {
                                int i290 = this.f23982return;
                                this.f23982return = i290 + 1;
                                iArr6[i290] = 353;
                            }
                            break;
                        case 355:
                            if (this.f23984strictfp == 99) {
                                int i291 = this.f23982return;
                                this.f23982return = i291 + 1;
                                iArr6[i291] = 354;
                            }
                            break;
                        case 356:
                            if (this.f23984strictfp == 115) {
                                int i292 = this.f23982return;
                                this.f23982return = i292 + 1;
                                iArr6[i292] = 355;
                            }
                            break;
                        case 357:
                            if (this.f23984strictfp == 101) {
                                int i293 = this.f23982return;
                                this.f23982return = i293 + 1;
                                iArr6[i293] = 356;
                            }
                            break;
                        case 358:
                            if (this.f23984strictfp == 111) {
                                int i294 = this.f23982return;
                                this.f23982return = i294 + 1;
                                iArr6[i294] = 359;
                            }
                            break;
                        case 359:
                            if ((137438953504L & j4) != 0) {
                                int i295 = this.f23982return;
                                this.f23982return = i295 + 1;
                                iArr6[i295] = 366;
                            }
                            break;
                        case FunGameBattleCityHeader.u /* 360 */:
                            if (this.f23984strictfp == 101) {
                                m28150import(207, 208);
                            }
                            break;
                        case 362:
                            if (this.f23984strictfp == 93 && i7 > 72) {
                                i7 = 72;
                            }
                            break;
                        case 363:
                            if (this.f23984strictfp == 112) {
                                int i296 = this.f23982return;
                                this.f23982return = i296 + 1;
                                iArr6[i296] = 360;
                            }
                            break;
                        case 364:
                            if (this.f23984strictfp == 97) {
                                int i297 = this.f23982return;
                                this.f23982return = i297 + 1;
                                iArr6[i297] = 363;
                            }
                            break;
                        case 365:
                            if (this.f23984strictfp == 99) {
                                int i298 = this.f23982return;
                                this.f23982return = i298 + 1;
                                iArr6[i298] = 364;
                            }
                            break;
                        case 366:
                            if (this.f23984strictfp == 115) {
                                int i299 = this.f23982return;
                                this.f23982return = i299 + 1;
                                iArr6[i299] = 365;
                            }
                            break;
                        case 367:
                            if (this.f23984strictfp == 110) {
                                int i300 = this.f23982return;
                                this.f23982return = i300 + 1;
                                iArr6[i300] = 358;
                            }
                            break;
                        case 399:
                            if (this.f23984strictfp == 102) {
                                m28150import(209, oc.f4541try);
                            }
                            break;
                        case 401:
                            if (this.f23984strictfp == 93 && i7 > 36) {
                                i7 = 36;
                            }
                            break;
                        case TypedValues.Cycle.TYPE_VISIBILITY /* 402 */:
                            if (this.f23984strictfp == 105) {
                                int i301 = this.f23982return;
                                this.f23982return = i301 + 1;
                                iArr6[i301] = 399;
                            }
                            break;
                        case 406:
                            if (this.f23984strictfp == 116) {
                                m28150import(org.bouncycastle.math.Cdo.f31781do, 212);
                            }
                            break;
                        case 408:
                            if (this.f23984strictfp == 93 && i7 > 37) {
                                i7 = 37;
                            }
                            break;
                        case l80.f3561break /* 409 */:
                            if (this.f23984strictfp == 115) {
                                int i302 = this.f23982return;
                                this.f23982return = i302 + 1;
                                iArr6[i302] = 406;
                            }
                            break;
                        case 410:
                            if (this.f23984strictfp == 105) {
                                int i303 = this.f23982return;
                                this.f23982return = i303 + 1;
                                iArr6[i303] = 409;
                            }
                            break;
                        case 411:
                            if (this.f23984strictfp == 108) {
                                int i304 = this.f23982return;
                                this.f23982return = i304 + 1;
                                iArr6[i304] = 410;
                            }
                            break;
                        case 415:
                            if (this.f23984strictfp == 115) {
                                m28150import(213, 214);
                            }
                            break;
                        case 417:
                            if (this.f23984strictfp == 93 && i7 > 38) {
                                i7 = 38;
                            }
                            break;
                        case 418:
                            if (this.f23984strictfp == 109) {
                                int i305 = this.f23982return;
                                this.f23982return = i305 + 1;
                                iArr6[i305] = 415;
                            }
                            break;
                        case 419:
                            if (this.f23984strictfp == 101) {
                                int i306 = this.f23982return;
                                this.f23982return = i306 + 1;
                                iArr6[i306] = 418;
                            }
                            break;
                        case TypedValues.Cycle.TYPE_EASING /* 420 */:
                            if (this.f23984strictfp == 116) {
                                int i307 = this.f23982return;
                                this.f23982return = i307 + 1;
                                iArr6[i307] = 419;
                            }
                            break;
                        case 421:
                            if (this.f23984strictfp == 105) {
                                int i308 = this.f23982return;
                                this.f23982return = i308 + 1;
                                iArr6[i308] = 420;
                            }
                            break;
                        case TypedValues.Cycle.TYPE_WAVE_PHASE /* 425 */:
                            if (this.f23984strictfp == 112) {
                                m28150import(215, 216);
                            }
                            break;
                        case 427:
                            if (this.f23984strictfp == 93 && i7 > 39) {
                                i7 = 39;
                            }
                            break;
                        case 428:
                            if (this.f23984strictfp == 101) {
                                int i309 = this.f23982return;
                                this.f23982return = i309 + 1;
                                iArr6[i309] = 425;
                            }
                            break;
                        case l80.f3564class /* 429 */:
                            if (this.f23984strictfp == 115) {
                                int i310 = this.f23982return;
                                this.f23982return = i310 + 1;
                                iArr6[i310] = 428;
                            }
                            break;
                        case 433:
                            if (this.f23984strictfp == 114) {
                                m28150import(217, 218);
                            }
                            break;
                        case 435:
                            if (this.f23984strictfp == 93 && i7 > 40) {
                                i7 = 40;
                            }
                            break;
                        case 436:
                            if (this.f23984strictfp == 101) {
                                int i311 = this.f23982return;
                                this.f23982return = i311 + 1;
                                iArr6[i311] = 433;
                            }
                            break;
                        case 437:
                            if (this.f23984strictfp == 118) {
                                int i312 = this.f23982return;
                                this.f23982return = i312 + 1;
                                iArr6[i312] = 436;
                            }
                            break;
                        case 438:
                            if (this.f23984strictfp == 111) {
                                int i313 = this.f23982return;
                                this.f23982return = i313 + 1;
                                iArr6[i313] = 437;
                            }
                            break;
                        case 439:
                            if (this.f23984strictfp == 99) {
                                int i314 = this.f23982return;
                                this.f23982return = i314 + 1;
                                iArr6[i314] = 438;
                            }
                            break;
                        case 440:
                            if (this.f23984strictfp == 101) {
                                int i315 = this.f23982return;
                                this.f23982return = i315 + 1;
                                iArr6[i315] = 439;
                            }
                            break;
                        case 441:
                            if (this.f23984strictfp == 114) {
                                int i316 = this.f23982return;
                                this.f23982return = i316 + 1;
                                iArr6[i316] = 440;
                            }
                            break;
                        case 445:
                            if (this.f23984strictfp == 116) {
                                m28150import(219, FragmentManagerImpl.ANIM_DUR);
                            }
                            break;
                        case 447:
                            if (this.f23984strictfp == 93 && i7 > 41) {
                                i7 = 41;
                            }
                            break;
                        case 448:
                            if (this.f23984strictfp == 112) {
                                int i317 = this.f23982return;
                                this.f23982return = i317 + 1;
                                iArr6[i317] = 445;
                            }
                            break;
                        case 449:
                            if (this.f23984strictfp == 109) {
                                int i318 = this.f23982return;
                                this.f23982return = i318 + 1;
                                iArr6[i318] = 448;
                            }
                            break;
                        case 450:
                            if (this.f23984strictfp == 101) {
                                int i319 = this.f23982return;
                                this.f23982return = i319 + 1;
                                iArr6[i319] = 449;
                            }
                            break;
                        case 451:
                            if (this.f23984strictfp == 116) {
                                int i320 = this.f23982return;
                                this.f23982return = i320 + 1;
                                iArr6[i320] = 450;
                            }
                            break;
                        case 452:
                            if (this.f23984strictfp == 116) {
                                int i321 = this.f23982return;
                                this.f23982return = i321 + 1;
                                iArr6[i321] = 451;
                            }
                            break;
                        case 453:
                            if (this.f23984strictfp == 97) {
                                int i322 = this.f23982return;
                                this.f23982return = i322 + 1;
                                iArr6[i322] = 452;
                            }
                            break;
                        case 457:
                            if (this.f23984strictfp == 114) {
                                int i323 = this.f23982return;
                                this.f23982return = i323 + 1;
                                iArr6[i323] = 458;
                            }
                            break;
                        case 458:
                            if ((137438953504L & j4) != 0) {
                                int i324 = this.f23982return;
                                this.f23982return = i324 + 1;
                                iArr6[i324] = 463;
                            }
                            break;
                        case 459:
                            if (this.f23984strictfp == 104) {
                                m28150import(221, 222);
                            }
                            break;
                        case 461:
                            if (this.f23984strictfp == 93 && i7 > 42) {
                                i7 = 42;
                            }
                            break;
                        case 462:
                            if (this.f23984strictfp == 99) {
                                int i325 = this.f23982return;
                                this.f23982return = i325 + 1;
                                iArr6[i325] = 459;
                            }
                            break;
                        case 463:
                            if (this.f23984strictfp == 97) {
                                int i326 = this.f23982return;
                                this.f23982return = i326 + 1;
                                iArr6[i326] = 462;
                            }
                            break;
                        case 464:
                            if (this.f23984strictfp == 111) {
                                int i327 = this.f23982return;
                                this.f23982return = i327 + 1;
                                iArr6[i327] = 457;
                            }
                            break;
                        case 465:
                            if (this.f23984strictfp == 102) {
                                int i328 = this.f23982return;
                                this.f23982return = i328 + 1;
                                iArr6[i328] = 464;
                            }
                            break;
                        case 469:
                            if (this.f23984strictfp == 108) {
                                m28150import(223, 224);
                            }
                            break;
                        case 471:
                            if (this.f23984strictfp == 93 && i7 > 43) {
                                i7 = 43;
                            }
                            break;
                        case 472:
                            if (this.f23984strictfp == 97) {
                                int i329 = this.f23982return;
                                this.f23982return = i329 + 1;
                                iArr6[i329] = 469;
                            }
                            break;
                        case 473:
                            if (this.f23984strictfp == 99) {
                                int i330 = this.f23982return;
                                this.f23982return = i330 + 1;
                                iArr6[i330] = 472;
                            }
                            break;
                        case 474:
                            if (this.f23984strictfp == 111) {
                                int i331 = this.f23982return;
                                this.f23982return = i331 + 1;
                                iArr6[i331] = 473;
                            }
                            break;
                        case 475:
                            if (this.f23984strictfp == 108) {
                                int i332 = this.f23982return;
                                this.f23982return = i332 + 1;
                                iArr6[i332] = 474;
                            }
                            break;
                        case 479:
                            if (this.f23984strictfp == 108) {
                                m28150import(225, 226);
                            }
                            break;
                        case 481:
                            if (this.f23984strictfp == 93 && i7 > 44) {
                                i7 = 44;
                            }
                            break;
                        case 482:
                            if (this.f23984strictfp == 97) {
                                int i333 = this.f23982return;
                                this.f23982return = i333 + 1;
                                iArr6[i333] = 479;
                            }
                            break;
                        case 483:
                            if (this.f23984strictfp == 98) {
                                int i334 = this.f23982return;
                                this.f23982return = i334 + 1;
                                iArr6[i334] = 482;
                            }
                            break;
                        case 484:
                            if (this.f23984strictfp == 111) {
                                int i335 = this.f23982return;
                                this.f23982return = i335 + 1;
                                iArr6[i335] = 483;
                            }
                            break;
                        case 485:
                            if (this.f23984strictfp == 108) {
                                int i336 = this.f23982return;
                                this.f23982return = i336 + 1;
                                iArr6[i336] = 484;
                            }
                            break;
                        case 486:
                            if (this.f23984strictfp == 103) {
                                int i337 = this.f23982return;
                                this.f23982return = i337 + 1;
                                iArr6[i337] = 485;
                            }
                            break;
                        case 490:
                            if (this.f23984strictfp == 110) {
                                m28150import(227, 228);
                            }
                            break;
                        case 492:
                            if (this.f23984strictfp == 93 && i7 > 45) {
                                i7 = 45;
                            }
                            break;
                        case 493:
                            if (this.f23984strictfp == 103) {
                                int i338 = this.f23982return;
                                this.f23982return = i338 + 1;
                                iArr6[i338] = 490;
                            }
                            break;
                        case 494:
                            if (this.f23984strictfp == 105) {
                                int i339 = this.f23982return;
                                this.f23982return = i339 + 1;
                                iArr6[i339] = 493;
                            }
                            break;
                        case 495:
                            if (this.f23984strictfp == 115) {
                                int i340 = this.f23982return;
                                this.f23982return = i340 + 1;
                                iArr6[i340] = 494;
                            }
                            break;
                        case 496:
                            if (this.f23984strictfp == 115) {
                                int i341 = this.f23982return;
                                this.f23982return = i341 + 1;
                                iArr6[i341] = 495;
                            }
                            break;
                        case 497:
                            if (this.f23984strictfp == 97) {
                                int i342 = this.f23982return;
                                this.f23982return = i342 + 1;
                                iArr6[i342] = 496;
                            }
                            break;
                        case TypedValues.Position.TYPE_TRANSITION_EASING /* 501 */:
                            if (this.f23984strictfp == 110) {
                                m28150import(229, 230);
                            }
                            break;
                        case 503:
                            if (this.f23984strictfp == 93 && i7 > 46) {
                                i7 = 46;
                            }
                            break;
                        case TypedValues.Position.TYPE_PERCENT_HEIGHT /* 504 */:
                            if (this.f23984strictfp == 111) {
                                int i343 = this.f23982return;
                                this.f23982return = i343 + 1;
                                iArr6[i343] = 501;
                            }
                            break;
                        case TypedValues.Position.TYPE_SIZE_PERCENT /* 505 */:
                            if (this.f23984strictfp == 105) {
                                int i344 = this.f23982return;
                                this.f23982return = i344 + 1;
                                iArr6[i344] = 504;
                            }
                            break;
                        case TypedValues.Position.TYPE_PERCENT_X /* 506 */:
                            if (this.f23984strictfp == 116) {
                                int i345 = this.f23982return;
                                this.f23982return = i345 + 1;
                                iArr6[i345] = 505;
                            }
                            break;
                        case TypedValues.Position.TYPE_PERCENT_Y /* 507 */:
                            if (this.f23984strictfp == 99) {
                                int i346 = this.f23982return;
                                this.f23982return = i346 + 1;
                                iArr6[i346] = 506;
                            }
                            break;
                        case TypedValues.Position.TYPE_CURVE_FIT /* 508 */:
                            if (this.f23984strictfp == 110) {
                                int i347 = this.f23982return;
                                this.f23982return = i347 + 1;
                                iArr6[i347] = 507;
                            }
                            break;
                        case 509:
                            if (this.f23984strictfp == 117) {
                                int i348 = this.f23982return;
                                this.f23982return = i348 + 1;
                                iArr6[i348] = 508;
                            }
                            break;
                        case TypedValues.Position.TYPE_POSITION_TYPE /* 510 */:
                            if (this.f23984strictfp == 102) {
                                int i349 = this.f23982return;
                                this.f23982return = i349 + 1;
                                iArr6[i349] = 509;
                            }
                            break;
                        case 514:
                            if (this.f23984strictfp == 111) {
                                m28150import(231, 232);
                            }
                            break;
                        case 516:
                            if (this.f23984strictfp == 93) {
                                if (i7 > 47) {
                                    i7 = 47;
                                }
                            }
                            break;
                        case 517:
                            if (this.f23984strictfp == 114) {
                                int i350 = this.f23982return;
                                this.f23982return = i350 + 1;
                                iArr6[i350] = 514;
                                break;
                            }
                        case 518:
                            if (this.f23984strictfp == 99) {
                                int i351 = this.f23982return;
                                this.f23982return = i351 + 1;
                                iArr6[i351] = 517;
                            }
                            break;
                        case 519:
                            if (this.f23984strictfp == 97) {
                                int i352 = this.f23982return;
                                this.f23982return = i352 + 1;
                                iArr6[i352] = 518;
                            }
                            break;
                        case 520:
                            if (this.f23984strictfp == 109) {
                                int i353 = this.f23982return;
                                this.f23982return = i353 + 1;
                                iArr6[i353] = 519;
                            }
                            break;
                        case 524:
                            if (this.f23984strictfp == 116) {
                                int i354 = this.f23982return;
                                this.f23982return = i354 + 1;
                                iArr6[i354] = 525;
                            }
                            break;
                        case 525:
                            if ((274877907008L & j4) != 0) {
                                int i355 = this.f23982return;
                                this.f23982return = i355 + 1;
                                iArr6[i355] = 532;
                            }
                            break;
                        case 526:
                            if (this.f23984strictfp == 116) {
                                m28150import(233, 234);
                            }
                            break;
                        case 528:
                            if (this.f23984strictfp == 93 && i7 > 48) {
                                i7 = 48;
                            }
                            break;
                        case 529:
                            if (this.f23984strictfp == 97) {
                                int i356 = this.f23982return;
                                this.f23982return = i356 + 1;
                                iArr6[i356] = 526;
                            }
                            break;
                        case 530:
                            if (this.f23984strictfp == 109) {
                                int i357 = this.f23982return;
                                this.f23982return = i357 + 1;
                                iArr6[i357] = 529;
                            }
                            break;
                        case 531:
                            if (this.f23984strictfp == 114) {
                                int i358 = this.f23982return;
                                this.f23982return = i358 + 1;
                                iArr6[i358] = 530;
                                break;
                            }
                        case 532:
                            if (this.f23984strictfp == 111) {
                                int i359 = this.f23982return;
                                this.f23982return = i359 + 1;
                                iArr6[i359] = 531;
                            }
                            break;
                        case 533:
                            if (this.f23984strictfp == 117) {
                                int i360 = this.f23982return;
                                this.f23982return = i360 + 1;
                                iArr6[i360] = 524;
                            }
                            break;
                        case 534:
                            if (this.f23984strictfp == 112) {
                                int i361 = this.f23982return;
                                this.f23982return = i361 + 1;
                                iArr6[i361] = 533;
                            }
                            break;
                        case 535:
                            if (this.f23984strictfp == 116) {
                                int i362 = this.f23982return;
                                this.f23982return = i362 + 1;
                                iArr6[i362] = 534;
                            }
                            break;
                        case 536:
                            if (this.f23984strictfp == 117) {
                                int i363 = this.f23982return;
                                this.f23982return = i363 + 1;
                                iArr6[i363] = 535;
                            }
                            break;
                        case 537:
                            if (this.f23984strictfp == 111) {
                                int i364 = this.f23982return;
                                this.f23982return = i364 + 1;
                                iArr6[i364] = 536;
                            }
                            break;
                        case 541:
                            if (this.f23984strictfp == 111) {
                                int i365 = this.f23982return;
                                this.f23982return = i365 + 1;
                                iArr6[i365] = 542;
                            }
                            break;
                        case 542:
                            if ((137438953504L & j4) != 0) {
                                int i366 = this.f23982return;
                                this.f23982return = i366 + 1;
                                iArr6[i366] = 546;
                            }
                            break;
                        case 543:
                            if (this.f23984strictfp == 99) {
                                m28150import(235, 236);
                            }
                            break;
                        case 545:
                            if (this.f23984strictfp == 93 && i7 > 49) {
                                i7 = 49;
                            }
                            break;
                        case 546:
                            if (this.f23984strictfp == 115) {
                                int i367 = this.f23982return;
                                this.f23982return = i367 + 1;
                                iArr6[i367] = 543;
                            }
                            break;
                        case 547:
                            if (this.f23984strictfp == 116) {
                                int i368 = this.f23982return;
                                this.f23982return = i368 + 1;
                                iArr6[i368] = 541;
                            }
                            break;
                        case 548:
                            if (this.f23984strictfp == 117) {
                                int i369 = this.f23982return;
                                this.f23982return = i369 + 1;
                                iArr6[i369] = 547;
                            }
                            break;
                        case 549:
                            if (this.f23984strictfp == 97) {
                                int i370 = this.f23982return;
                                this.f23982return = i370 + 1;
                                iArr6[i370] = 548;
                            }
                            break;
                        case 553:
                            if (this.f23984strictfp == 111) {
                                m28150import(335, 336);
                            }
                            break;
                        case 554:
                            if (this.f23984strictfp == 101) {
                                m28158return(558);
                            }
                            break;
                        case 555:
                            if (this.f23984strictfp == 99) {
                                m28150import(237, 238);
                            }
                            break;
                        case 557:
                            if (this.f23984strictfp == 93 && i7 > 50) {
                                i7 = 50;
                            }
                            break;
                        case 558:
                            if (this.f23984strictfp == 115) {
                                int i371 = this.f23982return;
                                this.f23982return = i371 + 1;
                                iArr6[i371] = 555;
                            }
                            break;
                        case 559:
                            if (this.f23984strictfp == 111) {
                                int i372 = this.f23982return;
                                this.f23982return = i372 + 1;
                                iArr6[i372] = 554;
                            }
                            break;
                        case 560:
                            if (this.f23984strictfp == 116) {
                                int i373 = this.f23982return;
                                this.f23982return = i373 + 1;
                                iArr6[i373] = 559;
                            }
                            break;
                        case 561:
                            if (this.f23984strictfp == 117) {
                                int i374 = this.f23982return;
                                this.f23982return = i374 + 1;
                                iArr6[i374] = 560;
                            }
                            break;
                        case 562:
                            if (this.f23984strictfp == 97) {
                                int i375 = this.f23982return;
                                this.f23982return = i375 + 1;
                                iArr6[i375] = 561;
                            }
                            break;
                        case 563:
                            if (this.f23984strictfp == 69) {
                                m28158return(558);
                            }
                            break;
                        case 564:
                            if (this.f23984strictfp == 111) {
                                int i376 = this.f23982return;
                                this.f23982return = i376 + 1;
                                iArr6[i376] = 563;
                            }
                            break;
                        case 565:
                            if (this.f23984strictfp == 116) {
                                int i377 = this.f23982return;
                                this.f23982return = i377 + 1;
                                iArr6[i377] = 564;
                            }
                            break;
                        case 566:
                            if (this.f23984strictfp == 117) {
                                int i378 = this.f23982return;
                                this.f23982return = i378 + 1;
                                iArr6[i378] = 565;
                            }
                            break;
                        case 567:
                            if (this.f23984strictfp == 65) {
                                int i379 = this.f23982return;
                                this.f23982return = i379 + 1;
                                iArr6[i379] = 566;
                            }
                            break;
                        case 568:
                            if (this.f23984strictfp == 110) {
                                int i380 = this.f23982return;
                                this.f23982return = i380 + 1;
                                iArr6[i380] = 553;
                            }
                            break;
                        case 572:
                            if (this.f23984strictfp == 115) {
                                m28150import(239, MountainSceneView.f20267finally);
                            }
                            break;
                        case 574:
                            if (this.f23984strictfp == 93 && i7 > 51) {
                                i7 = 51;
                            }
                            break;
                        case 575:
                            if (this.f23984strictfp == 115) {
                                int i381 = this.f23982return;
                                this.f23982return = i381 + 1;
                                iArr6[i381] = 572;
                            }
                            break;
                        case 576:
                            if (this.f23984strictfp == 101) {
                                int i382 = this.f23982return;
                                this.f23982return = i382 + 1;
                                iArr6[i382] = 575;
                            }
                            break;
                        case 577:
                            if (this.f23984strictfp == 114) {
                                int i383 = this.f23982return;
                                this.f23982return = i383 + 1;
                                iArr6[i383] = 576;
                                break;
                            }
                        case 578:
                            if (this.f23984strictfp == 112) {
                                int i384 = this.f23982return;
                                this.f23982return = i384 + 1;
                                iArr6[i384] = 577;
                            }
                            break;
                        case 579:
                            if (this.f23984strictfp == 109) {
                                int i385 = this.f23982return;
                                this.f23982return = i385 + 1;
                                iArr6[i385] = 578;
                            }
                            break;
                        case 580:
                            if (this.f23984strictfp == 111) {
                                int i386 = this.f23982return;
                                this.f23982return = i386 + 1;
                                iArr6[i386] = 579;
                            }
                            break;
                        case 581:
                            if (this.f23984strictfp == 99) {
                                int i387 = this.f23982return;
                                this.f23982return = i387 + 1;
                                iArr6[i387] = 580;
                            }
                            break;
                        case 585:
                            if (this.f23984strictfp == 109) {
                                m28150import(241, 242);
                            }
                            break;
                        case 587:
                            if (this.f23984strictfp == 93 && i7 > 52) {
                                i7 = 52;
                            }
                            break;
                        case 588:
                            if (this.f23984strictfp == 114) {
                                int i388 = this.f23982return;
                                this.f23982return = i388 + 1;
                                iArr6[i388] = 585;
                                break;
                            }
                        case 589:
                            if (this.f23984strictfp == 111) {
                                int i389 = this.f23982return;
                                this.f23982return = i389 + 1;
                                iArr6[i389] = 588;
                            }
                            break;
                        case 590:
                            if (this.f23984strictfp == 102) {
                                int i390 = this.f23982return;
                                this.f23982return = i390 + 1;
                                iArr6[i390] = 589;
                            }
                            break;
                        case 591:
                            if (this.f23984strictfp == 115) {
                                int i391 = this.f23982return;
                                this.f23982return = i391 + 1;
                                iArr6[i391] = 590;
                            }
                            break;
                        case 592:
                            if (this.f23984strictfp == 110) {
                                int i392 = this.f23982return;
                                this.f23982return = i392 + 1;
                                iArr6[i392] = 591;
                            }
                            break;
                        case 593:
                            if (this.f23984strictfp == 97) {
                                int i393 = this.f23982return;
                                this.f23982return = i393 + 1;
                                iArr6[i393] = 592;
                            }
                            break;
                        case 594:
                            if (this.f23984strictfp == 114) {
                                int i394 = this.f23982return;
                                this.f23982return = i394 + 1;
                                iArr6[i394] = 593;
                                break;
                            }
                        case 595:
                            if (this.f23984strictfp == 116) {
                                int i395 = this.f23982return;
                                this.f23982return = i395 + 1;
                                iArr6[i395] = 594;
                            }
                            break;
                        case 599:
                            if (this.f23984strictfp == 104) {
                                m28150import(243, 244);
                            }
                            break;
                        case 601:
                            if (this.f23984strictfp == 93 && i7 > 53) {
                                i7 = 53;
                            }
                            break;
                        case TypedValues.Motion.TYPE_QUANTIZE_MOTION_PHASE /* 602 */:
                            if (this.f23984strictfp == 99) {
                                int i396 = this.f23982return;
                                this.f23982return = i396 + 1;
                                iArr6[i396] = 599;
                            }
                            break;
                        case TypedValues.Motion.TYPE_EASING /* 603 */:
                            if (this.f23984strictfp == 116) {
                                int i397 = this.f23982return;
                                this.f23982return = i397 + 1;
                                iArr6[i397] = 602;
                            }
                            break;
                        case TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR /* 604 */:
                            if (this.f23984strictfp == 105) {
                                int i398 = this.f23982return;
                                this.f23982return = i398 + 1;
                                iArr6[i398] = 603;
                            }
                            break;
                        case TypedValues.Motion.TYPE_ANIMATE_RELATIVE_TO /* 605 */:
                            if (this.f23984strictfp == 119) {
                                int i399 = this.f23982return;
                                this.f23982return = i399 + 1;
                                iArr6[i399] = 604;
                            }
                            break;
                        case TypedValues.Motion.TYPE_ANIMATE_CIRCLEANGLE_TO /* 606 */:
                            if (this.f23984strictfp == 115) {
                                int i400 = this.f23982return;
                                this.f23982return = i400 + 1;
                                iArr6[i400] = 605;
                            }
                            break;
                        case 627:
                            if (this.f23984strictfp == 101) {
                                m28150import(245, 246);
                            }
                            break;
                        case 629:
                            if (this.f23984strictfp == 93 && i7 > 71) {
                                i7 = 71;
                            }
                            break;
                        case 630:
                            if (this.f23984strictfp == 112) {
                                int i401 = this.f23982return;
                                this.f23982return = i401 + 1;
                                iArr6[i401] = 627;
                            }
                            break;
                        case 631:
                            if (this.f23984strictfp == 97) {
                                int i402 = this.f23982return;
                                this.f23982return = i402 + 1;
                                iArr6[i402] = 630;
                            }
                            break;
                        case 632:
                            if (this.f23984strictfp == 99) {
                                int i403 = this.f23982return;
                                this.f23982return = i403 + 1;
                                iArr6[i403] = 631;
                            }
                            break;
                        case 633:
                            if (this.f23984strictfp == 115) {
                                int i404 = this.f23982return;
                                this.f23982return = i404 + 1;
                                iArr6[i404] = 632;
                            }
                            break;
                        case 634:
                            if (this.f23984strictfp == 101) {
                                int i405 = this.f23982return;
                                this.f23982return = i405 + 1;
                                iArr6[i405] = 633;
                            }
                            break;
                        case 639:
                            if (this.f23984strictfp == 111) {
                                int i406 = this.f23982return;
                                this.f23982return = i406 + 1;
                                iArr6[i406] = 640;
                            }
                            break;
                        case 640:
                            if ((137438953504L & j4) != 0) {
                                int i407 = this.f23982return;
                                this.f23982return = i407 + 1;
                                iArr6[i407] = 647;
                            }
                            break;
                        case 641:
                            if (this.f23984strictfp == 101) {
                                m28150import(247, 248);
                            }
                            break;
                        case 643:
                            if (this.f23984strictfp == 93 && i7 > 73) {
                                i7 = 73;
                            }
                            break;
                        case 644:
                            if (this.f23984strictfp == 112) {
                                int i408 = this.f23982return;
                                this.f23982return = i408 + 1;
                                iArr6[i408] = 641;
                            }
                            break;
                        case 645:
                            if (this.f23984strictfp == 97) {
                                int i409 = this.f23982return;
                                this.f23982return = i409 + 1;
                                iArr6[i409] = 644;
                            }
                            break;
                        case 646:
                            if (this.f23984strictfp == 99) {
                                int i410 = this.f23982return;
                                this.f23982return = i410 + 1;
                                iArr6[i410] = 645;
                            }
                            break;
                        case 647:
                            if (this.f23984strictfp == 115) {
                                int i411 = this.f23982return;
                                this.f23982return = i411 + 1;
                                iArr6[i411] = 646;
                            }
                            break;
                        case 648:
                            if (this.f23984strictfp == 110) {
                                int i412 = this.f23982return;
                                this.f23982return = i412 + 1;
                                iArr6[i412] = 639;
                            }
                            break;
                        case 651:
                        case 697:
                            if (this.f23984strictfp == 64 && i7 > 74) {
                                i7 = 74;
                            }
                            break;
                        case 652:
                            if (this.f23984strictfp == 108) {
                                int i413 = this.f23982return;
                                this.f23982return = i413 + 1;
                                iArr6[i413] = 653;
                            }
                            break;
                        case 654:
                        case 687:
                            if (this.f23984strictfp == 116) {
                                m28158return(652);
                            }
                            break;
                        case 655:
                            if (this.f23984strictfp == 102) {
                                int i414 = this.f23982return;
                                this.f23982return = i414 + 1;
                                iArr6[i414] = 654;
                            }
                            break;
                        case 657:
                            if (this.f23984strictfp == 108) {
                                m28150import(337, 338);
                            }
                            break;
                        case 659:
                            if (this.f23984strictfp == 93 && i7 > 77) {
                                i7 = 77;
                            }
                            break;
                        case 660:
                        case 690:
                            if (this.f23984strictfp == 116) {
                                m28158return(657);
                            }
                            break;
                        case 661:
                            if (this.f23984strictfp == 102) {
                                int i415 = this.f23982return;
                                this.f23982return = i415 + 1;
                                iArr6[i415] = 660;
                            }
                            break;
                        case 664:
                            if ((576460745995190270L & j4) != 0) {
                                if (i7 > 78) {
                                    i7 = 78;
                                }
                                int i416 = this.f23982return;
                                this.f23982return = i416 + 1;
                                iArr6[i416] = 664;
                            }
                            break;
                        case 666:
                            if (this.f23984strictfp == 91) {
                                m28150import(261, 332);
                            }
                            break;
                        case 688:
                            if (this.f23984strictfp == 102) {
                                int i417 = this.f23982return;
                                this.f23982return = i417 + 1;
                                iArr6[i417] = 687;
                            }
                            break;
                        case 691:
                            if (this.f23984strictfp == 102) {
                                int i418 = this.f23982return;
                                this.f23982return = i418 + 1;
                                iArr6[i418] = 690;
                            }
                            break;
                        case 694:
                            if (this.f23984strictfp == 91) {
                                m28150import(7, 8);
                            }
                            break;
                        case 698:
                            if (this.f23984strictfp == 64) {
                                m28159static(339, 342);
                            }
                            break;
                        case 699:
                        case TypedValues.Transition.TYPE_DURATION /* 700 */:
                            if ((576460745995190271L & j4) != 0) {
                                m28159static(249, 253);
                            }
                            break;
                        case TypedValues.Transition.TYPE_FROM /* 701 */:
                        case 711:
                            if (this.f23984strictfp == 92) {
                                m28158return(TypedValues.Transition.TYPE_TO);
                            }
                            break;
                        case 704:
                        case TypedValues.Transition.TYPE_INTERPOLATOR /* 705 */:
                            if ((576460745995190271L & j4) != 0) {
                                m28159static(256, 260);
                            }
                            break;
                        case TypedValues.Transition.TYPE_STAGGERED /* 706 */:
                        case 710:
                            if (this.f23984strictfp == 92) {
                                m28158return(TypedValues.Transition.TYPE_TRANSITION_FLAGS);
                            }
                            break;
                        case 709:
                            if (this.f23984strictfp == 93 && i7 > 75) {
                                i7 = 75;
                            }
                            break;
                    }
                } while (i8 != i6);
            } else {
                int i419 = i10 >> 8;
                int i420 = i419 >> 6;
                long j5 = 1 << (i419 & 63);
                int i421 = (i10 & 255) >> 6;
                long j6 = 1 << (i10 & 63);
                do {
                    i8--;
                    int i422 = this.f23972finally[i8];
                    if (i422 == 1 || i422 == 2) {
                        if (m28153native(i419, i420, i421, j5, j6)) {
                            if (i7 > 80) {
                                i7 = 80;
                            }
                            m28158return(1);
                        }
                    } else if (i422 == 699 || i422 == 700) {
                        if (m28157public(i419, i420, i421, j5, j6)) {
                            m28159static(249, 253);
                        }
                    } else if (i422 == 704 || i422 == 705) {
                        if (m28157public(i419, i420, i421, j5, j6)) {
                            m28159static(256, 260);
                        }
                    } else if (i420 != 0) {
                        int i423 = (j5 > 0L ? 1 : (j5 == 0L ? 0 : -1));
                    }
                } while (i8 != i6);
                if (i7 != Integer.MAX_VALUE) {
                }
                i5++;
                i8 = this.f23982return;
                this.f23982return = i6;
                i6 = 713 - i6;
                if (i8 == i6) {
                }
            }
            if (i7 != Integer.MAX_VALUE) {
            }
            i5++;
            i8 = this.f23982return;
            this.f23982return = i6;
            i6 = 713 - i6;
            if (i8 == i6) {
            }
        }
    }

    private int e(long j2, long j3) {
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '+') {
                    if (cM28301finally != '-') {
                        if (cM28301finally == '.') {
                            if ((68719476736L & j2) != 0) {
                                this.f23989throws = 100;
                                this.f23986switch = 1;
                            }
                            return i(j2, 1152921779484753920L, j3, 0L);
                        }
                        if (cM28301finally != '=') {
                            if (cM28301finally != '?') {
                                if (cM28301finally == 'a') {
                                    return i(j2, 2147483648L, j3, 0L);
                                }
                                if (cM28301finally != 'n') {
                                    if (cM28301finally == 'r') {
                                        return i(j2, o3.f24027catch, j3, 0L);
                                    }
                                    if (cM28301finally == 's') {
                                        return (4096 & j3) != 0 ? u(1, 140, 101) : i(j2, 0L, j3, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                                    }
                                } else if ((PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH & j3) != 0) {
                                    return u(1, 139, 101);
                                }
                            } else if ((1099511627776L & j2) != 0) {
                                return F(1, 104);
                            }
                        } else {
                            if ((4398046511104L & j2) != 0) {
                                return F(1, 106);
                            }
                            if ((8796093022208L & j2) != 0) {
                                return F(1, 107);
                            }
                            if ((17592186044416L & j2) != 0) {
                                return F(1, 108);
                            }
                            if ((35184372088832L & j2) != 0) {
                                return F(1, 109);
                            }
                            if ((70368744177664L & j2) != 0) {
                                return F(1, 110);
                            }
                            if ((140737488355328L & j2) != 0) {
                                return F(1, 111);
                            }
                            if ((281474976710656L & j2) != 0) {
                                return F(1, 112);
                            }
                            if ((8388608 & j3) != 0) {
                                return F(1, 151);
                            }
                        }
                    } else if ((1125899906842624L & j2) != 0) {
                        return F(1, 114);
                    }
                } else if ((562949953421312L & j2) != 0) {
                    return F(1, 113);
                }
            } else if ((576460752303423488L & j2) != 0) {
                return F(1, 123);
            }
            return B(0, 0L, j2, j3);
        } catch (IOException unused) {
            J(0, 0L, j2, j3);
            return 1;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private int m28145extends(int i2, int i3) {
        this.f23982return = 3;
        int i4 = 0;
        this.f23972finally[0] = i2;
        int i5 = i3;
        int i6 = 1;
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        while (true) {
            int i9 = this.f23983static + 1;
            this.f23983static = i9;
            if (i9 == Integer.MAX_VALUE) {
                m28148for();
            }
            int i10 = this.f23984strictfp;
            if (i10 < 64) {
                long j2 = 1 << i10;
                do {
                    i6--;
                    int i11 = this.f23972finally[i6];
                    if (i11 != 0) {
                        if (i11 != 1) {
                            if (i11 == 2) {
                                if ((j2 & (-1152921611981039105L)) != 0) {
                                    if (i7 > 80) {
                                        i7 = 80;
                                    }
                                    m28158return(1);
                                } else if ((j2 & 4294977024L) != 0) {
                                    if (i7 > 79) {
                                        i7 = 79;
                                    }
                                    m28158return(i4);
                                } else if ((j2 & 1152921607686062080L) != 0 && i7 > 81) {
                                    i7 = 81;
                                }
                            }
                        } else if ((j2 & (-1152921611981039105L)) != 0) {
                            m28158return(1);
                            i7 = 80;
                        }
                    } else if ((j2 & 4294977024L) != 0) {
                        m28158return(i4);
                        i7 = 79;
                    }
                } while (i6 != i8);
            } else if (i10 < 128) {
                long j3 = 1 << (i10 & 63);
                do {
                    i6--;
                    int i12 = this.f23972finally[i6];
                    if (i12 != 1) {
                        if (i12 == 2) {
                            if ((j3 & (-576460752437641217L)) != 0) {
                                if (i7 > 80) {
                                    i7 = 80;
                                }
                                m28158return(1);
                            } else if ((j3 & 576460752437641216L) != 0 && i7 > 81) {
                                i7 = 81;
                            }
                        }
                    } else if ((j3 & (-576460752437641217L)) != 0) {
                        m28158return(1);
                        i7 = 80;
                    }
                } while (i6 != i8);
            } else {
                int i13 = i10 >> 8;
                int i14 = i13 >> 6;
                long j4 = 1 << (i13 & 63);
                int i15 = (i10 & 255) >> 6;
                long j5 = 1 << (i10 & 63);
                do {
                    i6--;
                    int i16 = this.f23972finally[i6];
                    if (i16 == 1 || i16 == 2) {
                        if (m28153native(i13, i14, i15, j4, j5)) {
                            if (i7 > 80) {
                                i7 = 80;
                            }
                            m28158return(1);
                        }
                    } else if (i14 != 0) {
                        int i17 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                    }
                } while (i6 != i8);
            }
            if (i7 != Integer.MAX_VALUE) {
                this.f23989throws = i7;
                this.f23986switch = i5;
                i7 = Integer.MAX_VALUE;
            }
            i5++;
            i6 = this.f23982return;
            this.f23982return = i8;
            i8 = 3 - i8;
            if (i6 == i8) {
                return i5;
            }
            try {
                this.f23984strictfp = this.f23967default.m28301finally();
                i4 = 0;
            } catch (IOException unused) {
                return i5;
            }
        }
    }

    private int f(long j2, long j3) {
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '+') {
                    if (cM28301finally != '-') {
                        if (cM28301finally == '.') {
                            if ((68719476736L & j2) != 0) {
                                this.f23989throws = 100;
                                this.f23986switch = 1;
                            }
                            return j(j2, 1152921779484753920L, j3, 0L);
                        }
                        if (cM28301finally != '=') {
                            if (cM28301finally != '?') {
                                if (cM28301finally == 'a') {
                                    return j(j2, 2147483648L, j3, 0L);
                                }
                                if (cM28301finally != 'n') {
                                    if (cM28301finally == 'r') {
                                        return j(j2, o3.f24027catch, j3, 0L);
                                    }
                                    if (cM28301finally == 's') {
                                        return (4096 & j3) != 0 ? v(1, 140, 106) : j(j2, 0L, j3, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                                    }
                                } else if ((PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH & j3) != 0) {
                                    return v(1, 139, 106);
                                }
                            } else if ((1099511627776L & j2) != 0) {
                                return F(1, 104);
                            }
                        } else {
                            if ((4398046511104L & j2) != 0) {
                                return F(1, 106);
                            }
                            if ((8796093022208L & j2) != 0) {
                                return F(1, 107);
                            }
                            if ((17592186044416L & j2) != 0) {
                                return F(1, 108);
                            }
                            if ((35184372088832L & j2) != 0) {
                                return F(1, 109);
                            }
                            if ((70368744177664L & j2) != 0) {
                                return F(1, 110);
                            }
                            if ((140737488355328L & j2) != 0) {
                                return F(1, 111);
                            }
                            if ((281474976710656L & j2) != 0) {
                                return F(1, 112);
                            }
                        }
                    } else if ((1125899906842624L & j2) != 0) {
                        return F(1, 114);
                    }
                } else if ((562949953421312L & j2) != 0) {
                    return F(1, 113);
                }
            } else if ((576460752303423488L & j2) != 0) {
                return F(1, 123);
            }
            return C(0, 0L, j2, j3);
        } catch (IOException unused) {
            K(0, 0L, j2, j3);
            return 1;
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static int m28146final(m4 m4Var, int i2) {
        return yk2.m9893new(m28142const(m4Var, i2)) ? 12 : 11;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:710:0x046f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0156  */
    /* renamed from: finally, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28147finally(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        this.f23982return = 104;
        this.f23972finally[0] = i2;
        int i11 = 1;
        int i12 = i3;
        int i13 = 0;
        int i14 = Integer.MAX_VALUE;
        int i15 = 1;
        while (true) {
            int i16 = this.f23983static + i11;
            this.f23983static = i16;
            if (i16 == Integer.MAX_VALUE) {
                m28148for();
            }
            int i17 = this.f23984strictfp;
            int i18 = 97;
            if (i17 < 64) {
                long j2 = 1 << i17;
                do {
                    int[] iArr = this.f23972finally;
                    i15--;
                    switch (iArr[i15]) {
                        case 0:
                            if ((j2 & 4294977024L) == 0) {
                                break;
                            } else {
                                if (i14 > 85) {
                                    i14 = 85;
                                }
                                m28158return(0);
                                break;
                            }
                        case 1:
                            if ((j2 & 287948901175001088L) != 0) {
                                if (i14 > 97) {
                                    i14 = 97;
                                }
                                m28159static(343, 345);
                            } else if ((j2 & 4294977024L) != 0) {
                                if (i14 > 85) {
                                    i14 = 85;
                                }
                                m28158return(0);
                            } else {
                                int i19 = this.f23984strictfp;
                                if (i19 == 38) {
                                    m28150import(346, 351);
                                } else if (i19 == 46) {
                                    m28150import(352, 353);
                                } else if (i19 == 45) {
                                    m28150import(354, 355);
                                } else if (i19 == 47) {
                                    m28150import(356, 357);
                                } else if (i19 != 35 && i19 != 36) {
                                    if (i19 != 60) {
                                        if (i19 != 39) {
                                            i9 = 34;
                                            if (i19 == 34) {
                                                m28159static(361, 363);
                                            }
                                            i10 = this.f23984strictfp;
                                            if (i10 != 36) {
                                                if (i14 > 142) {
                                                    i14 = 142;
                                                }
                                                m28162switch(i9, 35);
                                            } else if (i10 == 38) {
                                                if (i14 > 127) {
                                                    i14 = 127;
                                                }
                                            } else if (i10 == 60 && i14 > 115) {
                                                i14 = 115;
                                            }
                                            if (this.f23984strictfp == 60) {
                                                break;
                                            } else {
                                                int[] iArr2 = this.f23972finally;
                                                int i20 = this.f23982return;
                                                this.f23982return = i20 + 1;
                                                iArr2[i20] = 2;
                                                break;
                                            }
                                        } else {
                                            m28159static(358, FunGameBattleCityHeader.u);
                                        }
                                    } else {
                                        m28158return(27);
                                    }
                                } else {
                                    m28158return(38);
                                }
                            }
                            i9 = 34;
                            i10 = this.f23984strictfp;
                            if (i10 != 36) {
                            }
                            if (this.f23984strictfp == 60) {
                            }
                            break;
                        case 2:
                            if ((j2 & 42949672960L) == 0) {
                                if (this.f23984strictfp == 61 && i14 > 143) {
                                    i14 = 143;
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                int i21 = this.f23982return;
                                this.f23982return = i21 + 1;
                                iArr[i21] = 4;
                                break;
                            }
                        case 3:
                            if (this.f23984strictfp == 45 && i14 > 86) {
                                i14 = 86;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 4:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                int i22 = this.f23982return;
                                this.f23982return = i22 + 1;
                                iArr[i22] = 3;
                                break;
                            }
                        case 5:
                            if (this.f23984strictfp != 34) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 6:
                            if ((j2 & (-17179869185L)) == 0) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 9:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 10:
                            if (this.f23984strictfp == 34 && i14 > 93) {
                                i14 = 93;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 11:
                            if ((j2 & 2305843576149377024L) == 0) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 12:
                            if (this.f23984strictfp != 39) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 13:
                            if ((j2 & (-549755813889L)) == 0) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 16:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 17:
                            if (this.f23984strictfp != 39 || i14 <= 93) {
                                break;
                            }
                            break;
                        case 18:
                            if ((j2 & 2305843576149377024L) == 0) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 20:
                            if (this.f23984strictfp != 34) {
                                break;
                            } else {
                                m28162switch(21, 22);
                                break;
                            }
                        case 21:
                            if ((j2 & (-17179869185L)) == 0) {
                                break;
                            } else {
                                m28162switch(21, 22);
                                break;
                            }
                        case 22:
                            if (this.f23984strictfp == 34 && i14 > 94) {
                                i14 = 94;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 23:
                            if (this.f23984strictfp != 39) {
                                break;
                            } else {
                                m28162switch(24, 25);
                                break;
                            }
                        case 24:
                            if ((j2 & (-549755813889L)) == 0) {
                                break;
                            } else {
                                m28162switch(24, 25);
                                break;
                            }
                        case 25:
                            if (this.f23984strictfp != 39 || i14 <= 94) {
                                break;
                            }
                            break;
                        case 26:
                            if (this.f23984strictfp == 60 && i14 > 115) {
                                i14 = 115;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 27:
                            if (this.f23984strictfp == 61 && i14 > 116) {
                                i14 = 116;
                                break;
                            } else {
                                break;
                            }
                        case 28:
                            if (this.f23984strictfp != 60) {
                                break;
                            } else {
                                m28158return(27);
                                break;
                            }
                        case 29:
                        case 92:
                            if (this.f23984strictfp == 38 && i14 > 127) {
                                i14 = 127;
                                break;
                            } else {
                                break;
                            }
                        case 33:
                            if (this.f23984strictfp != 36) {
                                break;
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                        case 34:
                        case 104:
                            if ((j2 & 287948969894477824L) == 0) {
                                break;
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                        case 36:
                            if ((j2 & 288335929267978240L) == 0) {
                                break;
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                        case 39:
                            if (this.f23984strictfp != 36) {
                                break;
                            } else {
                                m28158return(38);
                                break;
                            }
                        case 40:
                            if (this.f23984strictfp != 35) {
                                break;
                            } else {
                                m28158return(38);
                                break;
                            }
                        case 41:
                            if (this.f23984strictfp != 61 || i14 <= 143) {
                                break;
                            }
                            break;
                        case 43:
                            if (this.f23984strictfp != 47) {
                                break;
                            } else {
                                m28150import(356, 357);
                                break;
                            }
                        case 44:
                            if (this.f23984strictfp == 62 && i14 > 149) {
                                i14 = 149;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 46:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                m28150import(354, 355);
                                break;
                            }
                        case 47:
                            int i23 = this.f23984strictfp;
                            if (i23 != 38) {
                                if (i23 == 62 && i14 > 119) {
                                    i14 = 119;
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                int i24 = this.f23982return;
                                this.f23982return = i24 + 1;
                                iArr[i24] = 50;
                                break;
                            }
                            break;
                        case 48:
                            if (this.f23984strictfp != 59 || i14 <= 119) {
                                break;
                            }
                            break;
                        case 51:
                            if (this.f23984strictfp != 38) {
                                break;
                            } else {
                                int i25 = this.f23982return;
                                this.f23982return = i25 + 1;
                                iArr[i25] = 50;
                                break;
                            }
                        case 52:
                            if (this.f23984strictfp != 46) {
                                break;
                            } else {
                                m28150import(352, 353);
                                break;
                            }
                        case 53:
                            int i26 = this.f23984strictfp;
                            if (i26 == 33) {
                                if (i14 <= 101) {
                                    break;
                                } else {
                                    i14 = 101;
                                    break;
                                }
                            } else if (i26 != 60 || i14 <= 101) {
                                break;
                            }
                            break;
                        case 54:
                            int i27 = this.f23984strictfp;
                            if (i27 == 46) {
                                int i28 = this.f23982return;
                                this.f23982return = i28 + 1;
                                iArr[i28] = 55;
                            }
                            if (i27 != 46) {
                                break;
                            } else {
                                int i29 = this.f23982return;
                                this.f23982return = i29 + 1;
                                iArr[i29] = 53;
                                break;
                            }
                        case 55:
                            if (this.f23984strictfp != 33 || i14 <= 101) {
                                break;
                            }
                            break;
                        case 56:
                            if (this.f23984strictfp != 46) {
                                break;
                            } else {
                                int i30 = this.f23982return;
                                this.f23982return = i30 + 1;
                                iArr[i30] = 55;
                                break;
                            }
                        case 57:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                if (i14 > 97) {
                                    i14 = 97;
                                }
                                m28159static(343, 345);
                                break;
                            }
                        case 58:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                if (i14 > 97) {
                                    i14 = 97;
                                }
                                m28158return(58);
                                break;
                            }
                        case 59:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                m28162switch(59, 60);
                                break;
                            }
                        case 60:
                            if (this.f23984strictfp != 46) {
                                break;
                            } else {
                                m28158return(61);
                                break;
                            }
                        case 61:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                if (i14 > 98) {
                                    i14 = 98;
                                }
                                m28158return(61);
                                break;
                            }
                        case 78:
                            if (this.f23984strictfp != 38) {
                                break;
                            } else {
                                m28150import(346, 351);
                                break;
                            }
                        case 79:
                            if (this.f23984strictfp != 59 || i14 <= 115) {
                                break;
                            }
                            break;
                        case 82:
                            if (this.f23984strictfp != 59) {
                                break;
                            } else {
                                m28158return(27);
                                break;
                            }
                        case 85:
                            if (this.f23984strictfp == 59 && i14 > 117) {
                                i14 = 117;
                                break;
                            } else {
                                break;
                            }
                        case 88:
                            if (this.f23984strictfp == 61 && i14 > 118) {
                                i14 = 118;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 89:
                            if (this.f23984strictfp != 59) {
                                break;
                            } else {
                                int i31 = this.f23982return;
                                this.f23982return = i31 + 1;
                                iArr[i31] = 88;
                                break;
                            }
                        case 93:
                            if (this.f23984strictfp != 59 || i14 <= 127) {
                                break;
                            }
                            break;
                        case 97:
                            if (this.f23984strictfp != 38) {
                                break;
                            } else {
                                int i32 = this.f23982return;
                                this.f23982return = i32 + 1;
                                iArr[i32] = 96;
                                break;
                            }
                        case 98:
                            if (this.f23984strictfp != 59) {
                                break;
                            } else {
                                int i33 = this.f23982return;
                                this.f23982return = i33 + 1;
                                iArr[i33] = 97;
                                break;
                            }
                    }
                } while (i15 != i13);
            } else if (i17 < 128) {
                long j3 = 1 << (i17 & 63);
                while (true) {
                    int[] iArr3 = this.f23972finally;
                    i15--;
                    switch (iArr3[i15]) {
                        case 1:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i14 > 142) {
                                    i6 = 34;
                                    i14 = 142;
                                } else {
                                    i6 = 34;
                                }
                                m28162switch(i6, 35);
                            } else {
                                int i34 = this.f23984strictfp;
                                if (i34 == 92) {
                                    m28150import(364, 368);
                                } else if (i34 == 91) {
                                    int i35 = this.f23982return;
                                    this.f23982return = i35 + 1;
                                    iArr3[i35] = 41;
                                } else if (i34 == 124) {
                                    int i36 = this.f23982return;
                                    this.f23982return = i36 + 1;
                                    iArr3[i36] = 31;
                                }
                            }
                            int i37 = this.f23984strictfp;
                            if (i37 != 103) {
                                if (i37 != 108) {
                                    if (i37 != 92) {
                                        if (i37 != 124) {
                                            if (i37 != 114) {
                                                if (i37 == 91) {
                                                    int[] iArr4 = this.f23972finally;
                                                    int i38 = this.f23982return;
                                                    this.f23982return = i38 + 1;
                                                    iArr4[i38] = 2;
                                                    break;
                                                }
                                            } else {
                                                m28150import(369, 370);
                                                break;
                                            }
                                        } else if (i14 > 128) {
                                            i14 = 128;
                                            break;
                                        }
                                    } else {
                                        m28158return(36);
                                        break;
                                    }
                                } else {
                                    m28162switch(63, 65);
                                    break;
                                }
                            } else {
                                m28162switch(70, 103);
                                break;
                            }
                            break;
                        case 6:
                            if ((j3 & (-268435457)) != 0) {
                                m28159static(361, 363);
                                break;
                            }
                            break;
                        case 7:
                            if (this.f23984strictfp == 92) {
                                m28150import(371, 372);
                                break;
                            }
                            break;
                        case 8:
                            if (this.f23984strictfp == 120) {
                                int i39 = this.f23982return;
                                this.f23982return = i39 + 1;
                                iArr3[i39] = 9;
                                break;
                            }
                            break;
                        case 9:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(361, 363);
                                break;
                            }
                            break;
                        case 11:
                            if ((j3 & 582179063439818752L) != 0) {
                                m28159static(361, 363);
                                break;
                            }
                            break;
                        case 13:
                            if ((j3 & (-268435457)) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                            break;
                        case 14:
                            if (this.f23984strictfp == 92) {
                                m28150import(373, 374);
                                break;
                            }
                            break;
                        case 15:
                            if (this.f23984strictfp == 120) {
                                int i40 = this.f23982return;
                                this.f23982return = i40 + 1;
                                iArr3[i40] = 16;
                                break;
                            }
                            break;
                        case 16:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                            break;
                        case 18:
                            if ((j3 & 582179063439818752L) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                            break;
                        case 19:
                            if (this.f23984strictfp == 114) {
                                m28150import(369, 370);
                                break;
                            }
                            break;
                        case 21:
                            m28150import(375, 376);
                            break;
                        case 24:
                            m28150import(377, 378);
                            break;
                        case 30:
                        case 31:
                            if (this.f23984strictfp == 124 && i14 > 128) {
                            }
                            break;
                        case 32:
                            if (this.f23984strictfp == 124) {
                                int i41 = this.f23982return;
                                this.f23982return = i41 + 1;
                                iArr3[i41] = 31;
                                break;
                            }
                            break;
                        case 33:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                            break;
                        case 34:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i14 > 142) {
                                    i8 = 34;
                                    i7 = 142;
                                } else {
                                    i7 = i14;
                                    i8 = 34;
                                }
                                m28162switch(i8, 35);
                                i14 = i7;
                                break;
                            }
                            break;
                        case 35:
                            if (this.f23984strictfp == 92) {
                                m28158return(36);
                                break;
                            }
                            break;
                        case 37:
                            if (this.f23984strictfp == 92) {
                                m28158return(36);
                                break;
                            }
                            break;
                        case 38:
                            if (this.f23984strictfp == 123 && i14 > 143) {
                                i14 = 143;
                                break;
                            }
                            break;
                        case 42:
                            if (this.f23984strictfp == 91) {
                                int i42 = this.f23982return;
                                this.f23982return = i42 + 1;
                                iArr3[i42] = 41;
                                break;
                            }
                            break;
                        case 44:
                            if (this.f23984strictfp == 93 && i14 > 149) {
                                i14 = 149;
                                break;
                            }
                            break;
                        case 49:
                            if (this.f23984strictfp == 116) {
                                int i43 = this.f23982return;
                                this.f23982return = i43 + 1;
                                iArr3[i43] = 48;
                                break;
                            }
                            break;
                        case 50:
                            if (this.f23984strictfp == 103) {
                                int i44 = this.f23982return;
                                this.f23982return = i44 + 1;
                                iArr3[i44] = 49;
                                break;
                            }
                            break;
                        case 62:
                            if (this.f23984strictfp == 108) {
                                m28162switch(63, 65);
                                break;
                            }
                            break;
                        case 63:
                            if (this.f23984strictfp == 116 && i14 > 115) {
                                i14 = 115;
                                break;
                            }
                            break;
                        case 64:
                            if (this.f23984strictfp == 101 && i14 > 116) {
                                i14 = 116;
                                break;
                            }
                            break;
                        case 65:
                        case 68:
                            if (this.f23984strictfp == 116) {
                                m28158return(64);
                                break;
                            }
                            break;
                        case 66:
                            if (this.f23984strictfp == 92) {
                                m28150import(364, 368);
                                break;
                            }
                            break;
                        case 67:
                            if (this.f23984strictfp == 108) {
                                m28158return(63);
                                break;
                            }
                            break;
                        case 69:
                            if (this.f23984strictfp == 108) {
                                int i45 = this.f23982return;
                                this.f23982return = i45 + 1;
                                iArr3[i45] = 68;
                                break;
                            }
                            break;
                        case 70:
                            if (this.f23984strictfp == 116 && i14 > 117) {
                                i14 = 117;
                                break;
                            }
                            break;
                        case 71:
                            if (this.f23984strictfp == 103) {
                                m28158return(70);
                                break;
                            }
                            break;
                        case 72:
                            if (this.f23984strictfp == 101 && i14 > 118) {
                                i14 = 118;
                                break;
                            }
                            break;
                        case 73:
                        case 103:
                            if (this.f23984strictfp == 116) {
                                m28158return(72);
                                break;
                            }
                            break;
                        case 74:
                            if (this.f23984strictfp == 103) {
                                int i46 = this.f23982return;
                                this.f23982return = i46 + 1;
                                iArr3[i46] = 73;
                                break;
                            }
                            break;
                        case 75:
                            if (this.f23984strictfp == 100 && i14 > 127) {
                                i14 = 127;
                                break;
                            }
                            break;
                        case 76:
                            if (this.f23984strictfp == 110) {
                                int i47 = this.f23982return;
                                this.f23982return = i47 + 1;
                                iArr3[i47] = 75;
                                break;
                            }
                            break;
                        case 77:
                            if (this.f23984strictfp == i18) {
                                int i48 = this.f23982return;
                                this.f23982return = i48 + 1;
                                iArr3[i48] = 76;
                                break;
                            }
                            break;
                        case 80:
                            if (this.f23984strictfp == 116) {
                                int i49 = this.f23982return;
                                this.f23982return = i49 + 1;
                                iArr3[i49] = 79;
                                break;
                            }
                            break;
                        case 81:
                            if (this.f23984strictfp == 108) {
                                int i50 = this.f23982return;
                                this.f23982return = i50 + 1;
                                iArr3[i50] = 80;
                                break;
                            }
                            break;
                        case 83:
                            if (this.f23984strictfp == 116) {
                                int i51 = this.f23982return;
                                this.f23982return = i51 + 1;
                                iArr3[i51] = 82;
                                break;
                            }
                            break;
                        case 84:
                            if (this.f23984strictfp == 108) {
                                int i52 = this.f23982return;
                                this.f23982return = i52 + 1;
                                iArr3[i52] = 83;
                                break;
                            }
                            break;
                        case 86:
                            if (this.f23984strictfp == 116) {
                                int i53 = this.f23982return;
                                this.f23982return = i53 + 1;
                                iArr3[i53] = 85;
                                break;
                            }
                            break;
                        case 87:
                            if (this.f23984strictfp == 103) {
                                int i54 = this.f23982return;
                                this.f23982return = i54 + 1;
                                iArr3[i54] = 86;
                                break;
                            }
                            break;
                        case 90:
                            if (this.f23984strictfp == 116) {
                                int i55 = this.f23982return;
                                this.f23982return = i55 + 1;
                                iArr3[i55] = 89;
                                break;
                            }
                            break;
                        case 91:
                            if (this.f23984strictfp == 103) {
                                int i56 = this.f23982return;
                                this.f23982return = i56 + 1;
                                iArr3[i56] = 90;
                                break;
                            }
                            break;
                        case 94:
                            if (this.f23984strictfp == 112) {
                                int i57 = this.f23982return;
                                this.f23982return = i57 + 1;
                                iArr3[i57] = 93;
                                break;
                            }
                            break;
                        case 95:
                            if (this.f23984strictfp == 109) {
                                int i58 = this.f23982return;
                                this.f23982return = i58 + 1;
                                iArr3[i58] = 94;
                                break;
                            }
                            break;
                        case 96:
                            if (this.f23984strictfp == i18) {
                                int i59 = this.f23982return;
                                this.f23982return = i59 + 1;
                                iArr3[i59] = 95;
                                break;
                            }
                            break;
                        case 99:
                            if (this.f23984strictfp == 112) {
                                int i60 = this.f23982return;
                                this.f23982return = i60 + 1;
                                iArr3[i60] = 98;
                                break;
                            }
                            break;
                        case 100:
                            if (this.f23984strictfp == 109) {
                                int i61 = this.f23982return;
                                this.f23982return = i61 + 1;
                                iArr3[i61] = 99;
                                break;
                            }
                            break;
                        case 101:
                            if (this.f23984strictfp == i18) {
                                int i62 = this.f23982return;
                                this.f23982return = i62 + 1;
                                iArr3[i62] = 100;
                                break;
                            }
                            break;
                        case 102:
                            if (this.f23984strictfp == 103) {
                                m28162switch(70, 103);
                                break;
                            }
                            break;
                        case 104:
                            if ((576460745995190271L & j3) == 0) {
                                if (this.f23984strictfp == 92) {
                                    m28158return(36);
                                    break;
                                }
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                            break;
                    }
                    if (i15 != i13) {
                        i18 = 97;
                    }
                }
            } else {
                int i63 = i17 >> 8;
                int i64 = i63 >> 6;
                long j4 = 1 << (i63 & 63);
                int i65 = (i17 & 255) >> 6;
                long j5 = 1 << (i17 & 63);
                do {
                    i15--;
                    int i66 = this.f23972finally[i15];
                    if (i66 != 1) {
                        if (i66 != 6) {
                            if (i66 != 13) {
                                if (i66 != 21) {
                                    if (i66 != 24) {
                                        if (i66 == 34 || i66 == 104) {
                                            if (m28157public(i63, i64, i65, j4, j5)) {
                                                if (i14 > 142) {
                                                    i5 = 34;
                                                    i4 = 142;
                                                } else {
                                                    i4 = i14;
                                                    i5 = 34;
                                                }
                                                m28162switch(i5, 35);
                                                i14 = i4;
                                            }
                                        } else if (i64 != 0) {
                                            int i67 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                                        }
                                    } else if (m28153native(i63, i64, i65, j4, j5)) {
                                        m28150import(377, 378);
                                    }
                                } else if (m28153native(i63, i64, i65, j4, j5)) {
                                    m28150import(375, 376);
                                }
                            } else if (m28153native(i63, i64, i65, j4, j5)) {
                                m28150import(358, FunGameBattleCityHeader.u);
                            }
                        } else if (m28153native(i63, i64, i65, j4, j5)) {
                            m28150import(361, 363);
                        }
                    } else if (m28157public(i63, i64, i65, j4, j5)) {
                        if (i14 > 142) {
                            i14 = 142;
                        }
                        m28162switch(34, 35);
                    }
                } while (i15 != i13);
            }
            if (i14 != Integer.MAX_VALUE) {
                this.f23989throws = i14;
                this.f23986switch = i12;
                i14 = Integer.MAX_VALUE;
            }
            i12++;
            i15 = this.f23982return;
            this.f23982return = i13;
            i13 = 104 - i13;
            if (i15 == i13) {
                return i12;
            }
            try {
                this.f23984strictfp = this.f23967default.m28301finally();
                i11 = 1;
            } catch (IOException unused) {
                return i12;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m28148for() {
        this.f23983static = -2147483647;
        int i2 = 713;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            this.f23970extends[i3] = Integer.MIN_VALUE;
            i2 = i3;
        }
    }

    private int g(long j2, long j3) {
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '+') {
                    if (cM28301finally != '-') {
                        if (cM28301finally == '.') {
                            if ((68719476736L & j2) != 0) {
                                this.f23989throws = 100;
                                this.f23986switch = 1;
                            }
                            return k(j2, 1152921779484753920L, j3, 0L);
                        }
                        if (cM28301finally != '=') {
                            if (cM28301finally != '?') {
                                if (cM28301finally == 'a') {
                                    return k(j2, 2147483648L, j3, 0L);
                                }
                                if (cM28301finally != 'n') {
                                    if (cM28301finally == 'r') {
                                        return k(j2, o3.f24027catch, j3, 0L);
                                    }
                                    if (cM28301finally == 's') {
                                        return (4096 & j3) != 0 ? x(1, 140, 100) : k(j2, 0L, j3, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                                    }
                                } else if ((PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH & j3) != 0) {
                                    return x(1, 139, 100);
                                }
                            } else if ((1099511627776L & j2) != 0) {
                                return F(1, 104);
                            }
                        } else {
                            if ((4398046511104L & j2) != 0) {
                                return F(1, 106);
                            }
                            if ((8796093022208L & j2) != 0) {
                                return F(1, 107);
                            }
                            if ((17592186044416L & j2) != 0) {
                                return F(1, 108);
                            }
                            if ((35184372088832L & j2) != 0) {
                                return F(1, 109);
                            }
                            if ((70368744177664L & j2) != 0) {
                                return F(1, 110);
                            }
                            if ((140737488355328L & j2) != 0) {
                                return F(1, 111);
                            }
                            if ((281474976710656L & j2) != 0) {
                                return F(1, 112);
                            }
                        }
                    } else if ((1125899906842624L & j2) != 0) {
                        return F(1, 114);
                    }
                } else if ((562949953421312L & j2) != 0) {
                    return F(1, 113);
                }
            } else if ((576460752303423488L & j2) != 0) {
                return F(1, 123);
            }
            return E(0, 0L, j2, j3);
        } catch (IOException unused) {
            M(0, 0L, j2, j3);
            return 1;
        }
    }

    private int h(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return A(0, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '.') {
                    if (cM28301finally == 'i') {
                        return l(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    }
                    if (cM28301finally == 'l') {
                        return l(j6, 2147483648L, j7, 0L);
                    }
                    if (cM28301finally == 'u') {
                        return l(j6, o3.f24027catch, j7, 0L);
                    }
                } else if ((1152921504606846976L & j6) != 0) {
                    return F(2, 124);
                }
            } else if ((274877906944L & j6) != 0) {
                return F(2, 102);
            }
            return A(1, 0L, j6, j7);
        } catch (IOException unused) {
            I(1, 0L, j6, j7);
            return 2;
        }
    }

    private int i(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return B(0, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '.') {
                    if (cM28301finally == 'i') {
                        return m(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    }
                    if (cM28301finally == 'l') {
                        return m(j6, 2147483648L, j7, 0L);
                    }
                    if (cM28301finally == 'u') {
                        return m(j6, o3.f24027catch, j7, 0L);
                    }
                } else if ((1152921504606846976L & j6) != 0) {
                    return F(2, 124);
                }
            } else if ((274877906944L & j6) != 0) {
                return F(2, 102);
            }
            return B(1, 0L, j6, j7);
        } catch (IOException unused) {
            J(1, 0L, j6, j7);
            return 2;
        }
    }

    /* renamed from: implements, reason: not valid java name */
    private int m28149implements() {
        int i2 = this.f23984strictfp;
        if (i2 == 33) {
            this.f23989throws = 129;
            return f(8796093022208L, 0L);
        }
        if (i2 == 37) {
            this.f23989throws = 126;
            return f(281474976710656L, 0L);
        }
        if (i2 == 91) {
            return v(0, 133, 2);
        }
        if (i2 == 93) {
            return F(0, 134);
        }
        if (i2 == 97) {
            return f(0L, 4096L);
        }
        if (i2 == 102) {
            return f(2147483648L, 0L);
        }
        if (i2 == 105) {
            return f(0L, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH);
        }
        if (i2 == 123) {
            return F(0, 137);
        }
        if (i2 == 125) {
            return F(0, 138);
        }
        if (i2 == 58) {
            return F(0, 132);
        }
        if (i2 == 59) {
            return F(0, 131);
        }
        if (i2 == 116) {
            return f(o3.f24027catch, 0L);
        }
        if (i2 == 117) {
            return f(0L, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
        }
        switch (i2) {
            case 40:
                return F(0, 135);
            case 41:
                return F(0, 136);
            case 42:
                this.f23989throws = 122;
                return f(576531121047601152L, 0L);
            case 43:
                this.f23989throws = 120;
                return f(580542139465728L, 0L);
            case 44:
                return F(0, 130);
            case 45:
                this.f23989throws = 121;
                return f(1161084278931456L, 0L);
            case 46:
                this.f23989throws = 99;
                return f(1152921848204230656L, 0L);
            case 47:
                this.f23989throws = 125;
                return f(140737488355328L, 0L);
            default:
                switch (i2) {
                    case 61:
                        this.f23989throws = 105;
                        return f(4398046511104L, 0L);
                    case 62:
                        return F(0, 148);
                    case 63:
                        this.f23989throws = 103;
                        return f(1099511627776L, 0L);
                    default:
                        return m28155private(1, 0);
                }
        }
    }

    /* renamed from: import, reason: not valid java name */
    private void m28150import(int i2, int i3) {
        while (true) {
            int[] iArr = this.f23972finally;
            int i4 = this.f23982return;
            this.f23982return = i4 + 1;
            iArr[i4] = t[i2];
            int i5 = i2 + 1;
            if (i2 == i3) {
                return;
            } else {
                i2 = i5;
            }
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private int m28151instanceof() {
        return this.f23984strictfp != 45 ? m28139abstract(1, 0) : w(0, 90, 3);
    }

    /* renamed from: interface, reason: not valid java name */
    private int m28152interface() {
        int i2 = this.f23984strictfp;
        return i2 != 35 ? i2 != 36 ? i2 != 91 ? m28145extends(2, 0) : c(1048576L) : c(PlaybackStateCompat.ACTION_SET_REPEAT_MODE) : c(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED);
    }

    private int j(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return C(0, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '.') {
                    if (cM28301finally == 'i') {
                        return n(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    }
                    if (cM28301finally == 'l') {
                        return n(j6, 2147483648L, j7, 0L);
                    }
                    if (cM28301finally == 'u') {
                        return n(j6, o3.f24027catch, j7, 0L);
                    }
                } else if ((1152921504606846976L & j6) != 0) {
                    return F(2, 124);
                }
            } else if ((274877906944L & j6) != 0) {
                return F(2, 102);
            }
            return C(1, 0L, j6, j7);
        } catch (IOException unused) {
            K(1, 0L, j6, j7);
            return 2;
        }
    }

    private int k(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return E(0, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != '*') {
                if (cM28301finally != '.') {
                    if (cM28301finally == 'i') {
                        return o(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    }
                    if (cM28301finally == 'l') {
                        return o(j6, 2147483648L, j7, 0L);
                    }
                    if (cM28301finally == 'u') {
                        return o(j6, o3.f24027catch, j7, 0L);
                    }
                } else if ((1152921504606846976L & j6) != 0) {
                    return F(2, 124);
                }
            } else if ((274877906944L & j6) != 0) {
                return F(2, 102);
            }
            return E(1, 0L, j6, j7);
        } catch (IOException unused) {
            M(1, 0L, j6, j7);
            return 2;
        }
    }

    private int l(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return A(1, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'n') {
                    return p(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                }
                if (cM28301finally == 's') {
                    return p(j6, 2147483648L, j7, 0L);
                }
            } else if ((o3.f24027catch & j6) != 0) {
                return t(3, 96, 104);
            }
            return A(2, 0L, j6, j7);
        } catch (IOException unused) {
            I(2, 0L, j6, j7);
            return 3;
        }
    }

    private int m(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return B(1, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'n') {
                    return q(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                }
                if (cM28301finally == 's') {
                    return q(j6, 2147483648L, j7, 0L);
                }
            } else if ((o3.f24027catch & j6) != 0) {
                return u(3, 96, 101);
            }
            return B(2, 0L, j6, j7);
        } catch (IOException unused) {
            J(2, 0L, j6, j7);
            return 3;
        }
    }

    private int n(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return C(1, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'n') {
                    return r(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                }
                if (cM28301finally == 's') {
                    return r(j6, 2147483648L, j7, 0L);
                }
            } else if ((o3.f24027catch & j6) != 0) {
                return v(3, 96, 106);
            }
            return C(2, 0L, j6, j7);
        } catch (IOException unused) {
            K(2, 0L, j6, j7);
            return 3;
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static final boolean m28153native(int i2, int i3, int i4, long j2, long j3) {
        return i2 != 0 ? (f23955interface[i3] & j2) != 0 : (f23956protected[i4] & j3) != 0;
    }

    private int o(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return E(1, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'n') {
                    return s(j6, 0L, j7, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                }
                if (cM28301finally == 's') {
                    return s(j6, 2147483648L, j7, 0L);
                }
            } else if ((o3.f24027catch & j6) != 0) {
                return x(3, 96, 100);
            }
            return E(2, 0L, j6, j7);
        } catch (IOException unused) {
            M(2, 0L, j6, j7);
            return 3;
        }
    }

    private int p(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return A(2, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'g' && (PlaybackStateCompat.ACTION_PLAY_FROM_URI & j7) != 0) {
                    return t(4, 141, 104);
                }
            } else if ((2147483648L & j6) != 0) {
                return t(4, 95, 104);
            }
            return A(3, 0L, j6, j7);
        } catch (IOException unused) {
            I(3, 0L, j6, j7);
            return 4;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:114:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:600:0x0a25 A[LOOP:3: B:545:0x091c->B:600:0x0a25, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:606:0x09fd A[SYNTHETIC] */
    /* renamed from: package, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28154package(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12 = 101;
        this.f23982return = 101;
        this.f23972finally[0] = i2;
        int i13 = 1;
        int i14 = i3;
        int i15 = 0;
        int i16 = Integer.MAX_VALUE;
        int i17 = 1;
        while (true) {
            int i18 = this.f23983static + i13;
            this.f23983static = i18;
            if (i18 == Integer.MAX_VALUE) {
                m28148for();
            }
            int i19 = this.f23984strictfp;
            int i20 = 46;
            int i21 = 34;
            if (i19 < 64) {
                long j2 = 1 << i19;
                while (true) {
                    int[] iArr = this.f23972finally;
                    i17--;
                    int i22 = iArr[i17];
                    if (i22 != 33) {
                        if (i22 == i21) {
                            if ((j2 & 287948969894477824L) != 0) {
                                if (i16 > 142) {
                                    i16 = 142;
                                }
                                m28162switch(34, 35);
                            }
                        } else if (i22 != 75) {
                            if (i22 != 76) {
                                if (i22 != 85) {
                                    if (i22 != 86) {
                                        switch (i22) {
                                            case 0:
                                                if ((j2 & 4294977024L) != 0) {
                                                    if (i16 > 85) {
                                                        i16 = 85;
                                                    }
                                                    m28158return(0);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if ((j2 & 287948901175001088L) != 0) {
                                                    if (i16 > 97) {
                                                        i16 = 97;
                                                    }
                                                    m28159static(379, 381);
                                                } else if ((j2 & 4294977024L) != 0) {
                                                    if (i16 > 85) {
                                                        i16 = 85;
                                                    }
                                                    m28158return(0);
                                                } else {
                                                    int i23 = this.f23984strictfp;
                                                    if (i23 == 38) {
                                                        m28150import(382, 387);
                                                    } else if (i23 == 46) {
                                                        m28150import(388, 389);
                                                    } else if (i23 == 45) {
                                                        m28150import(390, 391);
                                                    } else if (i23 == 35 || i23 == 36) {
                                                        m28158return(38);
                                                    } else if (i23 == 60) {
                                                        m28158return(27);
                                                    } else if (i23 == 39) {
                                                        m28159static(358, FunGameBattleCityHeader.u);
                                                    } else {
                                                        i8 = 34;
                                                        if (i23 == 34) {
                                                            m28159static(361, 363);
                                                        }
                                                        i9 = this.f23984strictfp;
                                                        if (i9 == 36) {
                                                            if (i9 != 38) {
                                                                i10 = 60;
                                                                if (i9 == 60 && i16 > 115) {
                                                                    i16 = 115;
                                                                }
                                                                if (this.f23984strictfp == i10) {
                                                                    int[] iArr2 = this.f23972finally;
                                                                    int i24 = this.f23982return;
                                                                    this.f23982return = i24 + 1;
                                                                    iArr2[i24] = 2;
                                                                    break;
                                                                }
                                                            } else if (i16 > 127) {
                                                                i16 = 127;
                                                            }
                                                        } else {
                                                            if (i16 > 142) {
                                                                i16 = 142;
                                                            }
                                                            m28162switch(i8, 35);
                                                        }
                                                        i10 = 60;
                                                        if (this.f23984strictfp == i10) {
                                                        }
                                                    }
                                                }
                                                i8 = 34;
                                                i9 = this.f23984strictfp;
                                                if (i9 == 36) {
                                                }
                                                i10 = 60;
                                                if (this.f23984strictfp == i10) {
                                                }
                                                break;
                                            case 2:
                                                if ((j2 & 42949672960L) == 0) {
                                                    if (this.f23984strictfp == 61 && i16 > 143) {
                                                        i16 = 143;
                                                        break;
                                                    }
                                                } else {
                                                    int i25 = this.f23982return;
                                                    this.f23982return = i25 + 1;
                                                    iArr[i25] = 4;
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (this.f23984strictfp == 45 && i16 > 86) {
                                                    i16 = 86;
                                                    break;
                                                }
                                                break;
                                            case 4:
                                                if (this.f23984strictfp == 45) {
                                                    int i26 = this.f23982return;
                                                    this.f23982return = i26 + 1;
                                                    iArr[i26] = 3;
                                                    break;
                                                }
                                                break;
                                            case 5:
                                                if (this.f23984strictfp == 34) {
                                                    m28159static(361, 363);
                                                    break;
                                                }
                                                break;
                                            case 6:
                                                if ((j2 & (-17179869185L)) != 0) {
                                                    m28159static(361, 363);
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (i22) {
                                                    case 9:
                                                        if ((j2 & 287948901175001088L) != 0) {
                                                            m28159static(361, 363);
                                                            break;
                                                        }
                                                        break;
                                                    case 10:
                                                        if (this.f23984strictfp == 34 && i16 > 93) {
                                                            i16 = 93;
                                                            break;
                                                        }
                                                        break;
                                                    case 11:
                                                        if ((j2 & 2305843576149377024L) != 0) {
                                                            m28159static(361, 363);
                                                            break;
                                                        }
                                                        break;
                                                    case 12:
                                                        if (this.f23984strictfp == 39) {
                                                            m28159static(358, FunGameBattleCityHeader.u);
                                                            break;
                                                        }
                                                        break;
                                                    case 13:
                                                        if ((j2 & (-549755813889L)) != 0) {
                                                            m28159static(358, FunGameBattleCityHeader.u);
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (i22) {
                                                            case 16:
                                                                if ((j2 & 287948901175001088L) != 0) {
                                                                    m28159static(358, FunGameBattleCityHeader.u);
                                                                    break;
                                                                }
                                                                break;
                                                            case 17:
                                                                if (this.f23984strictfp != 39 || i16 <= 93) {
                                                                }
                                                                break;
                                                            case 18:
                                                                if ((j2 & 2305843576149377024L) != 0) {
                                                                    m28159static(358, FunGameBattleCityHeader.u);
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                switch (i22) {
                                                                    case 20:
                                                                        if (this.f23984strictfp == 34) {
                                                                            m28162switch(21, 22);
                                                                            break;
                                                                        }
                                                                    case 21:
                                                                        if ((j2 & (-17179869185L)) != 0) {
                                                                            m28162switch(21, 22);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 22:
                                                                        if (this.f23984strictfp == 34 && i16 > 94) {
                                                                            i16 = 94;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 23:
                                                                        if (this.f23984strictfp == 39) {
                                                                            m28162switch(24, 25);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 24:
                                                                        if ((j2 & (-549755813889L)) != 0) {
                                                                            m28162switch(24, 25);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 25:
                                                                        if (this.f23984strictfp != 39 || i16 <= 94) {
                                                                        }
                                                                        break;
                                                                    case 26:
                                                                        if (this.f23984strictfp == 60 && i16 > 115) {
                                                                            i16 = 115;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 27:
                                                                        if (this.f23984strictfp == 61 && i16 > 116) {
                                                                            i16 = 116;
                                                                            break;
                                                                        }
                                                                        break;
                                                                    case 28:
                                                                        if (this.f23984strictfp == 60) {
                                                                            m28158return(27);
                                                                            break;
                                                                        }
                                                                        break;
                                                                    default:
                                                                        switch (i22) {
                                                                            case 36:
                                                                                if ((j2 & 288335929267978240L) != 0) {
                                                                                    if (i16 > 142) {
                                                                                        i11 = 34;
                                                                                        i16 = 142;
                                                                                    } else {
                                                                                        i11 = 34;
                                                                                    }
                                                                                    m28162switch(i11, 35);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 48:
                                                                                if (this.f23984strictfp == 38) {
                                                                                    int i27 = this.f23982return;
                                                                                    this.f23982return = i27 + 1;
                                                                                    iArr[i27] = 47;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 49:
                                                                                if (this.f23984strictfp == 46) {
                                                                                    m28150import(388, 389);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 50:
                                                                                int i28 = this.f23984strictfp;
                                                                                if (i28 != 33 ? !(i28 != 60 || i16 <= i12) : i16 > i12) {
                                                                                    i16 = 101;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 51:
                                                                                int i29 = this.f23984strictfp;
                                                                                if (i29 == 46) {
                                                                                    int i30 = this.f23982return;
                                                                                    this.f23982return = i30 + 1;
                                                                                    iArr[i30] = 52;
                                                                                }
                                                                                if (i29 == 46) {
                                                                                    int i31 = this.f23982return;
                                                                                    this.f23982return = i31 + 1;
                                                                                    iArr[i31] = 50;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 52:
                                                                                if (this.f23984strictfp != 33 || i16 <= i12) {
                                                                                }
                                                                                break;
                                                                            case 53:
                                                                                if (this.f23984strictfp == 46) {
                                                                                    int i32 = this.f23982return;
                                                                                    this.f23982return = i32 + 1;
                                                                                    iArr[i32] = 52;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 54:
                                                                                if ((j2 & 287948901175001088L) != 0) {
                                                                                    if (i16 > 97) {
                                                                                        i16 = 97;
                                                                                    }
                                                                                    m28159static(379, 381);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 55:
                                                                                if ((j2 & 287948901175001088L) != 0) {
                                                                                    if (i16 > 97) {
                                                                                        i16 = 97;
                                                                                    }
                                                                                    m28158return(55);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 56:
                                                                                if ((j2 & 287948901175001088L) != 0) {
                                                                                    m28162switch(56, 57);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 57:
                                                                                if (this.f23984strictfp == 46) {
                                                                                    m28158return(58);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 58:
                                                                                if ((j2 & 287948901175001088L) != 0) {
                                                                                    if (i16 > 98) {
                                                                                        i16 = 98;
                                                                                    }
                                                                                    m28158return(58);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 79:
                                                                                if (this.f23984strictfp == 59) {
                                                                                    m28158return(27);
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 82:
                                                                                if (this.f23984strictfp == 59 && i16 > 117) {
                                                                                    i16 = 117;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 89:
                                                                                break;
                                                                            case 90:
                                                                                if (this.f23984strictfp == 59 && i16 > 127) {
                                                                                    i16 = 127;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 94:
                                                                                if (this.f23984strictfp == 38) {
                                                                                    int i33 = this.f23982return;
                                                                                    this.f23982return = i33 + 1;
                                                                                    iArr[i33] = 93;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 95:
                                                                                if (this.f23984strictfp == 59) {
                                                                                    int i34 = this.f23982return;
                                                                                    this.f23982return = i34 + 1;
                                                                                    iArr[i34] = 94;
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            case 101:
                                                                                break;
                                                                            default:
                                                                                switch (i22) {
                                                                                    case 39:
                                                                                        if (this.f23984strictfp == 36) {
                                                                                            m28158return(38);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 40:
                                                                                        if (this.f23984strictfp == 35) {
                                                                                            m28158return(38);
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 41:
                                                                                        if (this.f23984strictfp != 61 || i16 <= 143) {
                                                                                        }
                                                                                        break;
                                                                                    default:
                                                                                        switch (i22) {
                                                                                            case 43:
                                                                                                if (this.f23984strictfp == 45) {
                                                                                                    m28150import(390, 391);
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 44:
                                                                                                int i35 = this.f23984strictfp;
                                                                                                if (i35 != 38) {
                                                                                                    if (i35 == 62 && i16 > 119) {
                                                                                                        i16 = 119;
                                                                                                        break;
                                                                                                    }
                                                                                                } else {
                                                                                                    int i36 = this.f23982return;
                                                                                                    this.f23982return = i36 + 1;
                                                                                                    iArr[i36] = 47;
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            case 45:
                                                                                                if (this.f23984strictfp != 59 || i16 <= 119) {
                                                                                                }
                                                                                                break;
                                                                                        }
                                                                                }
                                                                        }
                                                                    case 29:
                                                                        if (this.f23984strictfp != 38 || i16 <= 127) {
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                }
                                        }
                                    } else if (this.f23984strictfp == 59) {
                                        int i37 = this.f23982return;
                                        this.f23982return = i37 + 1;
                                        iArr[i37] = 85;
                                    }
                                } else if (this.f23984strictfp == 61 && i16 > 118) {
                                    i16 = 118;
                                }
                            } else if (this.f23984strictfp != 59 || i16 <= 115) {
                            }
                        } else if (this.f23984strictfp == 38) {
                            m28150import(382, 387);
                        }
                    } else if (this.f23984strictfp == 36) {
                        if (i16 > 142) {
                            i16 = 142;
                        }
                        m28162switch(34, 35);
                    }
                    if (i17 != i15) {
                        i21 = 34;
                    }
                }
            } else if (i19 < 128) {
                long j3 = 1 << (i19 & 63);
                while (true) {
                    int[] iArr3 = this.f23972finally;
                    i17--;
                    switch (iArr3[i17]) {
                        case 1:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i16 > 142) {
                                    i16 = 142;
                                }
                                m28162switch(34, 35);
                            } else {
                                int i38 = this.f23984strictfp;
                                if (i38 == 92) {
                                    m28150import(392, 396);
                                } else if (i38 == 91) {
                                    int i39 = this.f23982return;
                                    this.f23982return = i39 + 1;
                                    iArr3[i39] = 41;
                                } else if (i38 == 124) {
                                    int i40 = this.f23982return;
                                    this.f23982return = i40 + 1;
                                    iArr3[i40] = 31;
                                }
                            }
                            int i41 = this.f23984strictfp;
                            if (i41 != 103) {
                                if (i41 != 108) {
                                    if (i41 != 92) {
                                        if (i41 != 124) {
                                            if (i41 != 114) {
                                                if (i41 == 91) {
                                                    int[] iArr4 = this.f23972finally;
                                                    int i42 = this.f23982return;
                                                    this.f23982return = i42 + 1;
                                                    iArr4[i42] = 2;
                                                    break;
                                                }
                                            } else {
                                                m28150import(369, 370);
                                                break;
                                            }
                                        } else if (i16 > 128) {
                                            i16 = 128;
                                            break;
                                        }
                                    } else {
                                        m28158return(36);
                                        break;
                                    }
                                } else {
                                    m28162switch(60, 62);
                                    break;
                                }
                            } else {
                                m28162switch(67, 100);
                                break;
                            }
                            break;
                        case 6:
                            if ((j3 & (-268435457)) != 0) {
                                m28159static(361, 363);
                            }
                            break;
                        case 7:
                            if (this.f23984strictfp == 92) {
                                m28150import(371, 372);
                            }
                            break;
                        case 8:
                            if (this.f23984strictfp == 120) {
                                int i43 = this.f23982return;
                                this.f23982return = i43 + 1;
                                iArr3[i43] = 9;
                            }
                            break;
                        case 9:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(361, 363);
                            }
                            break;
                        case 11:
                            if ((j3 & 582179063439818752L) != 0) {
                                m28159static(361, 363);
                            }
                            break;
                        case 13:
                            if ((j3 & (-268435457)) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                            }
                            break;
                        case 14:
                            if (this.f23984strictfp == 92) {
                                m28150import(373, 374);
                            }
                            break;
                        case 15:
                            if (this.f23984strictfp == 120) {
                                int i44 = this.f23982return;
                                this.f23982return = i44 + 1;
                                iArr3[i44] = 16;
                            }
                            break;
                        case 16:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                            }
                            break;
                        case 18:
                            if ((j3 & 582179063439818752L) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                            }
                            break;
                        case 19:
                            if (this.f23984strictfp == 114) {
                                m28150import(369, 370);
                            }
                            break;
                        case 21:
                            m28150import(375, 376);
                            break;
                        case 24:
                            m28150import(377, 378);
                            break;
                        case 30:
                        case 31:
                            if (this.f23984strictfp == 124 && i16 > 128) {
                                i16 = 128;
                            }
                            break;
                        case 32:
                            if (this.f23984strictfp == 124) {
                                int i45 = this.f23982return;
                                this.f23982return = i45 + 1;
                                iArr3[i45] = 31;
                            }
                            break;
                        case 33:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i16 > 142) {
                                    i16 = 142;
                                }
                                m28162switch(34, 35);
                            }
                            break;
                        case 34:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i16 > 142) {
                                    i6 = 34;
                                    i5 = 142;
                                } else {
                                    i5 = i16;
                                    i6 = 34;
                                }
                                m28162switch(i6, 35);
                                i16 = i5;
                            }
                            break;
                        case 35:
                            if (this.f23984strictfp == 92) {
                                m28158return(36);
                            }
                            break;
                        case 37:
                            if (this.f23984strictfp == 92) {
                                m28158return(36);
                            }
                            break;
                        case 38:
                            if (this.f23984strictfp == 123 && i16 > 143) {
                                i16 = 143;
                            }
                            break;
                        case 42:
                            if (this.f23984strictfp == 91) {
                                int i46 = this.f23982return;
                                this.f23982return = i46 + 1;
                                iArr3[i46] = 41;
                            }
                            break;
                        case 46:
                            if (this.f23984strictfp == 116) {
                                int i47 = this.f23982return;
                                this.f23982return = i47 + 1;
                                iArr3[i47] = 45;
                            }
                            break;
                        case 47:
                            if (this.f23984strictfp == 103) {
                                int i48 = this.f23982return;
                                this.f23982return = i48 + 1;
                                iArr3[i48] = i20;
                            }
                            break;
                        case 59:
                            if (this.f23984strictfp == 108) {
                                m28162switch(60, 62);
                            }
                            break;
                        case 60:
                            if (this.f23984strictfp == 116 && i16 > 115) {
                                i16 = 115;
                            }
                            break;
                        case 61:
                            if (this.f23984strictfp == i12 && i16 > 116) {
                                i16 = 116;
                            }
                            break;
                        case 62:
                        case 65:
                            if (this.f23984strictfp == 116) {
                                m28158return(61);
                            }
                            break;
                        case 63:
                            if (this.f23984strictfp == 92) {
                                m28150import(392, 396);
                            }
                            break;
                        case 64:
                            if (this.f23984strictfp == 108) {
                                m28158return(60);
                            }
                            break;
                        case 66:
                            if (this.f23984strictfp == 108) {
                                int i49 = this.f23982return;
                                this.f23982return = i49 + 1;
                                iArr3[i49] = 65;
                            }
                            break;
                        case 67:
                            if (this.f23984strictfp == 116 && i16 > 117) {
                                i16 = 117;
                            }
                            break;
                        case 68:
                            if (this.f23984strictfp == 103) {
                                m28158return(67);
                            }
                            break;
                        case 69:
                            if (this.f23984strictfp == i12 && i16 > 118) {
                                i16 = 118;
                            }
                            break;
                        case 70:
                        case 100:
                            if (this.f23984strictfp == 116) {
                                m28158return(69);
                            }
                            break;
                        case 71:
                            if (this.f23984strictfp == 103) {
                                int i50 = this.f23982return;
                                this.f23982return = i50 + 1;
                                iArr3[i50] = 70;
                            }
                            break;
                        case 72:
                            if (this.f23984strictfp == 100 && i16 > 127) {
                                i16 = 127;
                            }
                            break;
                        case 73:
                            if (this.f23984strictfp == 110) {
                                int i51 = this.f23982return;
                                this.f23982return = i51 + 1;
                                iArr3[i51] = 72;
                            }
                            break;
                        case 74:
                            if (this.f23984strictfp == 97) {
                                int i52 = this.f23982return;
                                this.f23982return = i52 + 1;
                                iArr3[i52] = 73;
                            }
                            break;
                        case 77:
                            if (this.f23984strictfp == 116) {
                                int i53 = this.f23982return;
                                this.f23982return = i53 + 1;
                                iArr3[i53] = 76;
                            }
                            break;
                        case 78:
                            if (this.f23984strictfp == 108) {
                                int i54 = this.f23982return;
                                this.f23982return = i54 + 1;
                                iArr3[i54] = 77;
                            }
                            break;
                        case 80:
                            if (this.f23984strictfp == 116) {
                                int i55 = this.f23982return;
                                this.f23982return = i55 + 1;
                                iArr3[i55] = 79;
                            }
                            break;
                        case 81:
                            if (this.f23984strictfp == 108) {
                                int i56 = this.f23982return;
                                this.f23982return = i56 + 1;
                                iArr3[i56] = 80;
                            }
                            break;
                        case 83:
                            if (this.f23984strictfp == 116) {
                                int i57 = this.f23982return;
                                this.f23982return = i57 + 1;
                                iArr3[i57] = 82;
                            }
                            break;
                        case 84:
                            if (this.f23984strictfp == 103) {
                                int i58 = this.f23982return;
                                this.f23982return = i58 + 1;
                                iArr3[i58] = 83;
                            }
                            break;
                        case 87:
                            if (this.f23984strictfp == 116) {
                                int i59 = this.f23982return;
                                this.f23982return = i59 + 1;
                                iArr3[i59] = 86;
                            }
                            break;
                        case 88:
                            if (this.f23984strictfp == 103) {
                                int i60 = this.f23982return;
                                this.f23982return = i60 + 1;
                                iArr3[i60] = 87;
                            }
                            break;
                        case 91:
                            if (this.f23984strictfp == 112) {
                                int i61 = this.f23982return;
                                this.f23982return = i61 + 1;
                                iArr3[i61] = 90;
                            }
                            break;
                        case 92:
                            if (this.f23984strictfp == 109) {
                                int i62 = this.f23982return;
                                this.f23982return = i62 + 1;
                                iArr3[i62] = 91;
                            }
                            break;
                        case 93:
                            if (this.f23984strictfp == 97) {
                                int i63 = this.f23982return;
                                this.f23982return = i63 + 1;
                                iArr3[i63] = 92;
                            }
                            break;
                        case 96:
                            if (this.f23984strictfp == 112) {
                                int i64 = this.f23982return;
                                this.f23982return = i64 + 1;
                                iArr3[i64] = 95;
                            }
                            break;
                        case 97:
                            if (this.f23984strictfp == 109) {
                                int i65 = this.f23982return;
                                this.f23982return = i65 + 1;
                                iArr3[i65] = 96;
                            }
                            break;
                        case 98:
                            if (this.f23984strictfp == 97) {
                                int i66 = this.f23982return;
                                this.f23982return = i66 + 1;
                                iArr3[i66] = 97;
                            }
                            break;
                        case 99:
                            if (this.f23984strictfp == 103) {
                                m28162switch(67, 100);
                            }
                            break;
                        case 101:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i16 > 142) {
                                    i7 = 34;
                                    i16 = 142;
                                } else {
                                    i7 = 34;
                                }
                                m28162switch(i7, 35);
                            } else if (this.f23984strictfp == 92) {
                                m28158return(36);
                            }
                            break;
                    }
                    if (i17 != i15) {
                        i20 = 46;
                    }
                }
            } else {
                int i67 = i19 >> 8;
                int i68 = i67 >> 6;
                long j4 = 1 << (i67 & 63);
                int i69 = (i19 & 255) >> 6;
                long j5 = 1 << (i19 & 63);
                while (true) {
                    i17--;
                    int i70 = this.f23972finally[i17];
                    if (i70 != 1) {
                        if (i70 != 6) {
                            if (i70 != 13) {
                                if (i70 != 21) {
                                    if (i70 != 24) {
                                        if (i70 == 34 || i70 == i12) {
                                            if (m28157public(i67, i68, i69, j4, j5)) {
                                                if (i16 > 142) {
                                                    i16 = 142;
                                                }
                                                m28162switch(34, 35);
                                                if (i17 != i15) {
                                                    i12 = 101;
                                                }
                                            }
                                        } else if (i68 != 0) {
                                            int i71 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                                        }
                                    } else if (m28153native(i67, i68, i69, j4, j5)) {
                                        m28150import(377, 378);
                                    }
                                } else if (m28153native(i67, i68, i69, j4, j5)) {
                                    m28150import(375, 376);
                                }
                            } else if (m28153native(i67, i68, i69, j4, j5)) {
                                m28150import(358, FunGameBattleCityHeader.u);
                            }
                        } else if (m28153native(i67, i68, i69, j4, j5)) {
                            m28150import(361, 363);
                        }
                        if (i17 != i15) {
                        }
                    } else {
                        if (m28157public(i67, i68, i69, j4, j5)) {
                            if (i16 > 142) {
                                i4 = 34;
                                i16 = 142;
                            } else {
                                i4 = 34;
                            }
                            m28162switch(i4, 35);
                        }
                        if (i17 != i15) {
                        }
                    }
                }
            }
            if (i16 != Integer.MAX_VALUE) {
                this.f23989throws = i16;
                this.f23986switch = i14;
                i16 = Integer.MAX_VALUE;
            }
            i14++;
            i17 = this.f23982return;
            this.f23982return = i15;
            i15 = 101 - i15;
            if (i17 == i15) {
                return i14;
            }
            try {
                this.f23984strictfp = this.f23967default.m28301finally();
                i12 = 101;
                i13 = 1;
            } catch (IOException unused) {
                return i14;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:725:0x04a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0180  */
    /* renamed from: private, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28155private(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        this.f23982return = 106;
        this.f23972finally[0] = i2;
        int i11 = 1;
        int i12 = i3;
        int i13 = 0;
        int i14 = Integer.MAX_VALUE;
        int i15 = 1;
        while (true) {
            int i16 = this.f23983static + i11;
            this.f23983static = i16;
            if (i16 == Integer.MAX_VALUE) {
                m28148for();
            }
            int i17 = this.f23984strictfp;
            int i18 = 97;
            if (i17 < 64) {
                long j2 = 1 << i17;
                do {
                    int[] iArr = this.f23972finally;
                    i15--;
                    switch (iArr[i15]) {
                        case 0:
                            if ((j2 & 4294977024L) == 0) {
                                break;
                            } else {
                                if (i14 > 85) {
                                    i14 = 85;
                                }
                                m28158return(0);
                                break;
                            }
                        case 1:
                            if ((j2 & 287948901175001088L) != 0) {
                                if (i14 > 97) {
                                    i14 = 97;
                                }
                                m28159static(433, 435);
                            } else if ((j2 & 4294977024L) != 0) {
                                if (i14 > 85) {
                                    i14 = 85;
                                }
                                m28158return(0);
                            } else {
                                int i19 = this.f23984strictfp;
                                if (i19 == 38) {
                                    m28150import(436, 441);
                                } else if (i19 == 46) {
                                    m28150import(442, 443);
                                } else if (i19 == 45) {
                                    m28150import(444, 445);
                                } else if (i19 == 47) {
                                    m28150import(446, 447);
                                } else if (i19 == 33) {
                                    m28158return(44);
                                } else if (i19 != 35 && i19 != 36) {
                                    if (i19 != 60) {
                                        if (i19 != 39) {
                                            i9 = 34;
                                            if (i19 == 34) {
                                                m28159static(361, 363);
                                            }
                                            i10 = this.f23984strictfp;
                                            if (i10 != 36) {
                                                if (i14 > 142) {
                                                    i14 = 142;
                                                }
                                                m28162switch(i9, 35);
                                            } else if (i10 == 38) {
                                                if (i14 > 127) {
                                                    i14 = 127;
                                                }
                                            } else if (i10 == 60 && i14 > 115) {
                                                i14 = 115;
                                            }
                                            if (this.f23984strictfp == 60) {
                                                break;
                                            } else {
                                                int[] iArr2 = this.f23972finally;
                                                int i20 = this.f23982return;
                                                this.f23982return = i20 + 1;
                                                iArr2[i20] = 2;
                                                break;
                                            }
                                        } else {
                                            m28159static(358, FunGameBattleCityHeader.u);
                                        }
                                    } else {
                                        m28158return(27);
                                    }
                                } else {
                                    m28158return(38);
                                }
                            }
                            i9 = 34;
                            i10 = this.f23984strictfp;
                            if (i10 != 36) {
                            }
                            if (this.f23984strictfp == 60) {
                            }
                            break;
                        case 2:
                            if ((j2 & 42949672960L) == 0) {
                                if (this.f23984strictfp == 61 && i14 > 143) {
                                    i14 = 143;
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                int i21 = this.f23982return;
                                this.f23982return = i21 + 1;
                                iArr[i21] = 4;
                                break;
                            }
                            break;
                        case 3:
                            if (this.f23984strictfp == 45 && i14 > 86) {
                                i14 = 86;
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                int i22 = this.f23982return;
                                this.f23982return = i22 + 1;
                                iArr[i22] = 3;
                                break;
                            }
                        case 5:
                            if (this.f23984strictfp != 34) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 6:
                            if ((j2 & (-17179869185L)) == 0) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 9:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 10:
                            if (this.f23984strictfp == 34 && i14 > 93) {
                                i14 = 93;
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if ((j2 & 2305843576149377024L) == 0) {
                                break;
                            } else {
                                m28159static(361, 363);
                                break;
                            }
                        case 12:
                            if (this.f23984strictfp != 39) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 13:
                            if ((j2 & (-549755813889L)) == 0) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 16:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 17:
                            if (this.f23984strictfp != 39 || i14 <= 93) {
                                break;
                            }
                            break;
                        case 18:
                            if ((j2 & 2305843576149377024L) == 0) {
                                break;
                            } else {
                                m28159static(358, FunGameBattleCityHeader.u);
                                break;
                            }
                        case 20:
                            if (this.f23984strictfp != 34) {
                                break;
                            } else {
                                m28162switch(21, 22);
                                break;
                            }
                        case 21:
                            if ((j2 & (-17179869185L)) == 0) {
                                break;
                            } else {
                                m28162switch(21, 22);
                                break;
                            }
                        case 22:
                            if (this.f23984strictfp == 34 && i14 > 94) {
                                i14 = 94;
                                break;
                            } else {
                                break;
                            }
                        case 23:
                            if (this.f23984strictfp != 39) {
                                break;
                            } else {
                                m28162switch(24, 25);
                                break;
                            }
                        case 24:
                            if ((j2 & (-549755813889L)) == 0) {
                                break;
                            } else {
                                m28162switch(24, 25);
                                break;
                            }
                        case 25:
                            if (this.f23984strictfp != 39 || i14 <= 94) {
                                break;
                            }
                            break;
                        case 26:
                            if (this.f23984strictfp == 60 && i14 > 115) {
                                i14 = 115;
                                break;
                            } else {
                                break;
                            }
                        case 27:
                            if (this.f23984strictfp == 61 && i14 > 116) {
                                i14 = 116;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 28:
                            if (this.f23984strictfp != 60) {
                                break;
                            } else {
                                m28158return(27);
                                break;
                            }
                        case 29:
                        case 94:
                            if (this.f23984strictfp == 38 && i14 > 127) {
                                i14 = 127;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 33:
                            if (this.f23984strictfp != 36) {
                                break;
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                        case 34:
                        case 106:
                            if ((j2 & 287948969894477824L) == 0) {
                                break;
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                        case 36:
                            if ((j2 & 288335929267978240L) == 0) {
                                break;
                            } else {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                                break;
                            }
                        case 39:
                            if (this.f23984strictfp != 36) {
                                break;
                            } else {
                                m28158return(38);
                                break;
                            }
                        case 40:
                            if (this.f23984strictfp != 35) {
                                break;
                            } else {
                                m28158return(38);
                                break;
                            }
                        case 41:
                            if (this.f23984strictfp != 61 || i14 <= 143) {
                                break;
                            }
                            break;
                        case 43:
                            if (this.f23984strictfp != 33) {
                                break;
                            } else {
                                m28158return(44);
                                break;
                            }
                        case 44:
                            if ((j2 & 4294977024L) == 0) {
                                break;
                            } else {
                                if (i14 > 153) {
                                    i14 = 153;
                                }
                                m28158return(44);
                                break;
                            }
                        case 45:
                            if (this.f23984strictfp != 47) {
                                break;
                            } else {
                                m28150import(446, 447);
                                break;
                            }
                        case 46:
                            if (this.f23984strictfp == 62 && i14 > 149) {
                                i14 = 149;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 48:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                m28150import(444, 445);
                                break;
                            }
                        case 49:
                            int i23 = this.f23984strictfp;
                            if (i23 != 38) {
                                if (i23 == 62 && i14 > 119) {
                                    i14 = 119;
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                int i24 = this.f23982return;
                                this.f23982return = i24 + 1;
                                iArr[i24] = 52;
                                break;
                            }
                            break;
                        case 50:
                            if (this.f23984strictfp != 59 || i14 <= 119) {
                                break;
                            }
                            break;
                        case 53:
                            if (this.f23984strictfp != 38) {
                                break;
                            } else {
                                int i25 = this.f23982return;
                                this.f23982return = i25 + 1;
                                iArr[i25] = 52;
                                break;
                            }
                        case 54:
                            if (this.f23984strictfp != 46) {
                                break;
                            } else {
                                m28150import(442, 443);
                                break;
                            }
                        case 55:
                            int i26 = this.f23984strictfp;
                            if (i26 == 33) {
                                if (i14 <= 101) {
                                    break;
                                } else {
                                    i14 = 101;
                                    break;
                                }
                            } else if (i26 != 60 || i14 <= 101) {
                                break;
                            }
                            break;
                        case 56:
                            int i27 = this.f23984strictfp;
                            if (i27 == 46) {
                                int i28 = this.f23982return;
                                this.f23982return = i28 + 1;
                                iArr[i28] = 57;
                            }
                            if (i27 != 46) {
                                break;
                            } else {
                                int i29 = this.f23982return;
                                this.f23982return = i29 + 1;
                                iArr[i29] = 55;
                                break;
                            }
                        case 57:
                            if (this.f23984strictfp != 33 || i14 <= 101) {
                                break;
                            }
                            break;
                        case 58:
                            if (this.f23984strictfp != 46) {
                                break;
                            } else {
                                int i30 = this.f23982return;
                                this.f23982return = i30 + 1;
                                iArr[i30] = 57;
                                break;
                            }
                        case 59:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                if (i14 > 97) {
                                    i14 = 97;
                                }
                                m28159static(433, 435);
                                break;
                            }
                        case 60:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                if (i14 > 97) {
                                    i14 = 97;
                                }
                                m28158return(60);
                                break;
                            }
                        case 61:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                m28162switch(61, 62);
                                break;
                            }
                        case 62:
                            if (this.f23984strictfp != 46) {
                                break;
                            } else {
                                m28158return(63);
                                break;
                            }
                        case 63:
                            if ((j2 & 287948901175001088L) == 0) {
                                break;
                            } else {
                                if (i14 > 98) {
                                    i14 = 98;
                                }
                                m28158return(63);
                                break;
                            }
                        case 80:
                            if (this.f23984strictfp != 38) {
                                break;
                            } else {
                                m28150import(436, 441);
                                break;
                            }
                        case 81:
                            if (this.f23984strictfp != 59 || i14 <= 115) {
                                break;
                            }
                            break;
                        case 84:
                            if (this.f23984strictfp != 59) {
                                break;
                            } else {
                                m28158return(27);
                                break;
                            }
                        case 87:
                            if (this.f23984strictfp == 59 && i14 > 117) {
                                i14 = 117;
                                break;
                            } else {
                                break;
                            }
                        case 90:
                            if (this.f23984strictfp == 61 && i14 > 118) {
                                i14 = 118;
                                break;
                            } else {
                                break;
                            }
                        case 91:
                            if (this.f23984strictfp != 59) {
                                break;
                            } else {
                                int i31 = this.f23982return;
                                this.f23982return = i31 + 1;
                                iArr[i31] = 90;
                                break;
                            }
                        case 95:
                            if (this.f23984strictfp != 59 || i14 <= 127) {
                                break;
                            }
                            break;
                        case 99:
                            if (this.f23984strictfp != 38) {
                                break;
                            } else {
                                int i32 = this.f23982return;
                                this.f23982return = i32 + 1;
                                iArr[i32] = 98;
                                break;
                            }
                        case 100:
                            if (this.f23984strictfp != 59) {
                                break;
                            } else {
                                int i33 = this.f23982return;
                                this.f23982return = i33 + 1;
                                iArr[i33] = 99;
                                break;
                            }
                    }
                } while (i15 != i13);
            } else if (i17 < 128) {
                long j3 = 1 << (i17 & 63);
                while (true) {
                    int[] iArr3 = this.f23972finally;
                    i15--;
                    switch (iArr3[i15]) {
                        case 1:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i14 > 142) {
                                    i6 = 34;
                                    i14 = 142;
                                } else {
                                    i6 = 34;
                                }
                                m28162switch(i6, 35);
                            } else {
                                int i34 = this.f23984strictfp;
                                if (i34 == 92) {
                                    m28150import(448, 452);
                                } else if (i34 == 91) {
                                    int i35 = this.f23982return;
                                    this.f23982return = i35 + 1;
                                    iArr3[i35] = 41;
                                } else if (i34 == 124) {
                                    int i36 = this.f23982return;
                                    this.f23982return = i36 + 1;
                                    iArr3[i36] = 31;
                                }
                            }
                            int i37 = this.f23984strictfp;
                            if (i37 != 103) {
                                if (i37 != 108) {
                                    if (i37 != 92) {
                                        if (i37 != 124) {
                                            if (i37 != 114) {
                                                if (i37 == 91) {
                                                    int[] iArr4 = this.f23972finally;
                                                    int i38 = this.f23982return;
                                                    this.f23982return = i38 + 1;
                                                    iArr4[i38] = 2;
                                                    break;
                                                }
                                            } else {
                                                m28150import(369, 370);
                                                break;
                                            }
                                        } else if (i14 > 128) {
                                            i14 = 128;
                                            break;
                                        }
                                    } else {
                                        m28158return(36);
                                        break;
                                    }
                                } else {
                                    m28162switch(65, 67);
                                }
                            } else {
                                m28162switch(72, 105);
                            }
                            break;
                        case 6:
                            if (((-268435457) & j3) != 0) {
                                m28159static(361, 363);
                            }
                            break;
                        case 7:
                            if (this.f23984strictfp == 92) {
                                m28150import(371, 372);
                            }
                            break;
                        case 8:
                            if (this.f23984strictfp == 120) {
                                int i39 = this.f23982return;
                                this.f23982return = i39 + 1;
                                iArr3[i39] = 9;
                            }
                            break;
                        case 9:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(361, 363);
                            }
                            break;
                        case 11:
                            if ((582179063439818752L & j3) != 0) {
                                m28159static(361, 363);
                            }
                            break;
                        case 13:
                            if (((-268435457) & j3) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                            }
                            break;
                        case 14:
                            if (this.f23984strictfp == 92) {
                                m28150import(373, 374);
                            }
                            break;
                        case 15:
                            if (this.f23984strictfp == 120) {
                                int i40 = this.f23982return;
                                this.f23982return = i40 + 1;
                                iArr3[i40] = 16;
                            }
                            break;
                        case 16:
                            if ((j3 & 541165879422L) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                            }
                            break;
                        case 18:
                            if ((582179063439818752L & j3) != 0) {
                                m28159static(358, FunGameBattleCityHeader.u);
                            }
                            break;
                        case 19:
                            if (this.f23984strictfp == 114) {
                                m28150import(369, 370);
                            }
                            break;
                        case 21:
                            m28150import(375, 376);
                            break;
                        case 24:
                            m28150import(377, 378);
                            break;
                        case 30:
                        case 31:
                            if (this.f23984strictfp == 124 && i14 > 128) {
                                i14 = 128;
                            }
                            break;
                        case 32:
                            if (this.f23984strictfp == 124) {
                                int i41 = this.f23982return;
                                this.f23982return = i41 + 1;
                                iArr3[i41] = 31;
                            }
                            break;
                        case 33:
                            if ((j3 & 576460745995190271L) != 0) {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                            }
                            break;
                        case 34:
                            if ((576460745995190271L & j3) != 0) {
                                if (i14 > 142) {
                                    i8 = 34;
                                    i7 = 142;
                                } else {
                                    i7 = i14;
                                    i8 = 34;
                                }
                                m28162switch(i8, 35);
                                i14 = i7;
                            }
                            break;
                        case 35:
                            if (this.f23984strictfp == 92) {
                                m28158return(36);
                            }
                            break;
                        case 37:
                            if (this.f23984strictfp == 92) {
                                m28158return(36);
                            }
                            break;
                        case 38:
                            if (this.f23984strictfp == 123 && i14 > 143) {
                                i14 = 143;
                            }
                            break;
                        case 42:
                            if (this.f23984strictfp == 91) {
                                int i42 = this.f23982return;
                                this.f23982return = i42 + 1;
                                iArr3[i42] = 41;
                            }
                            break;
                        case 46:
                            if (this.f23984strictfp == 93 && i14 > 149) {
                                i14 = 149;
                            }
                            break;
                        case 51:
                            if (this.f23984strictfp == 116) {
                                int i43 = this.f23982return;
                                this.f23982return = i43 + 1;
                                iArr3[i43] = 50;
                            }
                            break;
                        case 52:
                            if (this.f23984strictfp == 103) {
                                int i44 = this.f23982return;
                                this.f23982return = i44 + 1;
                                iArr3[i44] = 51;
                            }
                            break;
                        case 64:
                            if (this.f23984strictfp == 108) {
                                m28162switch(65, 67);
                            }
                            break;
                        case 65:
                            if (this.f23984strictfp == 116 && i14 > 115) {
                                i14 = 115;
                            }
                            break;
                        case 66:
                            if (this.f23984strictfp == 101 && i14 > 116) {
                                i14 = 116;
                            }
                            break;
                        case 67:
                        case 70:
                            if (this.f23984strictfp == 116) {
                                m28158return(66);
                            }
                            break;
                        case 68:
                            if (this.f23984strictfp == 92) {
                                m28150import(448, 452);
                            }
                            break;
                        case 69:
                            if (this.f23984strictfp == 108) {
                                m28158return(65);
                            }
                            break;
                        case 71:
                            if (this.f23984strictfp == 108) {
                                int i45 = this.f23982return;
                                this.f23982return = i45 + 1;
                                iArr3[i45] = 70;
                            }
                            break;
                        case 72:
                            if (this.f23984strictfp == 116 && i14 > 117) {
                                i14 = 117;
                            }
                            break;
                        case 73:
                            if (this.f23984strictfp == 103) {
                                m28158return(72);
                            }
                            break;
                        case 74:
                            if (this.f23984strictfp == 101 && i14 > 118) {
                                i14 = 118;
                            }
                            break;
                        case 75:
                        case 105:
                            if (this.f23984strictfp == 116) {
                                m28158return(74);
                            }
                            break;
                        case 76:
                            if (this.f23984strictfp == 103) {
                                int i46 = this.f23982return;
                                this.f23982return = i46 + 1;
                                iArr3[i46] = 75;
                            }
                            break;
                        case 77:
                            if (this.f23984strictfp == 100 && i14 > 127) {
                                i14 = 127;
                            }
                            break;
                        case 78:
                            if (this.f23984strictfp == 110) {
                                int i47 = this.f23982return;
                                this.f23982return = i47 + 1;
                                iArr3[i47] = 77;
                            }
                            break;
                        case 79:
                            if (this.f23984strictfp == i18) {
                                int i48 = this.f23982return;
                                this.f23982return = i48 + 1;
                                iArr3[i48] = 78;
                            }
                            break;
                        case 82:
                            if (this.f23984strictfp == 116) {
                                int i49 = this.f23982return;
                                this.f23982return = i49 + 1;
                                iArr3[i49] = 81;
                            }
                            break;
                        case 83:
                            if (this.f23984strictfp == 108) {
                                int i50 = this.f23982return;
                                this.f23982return = i50 + 1;
                                iArr3[i50] = 82;
                            }
                            break;
                        case 85:
                            if (this.f23984strictfp == 116) {
                                int i51 = this.f23982return;
                                this.f23982return = i51 + 1;
                                iArr3[i51] = 84;
                            }
                            break;
                        case 86:
                            if (this.f23984strictfp == 108) {
                                int i52 = this.f23982return;
                                this.f23982return = i52 + 1;
                                iArr3[i52] = 85;
                            }
                            break;
                        case 88:
                            if (this.f23984strictfp == 116) {
                                int i53 = this.f23982return;
                                this.f23982return = i53 + 1;
                                iArr3[i53] = 87;
                            }
                            break;
                        case 89:
                            if (this.f23984strictfp == 103) {
                                int i54 = this.f23982return;
                                this.f23982return = i54 + 1;
                                iArr3[i54] = 88;
                            }
                            break;
                        case 92:
                            if (this.f23984strictfp == 116) {
                                int i55 = this.f23982return;
                                this.f23982return = i55 + 1;
                                iArr3[i55] = 91;
                            }
                            break;
                        case 93:
                            if (this.f23984strictfp == 103) {
                                int i56 = this.f23982return;
                                this.f23982return = i56 + 1;
                                iArr3[i56] = 92;
                            }
                            break;
                        case 96:
                            if (this.f23984strictfp == 112) {
                                int i57 = this.f23982return;
                                this.f23982return = i57 + 1;
                                iArr3[i57] = 95;
                            }
                            break;
                        case 97:
                            if (this.f23984strictfp == 109) {
                                int i58 = this.f23982return;
                                this.f23982return = i58 + 1;
                                iArr3[i58] = 96;
                            }
                            break;
                        case 98:
                            if (this.f23984strictfp == i18) {
                                int i59 = this.f23982return;
                                this.f23982return = i59 + 1;
                                iArr3[i59] = i18;
                            }
                            break;
                        case 101:
                            if (this.f23984strictfp == 112) {
                                int i60 = this.f23982return;
                                this.f23982return = i60 + 1;
                                iArr3[i60] = 100;
                            }
                            break;
                        case 102:
                            if (this.f23984strictfp == 109) {
                                int i61 = this.f23982return;
                                this.f23982return = i61 + 1;
                                iArr3[i61] = 101;
                            }
                            break;
                        case 103:
                            if (this.f23984strictfp == i18) {
                                int i62 = this.f23982return;
                                this.f23982return = i62 + 1;
                                iArr3[i62] = 102;
                            }
                            break;
                        case 104:
                            if (this.f23984strictfp == 103) {
                                m28162switch(72, 105);
                            }
                            break;
                        case 106:
                            if ((576460745995190271L & j3) != 0) {
                                if (i14 > 142) {
                                    i14 = 142;
                                }
                                m28162switch(34, 35);
                            } else if (this.f23984strictfp == 92) {
                                m28158return(36);
                            }
                            break;
                    }
                    if (i15 != i13) {
                        i18 = 97;
                    }
                }
            } else {
                int i63 = i17 >> 8;
                int i64 = i63 >> 6;
                long j4 = 1 << (i63 & 63);
                int i65 = (i17 & 255) >> 6;
                long j5 = 1 << (i17 & 63);
                do {
                    i15--;
                    int i66 = this.f23972finally[i15];
                    if (i66 != 1) {
                        if (i66 != 6) {
                            if (i66 != 13) {
                                if (i66 != 21) {
                                    if (i66 != 24) {
                                        if (i66 == 34 || i66 == 106) {
                                            if (m28157public(i63, i64, i65, j4, j5)) {
                                                if (i14 > 142) {
                                                    i5 = 34;
                                                    i4 = 142;
                                                } else {
                                                    i4 = i14;
                                                    i5 = 34;
                                                }
                                                m28162switch(i5, 35);
                                                i14 = i4;
                                            }
                                        } else if (i64 != 0) {
                                            int i67 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                                        }
                                    } else if (m28153native(i63, i64, i65, j4, j5)) {
                                        m28150import(377, 378);
                                    }
                                } else if (m28153native(i63, i64, i65, j4, j5)) {
                                    m28150import(375, 376);
                                }
                            } else if (m28153native(i63, i64, i65, j4, j5)) {
                                m28150import(358, FunGameBattleCityHeader.u);
                            }
                        } else if (m28153native(i63, i64, i65, j4, j5)) {
                            m28150import(361, 363);
                        }
                    } else if (m28157public(i63, i64, i65, j4, j5)) {
                        if (i14 > 142) {
                            i14 = 142;
                        }
                        m28162switch(34, 35);
                    }
                } while (i15 != i13);
            }
            if (i14 != Integer.MAX_VALUE) {
                this.f23989throws = i14;
                this.f23986switch = i12;
                i14 = Integer.MAX_VALUE;
            }
            i12++;
            i15 = this.f23982return;
            this.f23982return = i13;
            i13 = 106 - i13;
            if (i15 == i13) {
                return i12;
            }
            try {
                this.f23984strictfp = this.f23967default.m28301finally();
                i11 = 1;
            } catch (IOException unused) {
                return i12;
            }
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private int m28156protected() {
        int i2 = this.f23984strictfp;
        if (i2 == 33) {
            this.f23989throws = 129;
            return d(8796093022208L, 0L);
        }
        if (i2 == 37) {
            this.f23989throws = 126;
            return d(281474976710656L, 0L);
        }
        if (i2 == 91) {
            return t(0, 133, 2);
        }
        if (i2 == 93) {
            return F(0, 134);
        }
        if (i2 == 97) {
            return d(0L, 4096L);
        }
        if (i2 == 102) {
            return d(2147483648L, 0L);
        }
        if (i2 == 105) {
            return d(0L, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH);
        }
        if (i2 == 123) {
            return F(0, 137);
        }
        if (i2 == 125) {
            return F(0, 138);
        }
        if (i2 == 58) {
            return F(0, 132);
        }
        if (i2 == 59) {
            return F(0, 131);
        }
        if (i2 == 116) {
            return d(o3.f24027catch, 0L);
        }
        if (i2 == 117) {
            return d(0L, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
        }
        switch (i2) {
            case 40:
                return F(0, 135);
            case 41:
                return F(0, 136);
            case 42:
                this.f23989throws = 122;
                return d(576531121047601152L, 0L);
            case 43:
                this.f23989throws = 120;
                return d(580542139465728L, 0L);
            case 44:
                return F(0, 130);
            case 45:
                this.f23989throws = 121;
                return d(1161084278931456L, 0L);
            case 46:
                this.f23989throws = 99;
                return d(1152921848204230656L, 0L);
            case 47:
                this.f23989throws = 125;
                return d(140737488355328L, 0L);
            default:
                switch (i2) {
                    case 61:
                        this.f23989throws = 105;
                        return d(4398046511104L, 0L);
                    case 62:
                        return F(0, 148);
                    case 63:
                        this.f23989throws = 103;
                        return d(1099511627776L, 0L);
                    default:
                        return m28147finally(1, 0);
                }
        }
    }

    /* renamed from: public, reason: not valid java name */
    private static final boolean m28157public(int i2, int i3, int i4, long j2, long j3) {
        if (i2 == 0) {
            return (f23953implements[i4] & j3) != 0;
        }
        if (i2 == 51) {
            return (f[i4] & j3) != 0;
        }
        if (i2 == 77) {
            return (g[i4] & j3) != 0;
        }
        if (i2 == 164) {
            return (h[i4] & j3) != 0;
        }
        if (i2 == 215) {
            return (o[i4] & j3) != 0;
        }
        if (i2 == 251) {
            return (p[i4] & j3) != 0;
        }
        if (i2 == 32) {
            return (f23954instanceof[i4] & j3) != 0;
        }
        if (i2 == 33) {
            return (f23957synchronized[i4] & j3) != 0;
        }
        if (i2 == 48) {
            return (d[i4] & j3) != 0;
        }
        if (i2 == 49) {
            return (e[i4] & j3) != 0;
        }
        switch (i2) {
            case 44:
                return (a[i4] & j3) != 0;
            case 45:
                return (b[i4] & j3) != 0;
            case 46:
                return (c[i4] & j3) != 0;
            default:
                switch (i2) {
                    case 166:
                        return (i[i4] & j3) != 0;
                    case 167:
                        return (j[i4] & j3) != 0;
                    case 168:
                        return (k[i4] & j3) != 0;
                    case 169:
                        return (l[i4] & j3) != 0;
                    case 170:
                        return (m[i4] & j3) != 0;
                    case 171:
                        return (n[i4] & j3) != 0;
                    default:
                        switch (i2) {
                            case 253:
                                return (q[i4] & j3) != 0;
                            case wd.i2 /* 254 */:
                                return (r[i4] & j3) != 0;
                            case 255:
                                return (s[i4] & j3) != 0;
                            default:
                                return (f23958transient[i3] & j2) != 0;
                        }
                }
        }
    }

    private int q(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return B(2, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'g' && (PlaybackStateCompat.ACTION_PLAY_FROM_URI & j7) != 0) {
                    return u(4, 141, 101);
                }
            } else if ((2147483648L & j6) != 0) {
                return u(4, 95, 101);
            }
            return B(3, 0L, j6, j7);
        } catch (IOException unused) {
            J(3, 0L, j6, j7);
            return 4;
        }
    }

    private int r(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return C(2, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'g' && (PlaybackStateCompat.ACTION_PLAY_FROM_URI & j7) != 0) {
                    return v(4, 141, 106);
                }
            } else if ((2147483648L & j6) != 0) {
                return v(4, 95, 106);
            }
            return C(3, 0L, j6, j7);
        } catch (IOException unused) {
            K(3, 0L, j6, j7);
            return 4;
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m28158return(int i2) {
        int[] iArr = this.f23970extends;
        int i3 = iArr[i2];
        int i4 = this.f23983static;
        if (i3 != i4) {
            int[] iArr2 = this.f23972finally;
            int i5 = this.f23982return;
            this.f23982return = i5 + 1;
            iArr2[i5] = i2;
            iArr[i2] = i4;
        }
    }

    private int s(long j2, long j3, long j4, long j5) {
        long j6 = j3 & j2;
        long j7 = j5 & j4;
        if ((j6 | j7) == 0) {
            return E(2, 0L, j2, j4);
        }
        try {
            char cM28301finally = this.f23967default.m28301finally();
            this.f23984strictfp = cM28301finally;
            if (cM28301finally != 'e') {
                if (cM28301finally == 'g' && (PlaybackStateCompat.ACTION_PLAY_FROM_URI & j7) != 0) {
                    return x(4, 141, 100);
                }
            } else if ((2147483648L & j6) != 0) {
                return x(4, 95, 100);
            }
            return E(3, 0L, j6, j7);
        } catch (IOException unused) {
            M(3, 0L, j6, j7);
            return 4;
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m28159static(int i2, int i3) {
        while (true) {
            m28158return(t[i2]);
            int i4 = i2 + 1;
            if (i2 == i3) {
                return;
            } else {
                i2 = i4;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012b  */
    /* renamed from: strictfp, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m28160strictfp(int i2, int i3) {
        int i4;
        this.f23982return = 13;
        int i5 = 0;
        this.f23972finally[0] = i2;
        int i6 = Integer.MAX_VALUE;
        int i7 = i3;
        int i8 = 1;
        int i9 = Integer.MAX_VALUE;
        int i10 = 0;
        while (true) {
            int i11 = this.f23983static + 1;
            this.f23983static = i11;
            if (i11 == i6) {
                m28148for();
            }
            int i12 = this.f23984strictfp;
            int i13 = 11;
            if (i12 < 64) {
                long j2 = 1 << i12;
                do {
                    int[] iArr = this.f23972finally;
                    i8--;
                    switch (iArr[i8]) {
                        case 0:
                            if ((j2 & (-1152956688978935809L)) != 0) {
                                if (i9 > 156) {
                                    i9 = 156;
                                }
                                m28158return(6);
                            } else if ((j2 & 1152956688978935808L) != 0 && i9 > 157) {
                                i9 = 157;
                            }
                            int i14 = this.f23984strictfp;
                            if (i14 != 45) {
                                if (i14 != 60) {
                                    break;
                                } else {
                                    int[] iArr2 = this.f23972finally;
                                    int i15 = this.f23982return;
                                    this.f23982return = i15 + 1;
                                    iArr2[i15] = 1;
                                    break;
                                }
                            } else {
                                m28150import(i5, 1);
                                break;
                            }
                        case 1:
                            if (this.f23984strictfp != 47) {
                                break;
                            } else {
                                m28162switch(2, 3);
                                break;
                            }
                        case 2:
                            if (this.f23984strictfp != 35) {
                                break;
                            } else {
                                m28158return(3);
                                break;
                            }
                        case 4:
                            if ((j2 & 4294977024L) == 0) {
                                break;
                            } else {
                                m28150import(2, 3);
                                break;
                            }
                        case 5:
                            if (this.f23984strictfp == 62 && i9 > 155) {
                                i9 = 155;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 6:
                            if ((j2 & (-1152956688978935809L)) == 0) {
                                break;
                            } else {
                                if (i9 > 156) {
                                    i9 = 156;
                                }
                                m28158return(6);
                                break;
                            }
                        case 7:
                            if ((j2 & 1152956688978935808L) != 0 && i9 > 157) {
                                i9 = 157;
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                m28150import(i5, 1);
                                break;
                            }
                        case 9:
                            if (this.f23984strictfp == 62 && i9 > 154) {
                                i9 = 154;
                                break;
                            } else {
                                break;
                            }
                            break;
                        case 10:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                int i16 = this.f23982return;
                                this.f23982return = i16 + 1;
                                iArr[i16] = 9;
                                break;
                            }
                        case 12:
                            if (this.f23984strictfp != 45) {
                                break;
                            } else {
                                int i17 = this.f23982return;
                                this.f23982return = i17 + 1;
                                iArr[i17] = 11;
                                break;
                            }
                    }
                } while (i8 != i10);
            } else if (i12 < 128) {
                long j3 = 1 << (i12 & 63);
                while (true) {
                    i8--;
                    int i18 = this.f23972finally[i8];
                    if (i18 == 0) {
                        if (((-134217729) & j3) != 0) {
                            if (i9 > 156) {
                                i9 = 156;
                            }
                            m28158return(6);
                        } else if (this.f23984strictfp == 91 && i9 > 157) {
                            i9 = 157;
                        }
                        if (this.f23984strictfp == 91) {
                            int[] iArr3 = this.f23972finally;
                            int i19 = this.f23982return;
                            this.f23982return = i19 + 1;
                            iArr3[i19] = 1;
                        }
                    } else if (i18 != 3) {
                        if (i18 != i13) {
                            if (i18 != 5) {
                                if (i18 != 6) {
                                    if (i18 == 7 && this.f23984strictfp == 91 && i9 > 157) {
                                        i9 = 157;
                                    }
                                } else if ((j3 & (-134217729)) != 0) {
                                    if (i9 > 156) {
                                        i4 = 6;
                                        i9 = 156;
                                    } else {
                                        i4 = 6;
                                    }
                                    m28158return(i4);
                                }
                            } else if (this.f23984strictfp == 93 && i9 > 155) {
                                i9 = 155;
                            }
                        } else if (this.f23984strictfp == 93 && i9 > 154) {
                            i9 = 154;
                        }
                    } else if ((576460743847706622L & j3) != 0) {
                        m28150import(4, 6);
                    }
                    if (i8 != i10) {
                        i13 = 11;
                    }
                }
            } else {
                int i20 = i12 >> 8;
                int i21 = i20 >> 6;
                long j4 = 1 << (i20 & 63);
                int i22 = 6;
                int i23 = (i12 & 255) >> 6;
                long j5 = 1 << (i12 & 63);
                do {
                    i8--;
                    int i24 = this.f23972finally[i8];
                    if (i24 == 0 || i24 == i22) {
                        if (m28153native(i20, i21, i23, j4, j5)) {
                            if (i9 > 156) {
                                i9 = 156;
                            }
                            i22 = 6;
                            m28158return(6);
                        }
                    } else if (i21 != 0) {
                        int i25 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
                    }
                    i22 = 6;
                } while (i8 != i10);
            }
            if (i9 != Integer.MAX_VALUE) {
                this.f23989throws = i9;
                this.f23986switch = i7;
                i9 = Integer.MAX_VALUE;
            }
            i7++;
            i8 = this.f23982return;
            this.f23982return = i10;
            i10 = 13 - i10;
            if (i8 == i10) {
                return i7;
            }
            try {
                this.f23984strictfp = this.f23967default.m28301finally();
                i6 = Integer.MAX_VALUE;
                i5 = 0;
            } catch (IOException unused) {
                return i7;
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m28161super(m4 m4Var, int i2) {
        m28165throw(m4Var, 10, i2);
    }

    /* renamed from: switch, reason: not valid java name */
    private void m28162switch(int i2, int i3) {
        m28158return(i2);
        m28158return(i3);
    }

    /* renamed from: synchronized, reason: not valid java name */
    private int m28163synchronized() {
        int i2 = this.f23984strictfp;
        if (i2 == 33) {
            this.f23989throws = 129;
            return g(8796093022208L, 0L);
        }
        if (i2 == 37) {
            this.f23989throws = 126;
            return g(281474976710656L, 0L);
        }
        if (i2 == 91) {
            return x(0, 133, 36);
        }
        if (i2 == 93) {
            return F(0, 134);
        }
        if (i2 == 97) {
            return g(0L, 4096L);
        }
        if (i2 == 102) {
            return g(2147483648L, 0L);
        }
        if (i2 == 105) {
            return g(0L, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH);
        }
        if (i2 == 123) {
            return F(0, 137);
        }
        if (i2 == 125) {
            return F(0, 138);
        }
        if (i2 == 58) {
            return F(0, 132);
        }
        if (i2 == 59) {
            return F(0, 131);
        }
        if (i2 == 116) {
            return g(o3.f24027catch, 0L);
        }
        if (i2 == 117) {
            return g(0L, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
        }
        switch (i2) {
            case 40:
                return F(0, 135);
            case 41:
                return F(0, 136);
            case 42:
                this.f23989throws = 122;
                return g(576531121047601152L, 0L);
            case 43:
                this.f23989throws = 120;
                return g(580542139465728L, 0L);
            case 44:
                return F(0, 130);
            case 45:
                this.f23989throws = 121;
                return g(1161084278931456L, 0L);
            case 46:
                this.f23989throws = 99;
                return g(1152921848204230656L, 0L);
            case 47:
                this.f23989throws = 125;
                return g(140737488355328L, 0L);
            default:
                switch (i2) {
                    case 61:
                        this.f23989throws = 105;
                        return g(4398046511104L, 0L);
                    case 62:
                        return F(0, 148);
                    case 63:
                        this.f23989throws = 103;
                        return g(1099511627776L, 0L);
                    default:
                        return m28143continue(0, 0);
                }
        }
    }

    private int t(int i2, int i3, int i4) {
        this.f23989throws = i3;
        this.f23986switch = i2;
        try {
            this.f23984strictfp = this.f23967default.m28301finally();
            return m28147finally(i4, i2 + 1);
        } catch (IOException unused) {
            return i2 + 1;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m28164this() {
        char cM28301finally;
        int i2 = 0;
        do {
            try {
                cM28301finally = this.f23967default.m28301finally();
                i2++;
                if (!Character.isWhitespace(cM28301finally)) {
                    this.f23967default.m28305import(i2);
                    return;
                } else if (cM28301finally == '\r') {
                    int i3 = i2 + 1;
                    if (this.f23967default.m28301finally() != '\n') {
                        this.f23967default.m28305import(1);
                        return;
                    }
                    return;
                }
            } catch (IOException unused) {
                this.f23967default.m28305import(i2);
                return;
            }
        } while (cM28301finally != '\n');
    }

    /* renamed from: throw, reason: not valid java name */
    private void m28165throw(m4 m4Var, int i2, int i3) {
        char cCharAt;
        boolean z;
        String str = m4Var.image;
        if (!this.f23974goto && i2 == 12 && !m28168while(str)) {
            m4Var.kind = 80;
            return;
        }
        char cCharAt2 = str.charAt(0);
        if (this.f23961break && !this.f23963catch) {
            this.f23987this = cCharAt2 == '[';
        }
        if ((cCharAt2 == '[' && !this.f23987this) || (cCharAt2 == '<' && this.f23987this)) {
            m4Var.kind = 80;
            return;
        }
        if (!this.f23974goto) {
            m28173goto(m4Var, i2);
            m28177try(i3);
            return;
        }
        if (!this.f23987this && !m28168while(str)) {
            m4Var.kind = 80;
            return;
        }
        this.f23963catch = true;
        if ((this.f23991while < ul2.f6929catch && this.f23965const != 22) || (((cCharAt = str.charAt(str.length() - 1)) != ']' && cCharAt != '>') || (((z = this.f23987this) || cCharAt == '>') && (!z || cCharAt == ']')))) {
            m28173goto(m4Var, i2);
            m28177try(i3);
        } else {
            throw new w72("The tag shouldn't end with \"" + cCharAt + "\".", 0, m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn);
        }
    }

    /* renamed from: transient, reason: not valid java name */
    private int m28166transient() {
        int i2 = this.f23984strictfp;
        if (i2 == 33) {
            this.f23989throws = 129;
            return e(8796093022208L, 0L);
        }
        if (i2 == 37) {
            this.f23989throws = 126;
            return e(281474976710656L, 0L);
        }
        if (i2 == 91) {
            return u(0, 133, 2);
        }
        if (i2 == 93) {
            return F(0, 134);
        }
        if (i2 == 97) {
            return e(0L, 4096L);
        }
        if (i2 == 102) {
            return e(2147483648L, 0L);
        }
        if (i2 == 105) {
            return e(0L, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH);
        }
        if (i2 == 123) {
            return F(0, 137);
        }
        if (i2 == 125) {
            return F(0, 138);
        }
        if (i2 == 58) {
            return F(0, 132);
        }
        if (i2 == 59) {
            return F(0, 131);
        }
        if (i2 == 116) {
            return e(o3.f24027catch, 0L);
        }
        if (i2 == 117) {
            return e(0L, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
        }
        switch (i2) {
            case 40:
                return F(0, 135);
            case 41:
                return F(0, 136);
            case 42:
                this.f23989throws = 122;
                return e(576531121047601152L, 0L);
            case 43:
                this.f23989throws = 120;
                return e(580542139465728L, 0L);
            case 44:
                return F(0, 130);
            case 45:
                this.f23989throws = 121;
                return e(1161084278931456L, 0L);
            case 46:
                this.f23989throws = 99;
                return e(1152921848204230656L, 0L);
            case 47:
                this.f23989throws = 125;
                return e(140737488355328L, 0L);
            default:
                switch (i2) {
                    case 61:
                        this.f23989throws = 105;
                        return e(4398046511104L, 0L);
                    case 62:
                        this.f23989throws = 150;
                        return e(0L, 8388608L);
                    case 63:
                        this.f23989throws = 103;
                        return e(1099511627776L, 0L);
                    default:
                        return m28154package(1, 0);
                }
        }
    }

    private int u(int i2, int i3, int i4) {
        this.f23989throws = i3;
        this.f23986switch = i2;
        try {
            this.f23984strictfp = this.f23967default.m28301finally();
            return m28154package(i4, i2 + 1);
        } catch (IOException unused) {
            return i2 + 1;
        }
    }

    private int v(int i2, int i3, int i4) {
        this.f23989throws = i3;
        this.f23986switch = i2;
        try {
            this.f23984strictfp = this.f23967default.m28301finally();
            return m28155private(i4, i2 + 1);
        } catch (IOException unused) {
            return i2 + 1;
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private int m28167volatile() {
        int i2 = this.f23984strictfp;
        return i2 != 35 ? i2 != 36 ? i2 != 91 ? m28144default(2, 0) : b(1048576L) : b(PlaybackStateCompat.ACTION_SET_REPEAT_MODE) : b(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED);
    }

    private int w(int i2, int i3, int i4) {
        this.f23989throws = i3;
        this.f23986switch = i2;
        try {
            this.f23984strictfp = this.f23967default.m28301finally();
            return m28139abstract(i4, i2 + 1);
        } catch (IOException unused) {
            return i2 + 1;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m28168while(String str) {
        return str.length() > 2 && (str.charAt(1) == '#' || str.charAt(2) == '#');
    }

    private int x(int i2, int i3, int i4) {
        this.f23989throws = i3;
        this.f23986switch = i2;
        try {
            this.f23984strictfp = this.f23967default.m28301finally();
            return m28143continue(i4, i2 + 1);
        } catch (IOException unused) {
            return i2 + 1;
        }
    }

    private final int y(int i2, long j2, long j3) {
        return m28144default(G(i2, j2, j3), i2 + 1);
    }

    private final int z(int i2, long j2, long j3) {
        return m28145extends(H(i2, j2, j3), i2 + 1);
    }

    public void P(PrintStream printStream) {
        this.f23976import = printStream;
    }

    public void Q(j0 j0Var) {
        this.f23975if = j0Var;
    }

    /* renamed from: case, reason: not valid java name */
    public void m28169case(m4 m4Var) {
        String str;
        int i2 = this.f23989throws;
        if (i2 == 142) {
            StringBuilder sb = this.f23980private;
            t3 t3Var = this.f23967default;
            int i3 = this.f23960abstract;
            int i4 = this.f23986switch + 1;
            this.f23966continue = i4;
            sb.append(t3Var.m28292case(i3 + i4));
            String str2 = m4Var.image;
            if (str2.indexOf(92) != -1) {
                int length = str2.length();
                char[] cArr = new char[length - 1];
                int i5 = 0;
                for (int i6 = 0; i6 < length; i6++) {
                    char cCharAt = str2.charAt(i6);
                    if (cCharAt != '\\') {
                        cArr[i5] = cCharAt;
                        i5++;
                    }
                }
                m4Var.image = new String(cArr, 0, i5);
                return;
            }
            return;
        }
        if (i2 == 143) {
            StringBuilder sb2 = this.f23980private;
            t3 t3Var2 = this.f23967default;
            int i7 = this.f23960abstract;
            int i8 = this.f23986switch + 1;
            this.f23966continue = i8;
            sb2.append(t3Var2.m28292case(i7 + i8));
            char c2 = m4Var.image.charAt(0) != '[' ? MessageFormatter.DELIM_STOP : ']';
            throw new w72("You can't use " + m4Var.image + "..." + c2 + " (an interpolation) here as you are already in FreeMarker-expression-mode. Thus, instead of " + m4Var.image + "myExpression" + c2 + ", just write myExpression. (" + m4Var.image + "..." + c2 + " is only used where otherwise static text is expected, i.e., outside FreeMarker tags and interpolations, or inside string literals.)", 0, m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn);
        }
        if (i2 == 148) {
            StringBuilder sb3 = this.f23980private;
            String[] strArr = u;
            sb3.append(strArr[148]);
            this.f23966continue = strArr[148].length();
            if (this.f23969else) {
                m28164this();
                this.f23969else = false;
            }
            if (this.f23987this || this.f23973for != -1) {
                m4Var.kind = 150;
                return;
            } else {
                m28177try(0);
                return;
            }
        }
        if (i2 == 149) {
            StringBuilder sb4 = this.f23980private;
            t3 t3Var3 = this.f23967default;
            int i9 = this.f23960abstract;
            int i10 = this.f23986switch + 1;
            this.f23966continue = i10;
            sb4.append(t3Var3.m28292case(i9 + i10));
            if (this.f23963catch && (this.f23991while >= ul2.f6929catch || this.f23965const == 22)) {
                String str3 = m4Var.image;
                char cCharAt2 = str3.charAt(str3.length() - 1);
                boolean z = this.f23987this;
                if ((!z && cCharAt2 != '>') || (z && cCharAt2 != ']')) {
                    throw new w72("The tag shouldn't end with \"" + cCharAt2 + "\".", 0, m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn);
                }
            }
            if (this.f23969else) {
                m28164this();
                this.f23969else = false;
            }
            m28177try(0);
            return;
        }
        if (i2 == 154) {
            StringBuilder sb5 = this.f23980private;
            t3 t3Var4 = this.f23967default;
            int i11 = this.f23960abstract;
            int i12 = this.f23986switch + 1;
            this.f23966continue = i12;
            sb5.append(t3Var4.m28292case(i11 + i12));
            if (this.f23968do.equals("-->")) {
                boolean zEndsWith = m4Var.image.endsWith("]");
                boolean z2 = this.f23987this;
                if (!(z2 && zEndsWith) && (z2 || zEndsWith)) {
                    return;
                }
                m4Var.image += ";";
                m28177try(0);
                return;
            }
            return;
        }
        if (i2 == 155) {
            StringBuilder sb6 = this.f23980private;
            t3 t3Var5 = this.f23967default;
            int i13 = this.f23960abstract;
            int i14 = this.f23986switch + 1;
            this.f23966continue = i14;
            sb6.append(t3Var5.m28292case(i13 + i14));
            if (new StringTokenizer(this.f23980private.toString(), " \t\n\r<>[]/#", false).nextToken().equals(this.f23968do)) {
                m4Var.image += ";";
                m28177try(0);
                return;
            }
            return;
        }
        switch (i2) {
            case 6:
                StringBuilder sb7 = this.f23980private;
                t3 t3Var6 = this.f23967default;
                int i15 = this.f23960abstract;
                int i16 = this.f23986switch + 1;
                this.f23966continue = i16;
                sb7.append(t3Var6.m28292case(i15 + i16));
                m28161super(m4Var, 0);
                return;
            case 7:
                StringBuilder sb8 = this.f23980private;
                t3 t3Var7 = this.f23967default;
                int i17 = this.f23960abstract;
                int i18 = this.f23986switch + 1;
                this.f23966continue = i18;
                sb8.append(t3Var7.m28292case(i17 + i18));
                m28161super(m4Var, 0);
                return;
            case 8:
                StringBuilder sb9 = this.f23980private;
                t3 t3Var8 = this.f23967default;
                int i19 = this.f23960abstract;
                int i20 = this.f23986switch + 1;
                this.f23966continue = i20;
                sb9.append(t3Var8.m28292case(i19 + i20));
                m28161super(m4Var, 2);
                return;
            case 9:
                StringBuilder sb10 = this.f23980private;
                t3 t3Var9 = this.f23967default;
                int i21 = this.f23960abstract;
                int i22 = this.f23986switch + 1;
                this.f23966continue = i22;
                sb10.append(t3Var9.m28292case(i21 + i22));
                m28165throw(m4Var, m28146final(m4Var, 4), 2);
                return;
            case 10:
                StringBuilder sb11 = this.f23980private;
                t3 t3Var10 = this.f23967default;
                int i23 = this.f23960abstract;
                int i24 = this.f23986switch + 1;
                this.f23966continue = i24;
                sb11.append(t3Var10.m28292case(i23 + i24));
                m28161super(m4Var, 2);
                return;
            case 11:
                StringBuilder sb12 = this.f23980private;
                t3 t3Var11 = this.f23967default;
                int i25 = this.f23960abstract;
                int i26 = this.f23986switch + 1;
                this.f23966continue = i26;
                sb12.append(t3Var11.m28292case(i25 + i26));
                m28161super(m4Var, 2);
                return;
            default:
                switch (i2) {
                    case 13:
                        StringBuilder sb13 = this.f23980private;
                        t3 t3Var12 = this.f23967default;
                        int i27 = this.f23960abstract;
                        int i28 = this.f23986switch + 1;
                        this.f23966continue = i28;
                        sb13.append(t3Var12.m28292case(i27 + i28));
                        m28165throw(m4Var, m28146final(m4Var, 3), 2);
                        return;
                    case 14:
                        StringBuilder sb14 = this.f23980private;
                        t3 t3Var13 = this.f23967default;
                        int i29 = this.f23960abstract;
                        int i30 = this.f23986switch + 1;
                        this.f23966continue = i30;
                        sb14.append(t3Var13.m28292case(i29 + i30));
                        m28161super(m4Var, 2);
                        return;
                    case 15:
                        StringBuilder sb15 = this.f23980private;
                        t3 t3Var14 = this.f23967default;
                        int i31 = this.f23960abstract;
                        int i32 = this.f23986switch + 1;
                        this.f23966continue = i32;
                        sb15.append(t3Var14.m28292case(i31 + i32));
                        m28161super(m4Var, 2);
                        return;
                    case 16:
                        StringBuilder sb16 = this.f23980private;
                        t3 t3Var15 = this.f23967default;
                        int i33 = this.f23960abstract;
                        int i34 = this.f23986switch + 1;
                        this.f23966continue = i34;
                        sb16.append(t3Var15.m28292case(i33 + i34));
                        m28161super(m4Var, 2);
                        return;
                    case 17:
                        StringBuilder sb17 = this.f23980private;
                        t3 t3Var16 = this.f23967default;
                        int i35 = this.f23960abstract;
                        int i36 = this.f23986switch + 1;
                        this.f23966continue = i36;
                        sb17.append(t3Var16.m28292case(i35 + i36));
                        m28161super(m4Var, 2);
                        return;
                    case 18:
                        StringBuilder sb18 = this.f23980private;
                        t3 t3Var17 = this.f23967default;
                        int i37 = this.f23960abstract;
                        int i38 = this.f23986switch + 1;
                        this.f23966continue = i38;
                        sb18.append(t3Var17.m28292case(i37 + i38));
                        m28161super(m4Var, 2);
                        return;
                    case 19:
                        StringBuilder sb19 = this.f23980private;
                        t3 t3Var18 = this.f23967default;
                        int i39 = this.f23960abstract;
                        int i40 = this.f23986switch + 1;
                        this.f23966continue = i40;
                        sb19.append(t3Var18.m28292case(i39 + i40));
                        m28161super(m4Var, 2);
                        return;
                    case 20:
                        StringBuilder sb20 = this.f23980private;
                        t3 t3Var19 = this.f23967default;
                        int i41 = this.f23960abstract;
                        int i42 = this.f23986switch + 1;
                        this.f23966continue = i42;
                        sb20.append(t3Var19.m28292case(i41 + i42));
                        m28161super(m4Var, 2);
                        return;
                    case 21:
                        StringBuilder sb21 = this.f23980private;
                        t3 t3Var20 = this.f23967default;
                        int i43 = this.f23960abstract;
                        int i44 = this.f23986switch + 1;
                        this.f23966continue = i44;
                        sb21.append(t3Var20.m28292case(i43 + i44));
                        m28161super(m4Var, 2);
                        return;
                    case 22:
                        StringBuilder sb22 = this.f23980private;
                        t3 t3Var21 = this.f23967default;
                        int i45 = this.f23960abstract;
                        int i46 = this.f23986switch + 1;
                        this.f23966continue = i46;
                        sb22.append(t3Var21.m28292case(i45 + i46));
                        m28161super(m4Var, 2);
                        return;
                    case 23:
                        StringBuilder sb23 = this.f23980private;
                        t3 t3Var22 = this.f23967default;
                        int i47 = this.f23960abstract;
                        int i48 = this.f23986switch + 1;
                        this.f23966continue = i48;
                        sb23.append(t3Var22.m28292case(i47 + i48));
                        m28161super(m4Var, 2);
                        return;
                    case 24:
                        StringBuilder sb24 = this.f23980private;
                        t3 t3Var23 = this.f23967default;
                        int i49 = this.f23960abstract;
                        int i50 = this.f23986switch + 1;
                        this.f23966continue = i50;
                        sb24.append(t3Var23.m28292case(i49 + i50));
                        m28161super(m4Var, 2);
                        return;
                    case 25:
                        StringBuilder sb25 = this.f23980private;
                        t3 t3Var24 = this.f23967default;
                        int i51 = this.f23960abstract;
                        int i52 = this.f23986switch + 1;
                        this.f23966continue = i52;
                        sb25.append(t3Var24.m28292case(i51 + i52));
                        m28161super(m4Var, 2);
                        return;
                    case 26:
                        StringBuilder sb26 = this.f23980private;
                        t3 t3Var25 = this.f23967default;
                        int i53 = this.f23960abstract;
                        int i54 = this.f23986switch + 1;
                        this.f23966continue = i54;
                        sb26.append(t3Var25.m28292case(i53 + i54));
                        m28161super(m4Var, 2);
                        return;
                    case 27:
                        StringBuilder sb27 = this.f23980private;
                        t3 t3Var26 = this.f23967default;
                        int i55 = this.f23960abstract;
                        int i56 = this.f23986switch + 1;
                        this.f23966continue = i56;
                        sb27.append(t3Var26.m28292case(i55 + i56));
                        m28161super(m4Var, 2);
                        return;
                    case 28:
                        StringBuilder sb28 = this.f23980private;
                        t3 t3Var27 = this.f23967default;
                        int i57 = this.f23960abstract;
                        int i58 = this.f23986switch + 1;
                        this.f23966continue = i58;
                        sb28.append(t3Var27.m28292case(i57 + i58));
                        m28161super(m4Var, 2);
                        return;
                    case 29:
                        StringBuilder sb29 = this.f23980private;
                        t3 t3Var28 = this.f23967default;
                        int i59 = this.f23960abstract;
                        int i60 = this.f23986switch + 1;
                        this.f23966continue = i60;
                        sb29.append(t3Var28.m28292case(i59 + i60));
                        m28165throw(m4Var, m28146final(m4Var, 6), 2);
                        return;
                    case 30:
                        StringBuilder sb30 = this.f23980private;
                        t3 t3Var29 = this.f23967default;
                        int i61 = this.f23960abstract;
                        int i62 = this.f23986switch + 1;
                        this.f23966continue = i62;
                        sb30.append(t3Var29.m28292case(i61 + i62));
                        m28165throw(m4Var, m28146final(m4Var, 4), 0);
                        return;
                    case 31:
                        StringBuilder sb31 = this.f23980private;
                        t3 t3Var30 = this.f23967default;
                        int i63 = this.f23960abstract;
                        int i64 = this.f23986switch + 1;
                        this.f23966continue = i64;
                        sb31.append(t3Var30.m28292case(i63 + i64));
                        m28165throw(m4Var, m28146final(m4Var, 2), 0);
                        return;
                    case 32:
                        StringBuilder sb32 = this.f23980private;
                        t3 t3Var31 = this.f23967default;
                        int i65 = this.f23960abstract;
                        int i66 = this.f23986switch + 1;
                        this.f23966continue = i66;
                        sb32.append(t3Var31.m28292case(i65 + i66));
                        m28161super(m4Var, 0);
                        return;
                    case 33:
                        StringBuilder sb33 = this.f23980private;
                        t3 t3Var32 = this.f23967default;
                        int i67 = this.f23960abstract;
                        int i68 = this.f23986switch + 1;
                        this.f23966continue = i68;
                        sb33.append(t3Var32.m28292case(i67 + i68));
                        m28161super(m4Var, 7);
                        this.f23968do = "comment";
                        return;
                    case 34:
                        StringBuilder sb34 = this.f23980private;
                        t3 t3Var33 = this.f23967default;
                        int i69 = this.f23960abstract;
                        int i70 = this.f23986switch + 1;
                        this.f23966continue = i70;
                        sb34.append(t3Var33.m28292case(i69 + i70));
                        this.f23968do = "-->";
                        m28161super(m4Var, 7);
                        return;
                    case 35:
                        StringBuilder sb35 = this.f23980private;
                        t3 t3Var34 = this.f23967default;
                        int i71 = this.f23960abstract;
                        int i72 = this.f23986switch + 1;
                        this.f23966continue = i72;
                        sb35.append(t3Var34.m28292case(i71 + i72));
                        int iM28146final = m28146final(m4Var, 2);
                        m28165throw(m4Var, iM28146final, 7);
                        this.f23968do = iM28146final == 12 ? "noParse" : "noparse";
                        return;
                    case 36:
                        StringBuilder sb36 = this.f23980private;
                        t3 t3Var35 = this.f23967default;
                        int i73 = this.f23960abstract;
                        int i74 = this.f23986switch + 1;
                        this.f23966continue = i74;
                        sb36.append(t3Var35.m28292case(i73 + i74));
                        m28161super(m4Var, 0);
                        return;
                    case 37:
                        StringBuilder sb37 = this.f23980private;
                        t3 t3Var36 = this.f23967default;
                        int i75 = this.f23960abstract;
                        int i76 = this.f23986switch + 1;
                        this.f23966continue = i76;
                        sb37.append(t3Var36.m28292case(i75 + i76));
                        m28161super(m4Var, 0);
                        return;
                    case 38:
                        StringBuilder sb38 = this.f23980private;
                        t3 t3Var37 = this.f23967default;
                        int i77 = this.f23960abstract;
                        int i78 = this.f23986switch + 1;
                        this.f23966continue = i78;
                        sb38.append(t3Var37.m28292case(i77 + i78));
                        m28161super(m4Var, 0);
                        return;
                    case 39:
                        StringBuilder sb39 = this.f23980private;
                        t3 t3Var38 = this.f23967default;
                        int i79 = this.f23960abstract;
                        int i80 = this.f23986switch + 1;
                        this.f23966continue = i80;
                        sb39.append(t3Var38.m28292case(i79 + i80));
                        m28161super(m4Var, 0);
                        return;
                    case 40:
                        StringBuilder sb40 = this.f23980private;
                        t3 t3Var39 = this.f23967default;
                        int i81 = this.f23960abstract;
                        int i82 = this.f23986switch + 1;
                        this.f23966continue = i82;
                        sb40.append(t3Var39.m28292case(i81 + i82));
                        m28161super(m4Var, 0);
                        return;
                    case 41:
                        StringBuilder sb41 = this.f23980private;
                        t3 t3Var40 = this.f23967default;
                        int i83 = this.f23960abstract;
                        int i84 = this.f23986switch + 1;
                        this.f23966continue = i84;
                        sb41.append(t3Var40.m28292case(i83 + i84));
                        m28161super(m4Var, 0);
                        return;
                    case 42:
                        StringBuilder sb42 = this.f23980private;
                        t3 t3Var41 = this.f23967default;
                        int i85 = this.f23960abstract;
                        int i86 = this.f23986switch + 1;
                        this.f23966continue = i86;
                        sb42.append(t3Var41.m28292case(i85 + i86));
                        m28165throw(m4Var, m28146final(m4Var, 3), 0);
                        return;
                    case 43:
                        StringBuilder sb43 = this.f23980private;
                        t3 t3Var42 = this.f23967default;
                        int i87 = this.f23960abstract;
                        int i88 = this.f23986switch + 1;
                        this.f23966continue = i88;
                        sb43.append(t3Var42.m28292case(i87 + i88));
                        m28161super(m4Var, 0);
                        return;
                    case 44:
                        StringBuilder sb44 = this.f23980private;
                        t3 t3Var43 = this.f23967default;
                        int i89 = this.f23960abstract;
                        int i90 = this.f23986switch + 1;
                        this.f23966continue = i90;
                        sb44.append(t3Var43.m28292case(i89 + i90));
                        m28161super(m4Var, 0);
                        return;
                    case 45:
                        StringBuilder sb45 = this.f23980private;
                        t3 t3Var44 = this.f23967default;
                        int i91 = this.f23960abstract;
                        int i92 = this.f23986switch + 1;
                        this.f23966continue = i92;
                        sb45.append(t3Var44.m28292case(i91 + i92));
                        m28161super(m4Var, 0);
                        return;
                    case 46:
                        StringBuilder sb46 = this.f23980private;
                        t3 t3Var45 = this.f23967default;
                        int i93 = this.f23960abstract;
                        int i94 = this.f23986switch + 1;
                        this.f23966continue = i94;
                        sb46.append(t3Var45.m28292case(i93 + i94));
                        m28161super(m4Var, 0);
                        return;
                    case 47:
                        StringBuilder sb47 = this.f23980private;
                        t3 t3Var46 = this.f23967default;
                        int i95 = this.f23960abstract;
                        int i96 = this.f23986switch + 1;
                        this.f23966continue = i96;
                        sb47.append(t3Var46.m28292case(i95 + i96));
                        m28161super(m4Var, 0);
                        return;
                    case 48:
                        StringBuilder sb48 = this.f23980private;
                        t3 t3Var47 = this.f23967default;
                        int i97 = this.f23960abstract;
                        int i98 = this.f23986switch + 1;
                        this.f23966continue = i98;
                        sb48.append(t3Var47.m28292case(i97 + i98));
                        m28165throw(m4Var, m28146final(m4Var, 6), 0);
                        return;
                    case 49:
                        StringBuilder sb49 = this.f23980private;
                        t3 t3Var48 = this.f23967default;
                        int i99 = this.f23960abstract;
                        int i100 = this.f23986switch + 1;
                        this.f23966continue = i100;
                        sb49.append(t3Var48.m28292case(i99 + i100));
                        m28165throw(m4Var, m28146final(m4Var, 4), 0);
                        return;
                    case 50:
                        StringBuilder sb50 = this.f23980private;
                        t3 t3Var49 = this.f23967default;
                        int i101 = this.f23960abstract;
                        int i102 = this.f23986switch + 1;
                        this.f23966continue = i102;
                        sb50.append(t3Var49.m28292case(i101 + i102));
                        m28165throw(m4Var, m28146final(m4Var, 2), 0);
                        return;
                    case 51:
                        StringBuilder sb51 = this.f23980private;
                        t3 t3Var50 = this.f23967default;
                        int i103 = this.f23960abstract;
                        int i104 = this.f23986switch + 1;
                        this.f23966continue = i104;
                        sb51.append(t3Var50.m28292case(i103 + i104));
                        m28161super(m4Var, 0);
                        return;
                    case 52:
                        StringBuilder sb52 = this.f23980private;
                        t3 t3Var51 = this.f23967default;
                        int i105 = this.f23960abstract;
                        int i106 = this.f23986switch + 1;
                        this.f23966continue = i106;
                        sb52.append(t3Var51.m28292case(i105 + i106));
                        m28161super(m4Var, 0);
                        return;
                    case 53:
                        StringBuilder sb53 = this.f23980private;
                        t3 t3Var52 = this.f23967default;
                        int i107 = this.f23960abstract;
                        int i108 = this.f23986switch + 1;
                        this.f23966continue = i108;
                        sb53.append(t3Var52.m28292case(i107 + i108));
                        m28161super(m4Var, 0);
                        return;
                    case 54:
                        StringBuilder sb54 = this.f23980private;
                        t3 t3Var53 = this.f23967default;
                        int i109 = this.f23960abstract;
                        int i110 = this.f23986switch + 1;
                        this.f23966continue = i110;
                        sb54.append(t3Var53.m28292case(i109 + i110));
                        m28161super(m4Var, 0);
                        return;
                    case 55:
                        StringBuilder sb55 = this.f23980private;
                        t3 t3Var54 = this.f23967default;
                        int i111 = this.f23960abstract;
                        int i112 = this.f23986switch + 1;
                        this.f23966continue = i112;
                        sb55.append(t3Var54.m28292case(i111 + i112));
                        m28161super(m4Var, 0);
                        return;
                    case 56:
                        StringBuilder sb56 = this.f23980private;
                        t3 t3Var55 = this.f23967default;
                        int i113 = this.f23960abstract;
                        int i114 = this.f23986switch + 1;
                        this.f23966continue = i114;
                        sb56.append(t3Var55.m28292case(i113 + i114));
                        m28161super(m4Var, 0);
                        return;
                    case 57:
                        StringBuilder sb57 = this.f23980private;
                        t3 t3Var56 = this.f23967default;
                        int i115 = this.f23960abstract;
                        int i116 = this.f23986switch + 1;
                        this.f23966continue = i116;
                        sb57.append(t3Var56.m28292case(i115 + i116));
                        m28161super(m4Var, 0);
                        return;
                    case 58:
                        StringBuilder sb58 = this.f23980private;
                        t3 t3Var57 = this.f23967default;
                        int i117 = this.f23960abstract;
                        int i118 = this.f23986switch + 1;
                        this.f23966continue = i118;
                        sb58.append(t3Var57.m28292case(i117 + i118));
                        m28161super(m4Var, 0);
                        return;
                    case 59:
                        StringBuilder sb59 = this.f23980private;
                        t3 t3Var58 = this.f23967default;
                        int i119 = this.f23960abstract;
                        int i120 = this.f23986switch + 1;
                        this.f23966continue = i120;
                        sb59.append(t3Var58.m28292case(i119 + i120));
                        m28161super(m4Var, 0);
                        return;
                    case 60:
                        StringBuilder sb60 = this.f23980private;
                        t3 t3Var59 = this.f23967default;
                        int i121 = this.f23960abstract;
                        int i122 = this.f23986switch + 1;
                        this.f23966continue = i122;
                        sb60.append(t3Var59.m28292case(i121 + i122));
                        m28161super(m4Var, 0);
                        return;
                    case 61:
                        StringBuilder sb61 = this.f23980private;
                        t3 t3Var60 = this.f23967default;
                        int i123 = this.f23960abstract;
                        int i124 = this.f23986switch + 1;
                        this.f23966continue = i124;
                        sb61.append(t3Var60.m28292case(i123 + i124));
                        m28161super(m4Var, 0);
                        return;
                    case 62:
                        StringBuilder sb62 = this.f23980private;
                        t3 t3Var61 = this.f23967default;
                        int i125 = this.f23960abstract;
                        int i126 = this.f23986switch + 1;
                        this.f23966continue = i126;
                        sb62.append(t3Var61.m28292case(i125 + i126));
                        m28161super(m4Var, 0);
                        return;
                    case 63:
                        StringBuilder sb63 = this.f23980private;
                        t3 t3Var62 = this.f23967default;
                        int i127 = this.f23960abstract;
                        int i128 = this.f23986switch + 1;
                        this.f23966continue = i128;
                        sb63.append(t3Var62.m28292case(i127 + i128));
                        m28161super(m4Var, 0);
                        return;
                    case 64:
                        StringBuilder sb64 = this.f23980private;
                        t3 t3Var63 = this.f23967default;
                        int i129 = this.f23960abstract;
                        int i130 = this.f23986switch + 1;
                        this.f23966continue = i130;
                        sb64.append(t3Var63.m28292case(i129 + i130));
                        m28161super(m4Var, 0);
                        return;
                    case 65:
                        StringBuilder sb65 = this.f23980private;
                        t3 t3Var64 = this.f23967default;
                        int i131 = this.f23960abstract;
                        int i132 = this.f23986switch + 1;
                        this.f23966continue = i132;
                        sb65.append(t3Var64.m28292case(i131 + i132));
                        m28161super(m4Var, 0);
                        return;
                    case 66:
                        StringBuilder sb66 = this.f23980private;
                        t3 t3Var65 = this.f23967default;
                        int i133 = this.f23960abstract;
                        int i134 = this.f23986switch + 1;
                        this.f23966continue = i134;
                        sb66.append(t3Var65.m28292case(i133 + i134));
                        m28161super(m4Var, 2);
                        return;
                    case 67:
                        StringBuilder sb67 = this.f23980private;
                        t3 t3Var66 = this.f23967default;
                        int i135 = this.f23960abstract;
                        int i136 = this.f23986switch + 1;
                        this.f23966continue = i136;
                        sb67.append(t3Var66.m28292case(i135 + i136));
                        m28161super(m4Var, 0);
                        return;
                    case 68:
                        StringBuilder sb68 = this.f23980private;
                        t3 t3Var67 = this.f23967default;
                        int i137 = this.f23960abstract;
                        int i138 = this.f23986switch + 1;
                        this.f23966continue = i138;
                        sb68.append(t3Var67.m28292case(i137 + i138));
                        m28161super(m4Var, 2);
                        return;
                    case 69:
                        StringBuilder sb69 = this.f23980private;
                        t3 t3Var68 = this.f23967default;
                        int i139 = this.f23960abstract;
                        int i140 = this.f23986switch + 1;
                        this.f23966continue = i140;
                        sb69.append(t3Var68.m28292case(i139 + i140));
                        m28161super(m4Var, 0);
                        return;
                    case 70:
                        StringBuilder sb70 = this.f23980private;
                        t3 t3Var69 = this.f23967default;
                        int i141 = this.f23960abstract;
                        int i142 = this.f23986switch + 1;
                        this.f23966continue = i142;
                        sb70.append(t3Var69.m28292case(i141 + i142));
                        m28161super(m4Var, 2);
                        return;
                    case 71:
                        StringBuilder sb71 = this.f23980private;
                        t3 t3Var70 = this.f23967default;
                        int i143 = this.f23960abstract;
                        int i144 = this.f23986switch + 1;
                        this.f23966continue = i144;
                        sb71.append(t3Var70.m28292case(i143 + i144));
                        m28161super(m4Var, 0);
                        return;
                    case 72:
                        StringBuilder sb72 = this.f23980private;
                        t3 t3Var71 = this.f23967default;
                        int i145 = this.f23960abstract;
                        int i146 = this.f23986switch + 1;
                        this.f23966continue = i146;
                        sb72.append(t3Var71.m28292case(i145 + i146));
                        m28165throw(m4Var, m28146final(m4Var, 2), 0);
                        return;
                    case 73:
                        StringBuilder sb73 = this.f23980private;
                        t3 t3Var72 = this.f23967default;
                        int i147 = this.f23960abstract;
                        int i148 = this.f23986switch + 1;
                        this.f23966continue = i148;
                        sb73.append(t3Var72.m28292case(i147 + i148));
                        m28165throw(m4Var, m28146final(m4Var, 2), 0);
                        return;
                    case 74:
                        StringBuilder sb74 = this.f23980private;
                        t3 t3Var73 = this.f23967default;
                        int i149 = this.f23960abstract;
                        int i150 = this.f23986switch + 1;
                        this.f23966continue = i150;
                        sb74.append(t3Var73.m28292case(i149 + i150));
                        S(m4Var);
                        return;
                    case 75:
                        StringBuilder sb75 = this.f23980private;
                        t3 t3Var74 = this.f23967default;
                        int i151 = this.f23960abstract;
                        int i152 = this.f23986switch + 1;
                        this.f23966continue = i152;
                        sb75.append(t3Var74.m28292case(i151 + i152));
                        T(m4Var);
                        return;
                    case 76:
                        StringBuilder sb76 = this.f23980private;
                        t3 t3Var75 = this.f23967default;
                        int i153 = this.f23960abstract;
                        int i154 = this.f23986switch + 1;
                        this.f23966continue = i154;
                        sb76.append(t3Var75.m28292case(i153 + i154));
                        m28141catch(m4Var);
                        return;
                    case 77:
                        StringBuilder sb77 = this.f23980private;
                        t3 t3Var76 = this.f23967default;
                        int i155 = this.f23960abstract;
                        int i156 = this.f23986switch + 1;
                        this.f23966continue = i156;
                        sb77.append(t3Var76.m28292case(i155 + i156));
                        m28141catch(m4Var);
                        return;
                    case 78:
                        StringBuilder sb78 = this.f23980private;
                        t3 t3Var77 = this.f23967default;
                        int i157 = this.f23960abstract;
                        int i158 = this.f23986switch + 1;
                        this.f23966continue = i158;
                        sb78.append(t3Var77.m28292case(i157 + i158));
                        if (!this.f23963catch && this.f23991while < ul2.f6936if) {
                            m4Var.kind = 80;
                            return;
                        }
                        char cCharAt3 = m4Var.image.charAt(0);
                        if (!this.f23963catch && this.f23961break) {
                            this.f23987this = cCharAt3 == '[';
                            this.f23963catch = true;
                        }
                        if (cCharAt3 == '<' && this.f23987this) {
                            m4Var.kind = 80;
                            return;
                        }
                        if (cCharAt3 == '[' && !this.f23987this) {
                            m4Var.kind = 80;
                            return;
                        }
                        if (this.f23974goto) {
                            String str4 = m4Var.image;
                            String strSubstring = str4.substring(str4.indexOf(35) + 1);
                            if (y4.f24314if.contains(strSubstring)) {
                                throw new w72("#" + strSubstring + " is an existing directive, but the tag is malformed.  (See FreeMarker Manual / Directive Reference.)", 0, m4Var.beginLine, m4Var.beginColumn + 1, m4Var.endLine, m4Var.endColumn);
                            }
                            if (strSubstring.equals("set") || strSubstring.equals("var")) {
                                str = "Use #assign or #local or #global, depending on the intented scope (#assign is template-scope). (If you have seen this directive in use elsewhere, this was a planned directive, so maybe you need to upgrade FreeMarker.)";
                            } else if (strSubstring.equals("else_if") || strSubstring.equals("elif")) {
                                str = "Use #elseif.";
                            } else if (strSubstring.equals("no_escape")) {
                                str = "Use #noescape instead.";
                            } else if (strSubstring.equals("method")) {
                                str = "Use #function instead.";
                            } else if (strSubstring.equals("head") || strSubstring.equals("template") || strSubstring.equals("fm")) {
                                str = "You may meant #ftl.";
                            } else if (strSubstring.equals("try") || strSubstring.equals("atempt")) {
                                str = "You may meant #attempt.";
                            } else if (strSubstring.equals("for") || strSubstring.equals("each") || strSubstring.equals("iterate") || strSubstring.equals("iterator")) {
                                str = "You may meant #list (http://freemarker.org/docs/ref_directive_list.html).";
                            } else if (strSubstring.equals("prefix")) {
                                str = "You may meant #import. (If you have seen this directive in use elsewhere, this was a planned directive, so maybe you need to upgrade FreeMarker.)";
                            } else if (strSubstring.equals("item") || strSubstring.equals("row") || strSubstring.equals("rows")) {
                                str = "You may meant #items.";
                            } else if (strSubstring.equals("separator") || strSubstring.equals("separate") || strSubstring.equals("separ")) {
                                str = "You may meant #sep.";
                            } else {
                                str = "Help (latest version): http://freemarker.org/docs/ref_directive_alphaidx.html; you're using FreeMarker " + freemarker.template.Cdo.a2() + ".";
                            }
                            StringBuilder sb79 = new StringBuilder();
                            sb79.append("Unknown directive: #");
                            sb79.append(strSubstring);
                            sb79.append(str != null ? ". " + str : "");
                            throw new w72(sb79.toString(), 0, m4Var.beginLine, m4Var.beginColumn + 1, m4Var.endLine, m4Var.endColumn);
                        }
                        return;
                    default:
                        switch (i2) {
                            case 82:
                                StringBuilder sb80 = this.f23980private;
                                String[] strArr2 = u;
                                sb80.append(strArr2[82]);
                                this.f23966continue = strArr2[82].length();
                                R(m4Var);
                                return;
                            case 83:
                                StringBuilder sb81 = this.f23980private;
                                String[] strArr3 = u;
                                sb81.append(strArr3[83]);
                                this.f23966continue = strArr3[83].length();
                                R(m4Var);
                                return;
                            case 84:
                                StringBuilder sb82 = this.f23980private;
                                String[] strArr4 = u;
                                sb82.append(strArr4[84]);
                                this.f23966continue = strArr4[84].length();
                                R(m4Var);
                                return;
                            default:
                                switch (i2) {
                                    case 133:
                                        StringBuilder sb83 = this.f23980private;
                                        String[] strArr5 = u;
                                        sb83.append(strArr5[133]);
                                        this.f23966continue = strArr5[133].length();
                                        this.f23962case++;
                                        return;
                                    case 134:
                                        StringBuilder sb84 = this.f23980private;
                                        String[] strArr6 = u;
                                        sb84.append(strArr6[134]);
                                        this.f23966continue = strArr6[134].length();
                                        int i159 = this.f23962case;
                                        if (i159 > 0) {
                                            this.f23962case = i159 - 1;
                                            return;
                                        }
                                        int i160 = this.f23965const;
                                        if (i160 == 22 && this.f23973for != -1) {
                                            m28140break(m4Var);
                                            return;
                                        }
                                        if ((!this.f23987this && (this.f23991while >= ul2.f6929catch || i160 == 22)) || this.f23973for != -1) {
                                            throw O(m4Var);
                                        }
                                        m4Var.kind = 148;
                                        if (this.f23969else) {
                                            m28164this();
                                            this.f23969else = false;
                                        }
                                        m28177try(0);
                                        return;
                                    case 135:
                                        StringBuilder sb85 = this.f23980private;
                                        String[] strArr7 = u;
                                        sb85.append(strArr7[135]);
                                        this.f23966continue = strArr7[135].length();
                                        int i161 = this.f23990try + 1;
                                        this.f23990try = i161;
                                        if (i161 == 1) {
                                            m28177try(3);
                                            return;
                                        }
                                        return;
                                    case 136:
                                        StringBuilder sb86 = this.f23980private;
                                        String[] strArr8 = u;
                                        sb86.append(strArr8[136]);
                                        this.f23966continue = strArr8[136].length();
                                        int i162 = this.f23990try - 1;
                                        this.f23990try = i162;
                                        if (i162 == 0) {
                                            if (this.f23964class) {
                                                m28177try(4);
                                                return;
                                            } else {
                                                m28177try(2);
                                                return;
                                            }
                                        }
                                        return;
                                    case 137:
                                        StringBuilder sb87 = this.f23980private;
                                        String[] strArr9 = u;
                                        sb87.append(strArr9[137]);
                                        this.f23966continue = strArr9[137].length();
                                        this.f23978new++;
                                        return;
                                    case 138:
                                        StringBuilder sb88 = this.f23980private;
                                        String[] strArr10 = u;
                                        sb88.append(strArr10[138]);
                                        this.f23966continue = strArr10[138].length();
                                        int i163 = this.f23978new;
                                        if (i163 > 0) {
                                            this.f23978new = i163 - 1;
                                            return;
                                        } else {
                                            if (this.f23965const == 22 || this.f23973for == -1) {
                                                throw O(m4Var);
                                            }
                                            m28140break(m4Var);
                                            return;
                                        }
                                    default:
                                        return;
                                }
                        }
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e4 A[SYNTHETIC] */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public m4 m28170class() {
        int i2;
        boolean z;
        int i3;
        String strM28318try;
        int iM28167volatile = 0;
        while (true) {
            try {
                this.f23984strictfp = this.f23967default.m28297do();
                StringBuilder sb = this.f23979package;
                this.f23980private = sb;
                sb.setLength(0);
                this.f23960abstract = 0;
                switch (this.f23977native) {
                    case 0:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = m28167volatile();
                        String strM28318try2 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                            int iM28314switch = this.f23967default.m28314switch();
                            int iM28312static = this.f23967default.m28312static();
                            try {
                                this.f23967default.m28301finally();
                                this.f23967default.m28305import(1);
                                i2 = iM28314switch;
                                i3 = iM28312static;
                                z = false;
                            } catch (IOException unused) {
                                strM28318try2 = iM28167volatile <= 1 ? "" : this.f23967default.m28318try();
                                int i4 = this.f23984strictfp;
                                if (i4 == 10 || i4 == 13) {
                                    i2 = iM28314switch + 1;
                                    z = true;
                                    i3 = 0;
                                } else {
                                    i3 = iM28312static + 1;
                                    i2 = iM28314switch;
                                    z = true;
                                }
                            }
                            if (z) {
                                strM28318try = strM28318try2;
                            } else {
                                this.f23967default.m28305import(1);
                                strM28318try = iM28167volatile > 1 ? this.f23967default.m28318try() : "";
                            }
                            throw new w72(z, this.f23977native, i2, i3, strM28318try, this.f23984strictfp, 0);
                        }
                        int i5 = this.f23986switch;
                        if (i5 + 1 < iM28167volatile) {
                            this.f23967default.m28305import((iM28167volatile - i5) - 1);
                        }
                        long[] jArr = x;
                        int i6 = this.f23989throws;
                        if (((1 << (i6 & 63)) & jArr[i6 >> 6]) != 0) {
                            m4 m4VarM28176throws = m28176throws();
                            m28169case(m4VarM28176throws);
                            int[] iArr = w;
                            int i7 = this.f23989throws;
                            if (iArr[i7] != -1) {
                                this.f23977native = iArr[i7];
                            }
                            return m4VarM28176throws;
                        }
                        m28175new(null);
                        int[] iArr2 = w;
                        int i8 = this.f23989throws;
                        if (iArr2[i8] != -1) {
                            this.f23977native = iArr2[i8];
                        }
                        break;
                    case 1:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = m28152interface();
                        String strM28318try22 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                    case 2:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = m28156protected();
                        String strM28318try222 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                    case 3:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = m28166transient();
                        String strM28318try2222 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                    case 4:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = m28149implements();
                        String strM28318try22222 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                    case 5:
                        try {
                            this.f23967default.m28305import(0);
                            while (true) {
                                int i9 = this.f23984strictfp;
                                if ((i9 < 64 && (4611686018427387904L & (1 << i9)) != 0) || ((i9 >> 6) == 1 && (536870912 & (1 << (i9 & 63))) != 0)) {
                                    this.f23984strictfp = this.f23967default.m28297do();
                                }
                            }
                            this.f23989throws = Integer.MAX_VALUE;
                            this.f23986switch = 0;
                            iM28167volatile = m28151instanceof();
                            String strM28318try222222 = null;
                            if (this.f23989throws == Integer.MAX_VALUE) {
                            }
                        } catch (IOException unused2) {
                            continue;
                        }
                        break;
                    case 6:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = m28163synchronized();
                        String strM28318try2222222 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                    case 7:
                        this.f23989throws = Integer.MAX_VALUE;
                        this.f23986switch = 0;
                        iM28167volatile = a();
                        String strM28318try22222222 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                    default:
                        String strM28318try222222222 = null;
                        if (this.f23989throws == Integer.MAX_VALUE) {
                        }
                        break;
                }
            } catch (Exception unused3) {
                this.f23989throws = 0;
                this.f23986switch = -1;
                return m28176throws();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m28171do(t3 t3Var) {
        this.f23982return = 0;
        this.f23986switch = 0;
        this.f23977native = this.f23981public;
        this.f23967default = t3Var;
        m28148for();
    }

    /* renamed from: else, reason: not valid java name */
    public void m28172else(m4 m4Var) {
        m28173goto(m4Var, yk2.m9891for(m4Var.image));
    }

    /* renamed from: goto, reason: not valid java name */
    public void m28173goto(m4 m4Var, int i2) {
        if (i2 != 10) {
            int i3 = this.f23985super;
            if (i3 == 10) {
                this.f23985super = i2;
                this.f23988throw = m4Var;
            } else if (i3 != i2) {
                throw N(m4Var);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m28174if(t3 t3Var, int i2) {
        m28171do(t3Var);
        m28177try(i2);
    }

    /* renamed from: new, reason: not valid java name */
    public void m28175new(m4 m4Var) {
        if (this.f23989throws != 91) {
            return;
        }
        StringBuilder sb = this.f23980private;
        t3 t3Var = this.f23967default;
        int i2 = this.f23960abstract;
        int i3 = this.f23986switch + 1;
        this.f23966continue = i3;
        sb.append(t3Var.m28292case(i2 + i3));
        if (this.f23990try > 0) {
            m28177try(3);
        } else if (this.f23964class) {
            m28177try(4);
        } else {
            m28177try(2);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public m4 m28176throws() {
        String strM28318try = u[this.f23989throws];
        if (strM28318try == null) {
            strM28318try = this.f23967default.m28318try();
        }
        int iM28310public = this.f23967default.m28310public();
        int iM28306native = this.f23967default.m28306native();
        int iM28314switch = this.f23967default.m28314switch();
        int iM28312static = this.f23967default.m28312static();
        m4 m4VarNewToken = m4.newToken(this.f23989throws, strM28318try);
        m4VarNewToken.beginLine = iM28310public;
        m4VarNewToken.endLine = iM28314switch;
        m4VarNewToken.beginColumn = iM28306native;
        m4VarNewToken.endColumn = iM28312static;
        return m4VarNewToken;
    }

    /* renamed from: try, reason: not valid java name */
    public void m28177try(int i2) {
        if (i2 < 8 && i2 >= 0) {
            this.f23977native = i2;
            return;
        }
        throw new w72("Error: Ignoring invalid lexical state : " + i2 + ". State unchanged.", 2);
    }

    public k0(t3 t3Var, int i2) {
        this.f23973for = -1;
        this.f23976import = System.out;
        this.f23977native = 0;
        this.f23981public = 0;
        this.f23970extends = new int[713];
        this.f23972finally = new int[1426];
        StringBuilder sb = new StringBuilder();
        this.f23979package = sb;
        this.f23980private = sb;
        m28171do(t3Var);
        m28177try(i2);
    }
}

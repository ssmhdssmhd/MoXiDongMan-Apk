package kotlin.io.path;

import android.support.v4.ae1;
import android.support.v4.an1;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.k90;
import android.support.v4.m41;
import android.support.v4.on0;
import android.support.v4.qm;
import android.support.v4.qr0;
import android.support.v4.tm0;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.wg1;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import java.io.IOException;
import java.net.URI;
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Cfor;
import kotlin.Cwhile;
import kotlin.collections.Cthrows;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;
import kotlin.text.Creturn;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0016\u001a\r\u0010\u0001\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0002*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0007\u001a\u0014\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0007\u001a\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0000*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0007\u001a\u001f\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\tH\u0087\b\u001a0\u0010\u000f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0087\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a(\u0010\u0012\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a(\u0010\u0014\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b\u0014\u0010\u0013\u001a(\u0010\u0015\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b\u0015\u0010\u0013\u001a(\u0010\u0016\u001a\u00020\t*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b\u0016\u0010\u0013\u001a\r\u0010\u0017\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u0018\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u001a\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\r\u0010\u001b\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u001d\u001a\u00020\t*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000H\u0087\b\u001a\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00000\u001f*\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u0002H\u0007\u001aA\u0010$\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001a*\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u00022\u0018\u0010#\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00000\"\u0012\u0004\u0012\u00028\u00000!H\u0087\bø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a.\u0010(\u001a\u00020&*\u00020\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u00022\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020&0!H\u0087\bø\u0001\u0000\u001a\r\u0010*\u001a\u00020)*\u00020\u0000H\u0087\b\u001a\r\u0010+\u001a\u00020&*\u00020\u0000H\u0087\b\u001a\r\u0010,\u001a\u00020\t*\u00020\u0000H\u0087\b\u001a0\u0010/\u001a\u00020\u0000*\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b/\u00100\u001a0\u00101\u001a\u00020\u0000*\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b1\u00100\u001a0\u00102\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0087\b¢\u0006\u0004\b2\u0010\u0010\u001a\u001f\u00103\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\tH\u0087\b\u001a\r\u00105\u001a\u000204*\u00020\u0000H\u0087\b\u001a2\u00108\u001a\u0004\u0018\u000107*\u00020\u00002\u0006\u00106\u001a\u00020\u00022\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b8\u00109\u001a:\u0010;\u001a\u00020\u0000*\u00020\u00002\u0006\u00106\u001a\u00020\u00022\b\u0010:\u001a\u0004\u0018\u0001072\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b;\u0010<\u001a6\u0010>\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u001d\u0018\u0001*\u00020=*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b>\u0010?\u001a4\u0010@\u001a\u00028\u0000\"\n\b\u0000\u0010\u001d\u0018\u0001*\u00020=*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\b@\u0010?\u001a\u001c\u0010E\u001a\u00020D2\u0006\u0010A\u001a\u00020\u00002\n\u0010C\u001a\u0006\u0012\u0002\b\u00030BH\u0001\u001a4\u0010G\u001a\u00028\u0000\"\n\b\u0000\u00108\u0018\u0001*\u00020F*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\bG\u0010H\u001a>\u0010J\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u0001070I*\u00020\u00002\u0006\u0010.\u001a\u00020\u00022\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\bJ\u0010K\u001a(\u0010M\u001a\u00020L*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\bM\u0010N\u001a\u0015\u0010O\u001a\u00020\u0000*\u00020\u00002\u0006\u0010:\u001a\u00020LH\u0087\b\u001a*\u0010Q\u001a\u0004\u0018\u00010P*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\bQ\u0010R\u001a\u0015\u0010S\u001a\u00020\u0000*\u00020\u00002\u0006\u0010:\u001a\u00020PH\u0087\b\u001a.\u0010V\u001a\b\u0012\u0004\u0012\u00020U0T*\u00020\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\f\"\u00020\u0011H\u0087\b¢\u0006\u0004\bV\u0010W\u001a\u001b\u0010X\u001a\u00020\u0000*\u00020\u00002\f\u0010:\u001a\b\u0012\u0004\u0012\u00020U0TH\u0087\b\u001a\u0015\u0010Y\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000H\u0087\b\u001a8\u0010Z\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\bZ\u0010[\u001a\r\u0010\\\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a0\u0010]\u001a\u00020\u0000*\u00020\u00002\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b]\u00100\u001aD\u0010`\u001a\u00020\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\b`\u0010a\u001aM\u0010c\u001a\u00020\u00002\b\u0010b\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010_\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0007¢\u0006\u0004\bc\u0010d\u001a8\u0010e\u001a\u00020\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0087\b¢\u0006\u0004\be\u0010f\u001aA\u0010g\u001a\u00020\u00002\b\u0010b\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010^\u001a\u0004\u0018\u00010\u00022\u001a\u0010.\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030-0\f\"\u0006\u0012\u0002\b\u00030-H\u0007¢\u0006\u0004\bg\u0010h\u001a\u0015\u0010i\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010j\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0002H\u0087\n\u001a\u0011\u0010k\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0002H\u0087\b\u001a,\u0010m\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00022\u0012\u0010l\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\f\"\u00020\u0002H\u0087\b¢\u0006\u0004\bm\u0010n\u001a\r\u0010p\u001a\u00020\u0000*\u00020oH\u0087\b\" \u0010u\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bs\u0010t\u001a\u0004\bq\u0010r\" \u0010x\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bw\u0010t\u001a\u0004\bv\u0010r\" \u0010{\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\bz\u0010t\u001a\u0004\by\u0010r\"!\u0010~\u001a\u00020\u0002*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b}\u0010t\u001a\u0004\b|\u0010r\"\"\u0010\u0081\u0001\u001a\u00020\u0002*\u00020\u00008F@\u0007X\u0087\u0004¢\u0006\r\u0012\u0005\b\u0080\u0001\u0010t\u001a\u0004\b\u007f\u0010r\"$\u0010\u0084\u0001\u001a\u00020\u0002*\u00020\u00008Æ\u0002@\u0007X\u0087\u0004¢\u0006\u000e\u0012\u0005\b\u0083\u0001\u0010t\u001a\u0005\b\u0082\u0001\u0010r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0085\u0001"}, d2 = {"Ljava/nio/file/Path;", "transient", "", "implements", "base", "h0", "j0", "i0", TypedValues.Attributes.S_TARGET, "", "overwrite", "instanceof", "", "Ljava/nio/file/CopyOption;", "options", "synchronized", "(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;", "Ljava/nio/file/LinkOption;", ak.aB, "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z", "d0", "U", "Q", ExifInterface.LONGITUDE_WEST, "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "X", "other", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "glob", "", "Y", "Lkotlin/Function1;", "Lkotlin/sequences/Sequence;", "block", "p0", "(Ljava/nio/file/Path;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Landroid/support/v4/ub2;", "action", "y", "", "w", "o", ak.ax, "Ljava/nio/file/attribute/FileAttribute;", "attributes", "c", "(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "b", "b0", "a0", "Ljava/nio/file/FileStore;", "x", "attribute", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;", ES6Iterator.VALUE_PROPERTY, "k0", "(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;", "Ljava/nio/file/attribute/FileAttributeView;", "v", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;", ak.aG, "path", "Ljava/lang/Class;", "attributeViewClass", "", ak.aH, "Ljava/nio/file/attribute/BasicFileAttributes;", "e0", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;", "", "f0", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;", "Ljava/nio/file/attribute/FileTime;", "H", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;", "l0", "Ljava/nio/file/attribute/UserPrincipal;", "M", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;", "m0", "", "Ljava/nio/file/attribute/PosixFilePermission;", "P", "(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;", "n0", "e", "f", "(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "g0", "d", "prefix", "suffix", "k", "(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "directory", "l", "(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "g", "(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "h", "(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "r", "q", "interface", "subpaths", "protected", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;", "Ljava/net/URI;", "o0", OptRuntime.GeneratorState.resumptionPoint_TYPE, "(Ljava/nio/file/Path;)Ljava/lang/String;", "getName$annotations", "(Ljava/nio/file/Path;)V", "name", "K", "getNameWithoutExtension$annotations", "nameWithoutExtension", "B", "getExtension$annotations", "extension", "N", "getPathString$annotations", "pathString", "F", "getInvariantSeparatorsPathString$annotations", "invariantSeparatorsPathString", Cstatic.m1, "getInvariantSeparatorsPath$annotations", "invariantSeparatorsPath", "kotlin-stdlib-jdk7"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/path/PathsKt")
/* renamed from: kotlin.io.path.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew extends Cfor {
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Object A(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        return Files.getAttribute(path, str, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @m41
    public static final String B(@m41 Path extension) {
        String string;
        String strD4;
        Csuper.m30700throw(extension, "$this$extension");
        Path fileName = extension.getFileName();
        return (fileName == null || (string = fileName.toString()) == null || (strD4 = kotlin.text.Cstatic.D4(string, Ctry.f28883do, "")) == null) ? "" : strD4;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static /* synthetic */ void C(Path path) {
    }

    private static final String D(Path path) {
        return F(path);
    }

    @um0
    @Cfor(level = kotlin.Ctry.ERROR, message = "Use invariantSeparatorsPathString property instead.", replaceWith = @an1(expression = "invariantSeparatorsPathString", imports = {}))
    @k90
    @iz1(version = "1.4")
    public static /* synthetic */ void E(Path path) {
    }

    @m41
    public static final String F(@m41 Path invariantSeparatorsPathString) {
        Csuper.m30700throw(invariantSeparatorsPathString, "$this$invariantSeparatorsPathString");
        FileSystem fileSystem = invariantSeparatorsPathString.getFileSystem();
        Csuper.m30696super(fileSystem, "fileSystem");
        String separator = fileSystem.getSeparator();
        if (!(!Csuper.m30676else(separator, on0.f4694final))) {
            return invariantSeparatorsPathString.toString();
        }
        String string = invariantSeparatorsPathString.toString();
        Csuper.m30696super(separator, "separator");
        return Creturn.x1(string, separator, on0.f4694final, false, 4, null);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static /* synthetic */ void G(Path path) {
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final FileTime H(Path path, LinkOption... linkOptionArr) throws IOException {
        FileTime lastModifiedTime = Files.getLastModifiedTime(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Csuper.m30696super(lastModifiedTime, "Files.getLastModifiedTime(this, *options)");
        return lastModifiedTime;
    }

    @m41
    public static final String I(@m41 Path name) {
        Csuper.m30700throw(name, "$this$name");
        Path fileName = name.getFileName();
        String string = fileName != null ? fileName.toString() : null;
        return string != null ? string : "";
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static /* synthetic */ void J(Path path) {
    }

    @m41
    public static final String K(@m41 Path nameWithoutExtension) {
        String string;
        String strO4;
        Csuper.m30700throw(nameWithoutExtension, "$this$nameWithoutExtension");
        Path fileName = nameWithoutExtension.getFileName();
        return (fileName == null || (string = fileName.toString()) == null || (strO4 = kotlin.text.Cstatic.O4(string, ".", null, 2, null)) == null) ? "" : strO4;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static /* synthetic */ void L(Path path) {
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final UserPrincipal M(Path path, LinkOption... linkOptionArr) throws IOException {
        return Files.getOwner(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    private static final String N(Path path) {
        return path.toString();
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    public static /* synthetic */ void O(Path path) {
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Set<PosixFilePermission> P(Path path, LinkOption... linkOptionArr) throws IOException {
        Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Csuper.m30696super(posixFilePermissions, "Files.getPosixFilePermissions(this, *options)");
        return posixFilePermissions;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean Q(Path path, LinkOption... linkOptionArr) {
        return Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean R(Path path) {
        return Files.isExecutable(path);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean S(Path path) throws IOException {
        return Files.isHidden(path);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean T(Path path) {
        return Files.isReadable(path);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean U(Path path, LinkOption... linkOptionArr) {
        return Files.isRegularFile(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean V(Path path, Path path2) throws IOException {
        return Files.isSameFile(path, path2);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean W(Path path) {
        return Files.isSymbolicLink(path);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean X(Path path) {
        return Files.isWritable(path);
    }

    @m41
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static final List<Path> Y(@m41 Path listDirectoryEntries, @m41 String glob) throws IOException {
        Csuper.m30700throw(listDirectoryEntries, "$this$listDirectoryEntries");
        Csuper.m30700throw(glob, "glob");
        DirectoryStream<Path> it = Files.newDirectoryStream(listDirectoryEntries, glob);
        try {
            Csuper.m30696super(it, "it");
            List<Path> listV4 = Cthrows.V4(it);
            qm.m6624do(it, null);
            return listV4;
        } finally {
        }
    }

    public static /* synthetic */ List Z(Path path, String str, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = "*";
        }
        return Y(path, str);
    }

    public static /* synthetic */ Path a(Path path, Path path2, boolean z, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            z = false;
        }
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path pathCopy = Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Csuper.m30696super(pathCopy, "Files.copy(this, target, *options)");
        return pathCopy;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path a0(Path path, Path path2, boolean z) throws IOException {
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path pathMove = Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Csuper.m30696super(pathMove, "Files.move(this, target, *options)");
        return pathMove;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path b(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path pathCreateDirectories = Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateDirectories, "Files.createDirectories(this, *attributes)");
        return pathCreateDirectories;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path b0(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        Path pathMove = Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Csuper.m30696super(pathMove, "Files.move(this, target, *options)");
        return pathMove;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path c(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path pathCreateDirectory = Files.createDirectory(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateDirectory, "Files.createDirectory(this, *attributes)");
        return pathCreateDirectory;
    }

    public static /* synthetic */ Path c0(Path path, Path path2, boolean z, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            z = false;
        }
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path pathMove = Files.move(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Csuper.m30696super(pathMove, "Files.move(this, target, *options)");
        return pathMove;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path d(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path pathCreateFile = Files.createFile(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateFile, "Files.createFile(this, *attributes)");
        return pathCreateFile;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean d0(Path path, LinkOption... linkOptionArr) {
        return Files.notExists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path e(Path path, Path path2) throws IOException {
        Path pathCreateLink = Files.createLink(path, path2);
        Csuper.m30696super(pathCreateLink, "Files.createLink(this, target)");
        return pathCreateLink;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final /* synthetic */ <A extends BasicFileAttributes> A e0(Path path, LinkOption... linkOptionArr) throws IOException {
        Csuper.m30674default(4, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
        A a = (A) Files.readAttributes(path, BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Csuper.m30696super(a, "Files.readAttributes(thi… A::class.java, *options)");
        return a;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path f(Path path, Path path2, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path pathCreateSymbolicLink = Files.createSymbolicLink(path, path2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateSymbolicLink, "Files.createSymbolicLink…his, target, *attributes)");
        return pathCreateSymbolicLink;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Map<String, Object> f0(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        Map<String, Object> attributes = Files.readAttributes(path, str, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Csuper.m30696super(attributes, "Files.readAttributes(this, attributes, *options)");
        return attributes;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path g(String str, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path pathCreateTempDirectory = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateTempDirectory, "Files.createTempDirectory(prefix, *attributes)");
        return pathCreateTempDirectory;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path g0(Path path) throws IOException {
        Path symbolicLink = Files.readSymbolicLink(path);
        Csuper.m30696super(symbolicLink, "Files.readSymbolicLink(this)");
        return symbolicLink;
    }

    @m41
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static final Path h(@z41 Path path, @z41 String str, @m41 FileAttribute<?>... attributes) throws IOException {
        Csuper.m30700throw(attributes, "attributes");
        if (path != null) {
            Path pathCreateTempDirectory = Files.createTempDirectory(path, str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
            Csuper.m30696super(pathCreateTempDirectory, "Files.createTempDirector…ory, prefix, *attributes)");
            return pathCreateTempDirectory;
        }
        Path pathCreateTempDirectory2 = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        Csuper.m30696super(pathCreateTempDirectory2, "Files.createTempDirectory(prefix, *attributes)");
        return pathCreateTempDirectory2;
    }

    @m41
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static final Path h0(@m41 Path relativeTo, @m41 Path base) {
        Csuper.m30700throw(relativeTo, "$this$relativeTo");
        Csuper.m30700throw(base, "base");
        try {
            return Cdo.f27863for.m30596do(relativeTo, base);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(Csuper.m30690private(e.getMessage(), "\nthis path: " + relativeTo + "\nbase path: " + base), e);
        }
    }

    public static /* synthetic */ Path i(String str, FileAttribute[] fileAttributeArr, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = null;
        }
        Path pathCreateTempDirectory = Files.createTempDirectory(str, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateTempDirectory, "Files.createTempDirectory(prefix, *attributes)");
        return pathCreateTempDirectory;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @z41
    public static final Path i0(@m41 Path relativeToOrNull, @m41 Path base) {
        Csuper.m30700throw(relativeToOrNull, "$this$relativeToOrNull");
        Csuper.m30700throw(base, "base");
        try {
            return Cdo.f27863for.m30596do(relativeToOrNull, base);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: implements, reason: not valid java name */
    private static final String m30630implements(Path path) {
        return path.toAbsolutePath().toString();
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: instanceof, reason: not valid java name */
    private static final Path m30631instanceof(Path path, Path path2, boolean z) throws IOException {
        CopyOption[] copyOptionArr = z ? new CopyOption[]{StandardCopyOption.REPLACE_EXISTING} : new CopyOption[0];
        Path pathCopy = Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Csuper.m30696super(pathCopy, "Files.copy(this, target, *options)");
        return pathCopy;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: interface, reason: not valid java name */
    private static final Path m30632interface(String str) {
        Path path = Paths.get(str, new String[0]);
        Csuper.m30696super(path, "Paths.get(path)");
        return path;
    }

    public static /* synthetic */ Path j(Path path, String str, FileAttribute[] fileAttributeArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            str = null;
        }
        return h(path, str, fileAttributeArr);
    }

    @m41
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static final Path j0(@m41 Path relativeToOrSelf, @m41 Path base) {
        Csuper.m30700throw(relativeToOrSelf, "$this$relativeToOrSelf");
        Csuper.m30700throw(base, "base");
        Path pathI0 = i0(relativeToOrSelf, base);
        return pathI0 != null ? pathI0 : relativeToOrSelf;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path k(String str, String str2, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path pathCreateTempFile = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateTempFile, "Files.createTempFile(prefix, suffix, *attributes)");
        return pathCreateTempFile;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path k0(Path path, String str, Object obj, LinkOption... linkOptionArr) throws IOException {
        Path attribute = Files.setAttribute(path, str, obj, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        Csuper.m30696super(attribute, "Files.setAttribute(this,…tribute, value, *options)");
        return attribute;
    }

    @m41
    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    public static final Path l(@z41 Path path, @z41 String str, @z41 String str2, @m41 FileAttribute<?>... attributes) throws IOException {
        Csuper.m30700throw(attributes, "attributes");
        if (path != null) {
            Path pathCreateTempFile = Files.createTempFile(path, str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
            Csuper.m30696super(pathCreateTempFile, "Files.createTempFile(dir…fix, suffix, *attributes)");
            return pathCreateTempFile;
        }
        Path pathCreateTempFile2 = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(attributes, attributes.length));
        Csuper.m30696super(pathCreateTempFile2, "Files.createTempFile(prefix, suffix, *attributes)");
        return pathCreateTempFile2;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path l0(Path path, FileTime fileTime) throws IOException {
        Path lastModifiedTime = Files.setLastModifiedTime(path, fileTime);
        Csuper.m30696super(lastModifiedTime, "Files.setLastModifiedTime(this, value)");
        return lastModifiedTime;
    }

    public static /* synthetic */ Path m(String str, String str2, FileAttribute[] fileAttributeArr, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        Path pathCreateTempFile = Files.createTempFile(str, str2, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
        Csuper.m30696super(pathCreateTempFile, "Files.createTempFile(prefix, suffix, *attributes)");
        return pathCreateTempFile;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path m0(Path path, UserPrincipal userPrincipal) throws IOException {
        Path owner = Files.setOwner(path, userPrincipal);
        Csuper.m30696super(owner, "Files.setOwner(this, value)");
        return owner;
    }

    public static /* synthetic */ Path n(Path path, String str, String str2, FileAttribute[] fileAttributeArr, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            str2 = null;
        }
        return l(path, str, str2, fileAttributeArr);
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final Path n0(Path path, Set<? extends PosixFilePermission> set) throws IOException {
        Path posixFilePermissions = Files.setPosixFilePermissions(path, set);
        Csuper.m30696super(posixFilePermissions, "Files.setPosixFilePermissions(this, value)");
        return posixFilePermissions;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final void o(Path path) throws IOException {
        Files.delete(path);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path o0(URI uri) {
        Path path = Paths.get(uri);
        Csuper.m30696super(path, "Paths.get(this)");
        return path;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean p(Path path) throws IOException {
        return Files.deleteIfExists(path);
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final <T> T p0(Path path, String str, Function1<? super Sequence<? extends Path>, ? extends T> function1) throws IOException {
        DirectoryStream<Path> it = Files.newDirectoryStream(path, str);
        try {
            Csuper.m30696super(it, "it");
            T tInvoke = function1.invoke(Cthrows.A0(it));
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(it, null);
            } else if (it != null) {
                it.close();
            }
            tm0.m7994for(1);
            return tInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(it, th);
                } else if (it != null) {
                    try {
                        it.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: protected, reason: not valid java name */
    private static final Path m30633protected(String str, String... strArr) {
        Path path = Paths.get(str, (String[]) Arrays.copyOf(strArr, strArr.length));
        Csuper.m30696super(path, "Paths.get(base, *subpaths)");
        return path;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path q(Path div, String str) {
        Csuper.m30700throw(div, "$this$div");
        Path pathResolve = div.resolve(str);
        Csuper.m30696super(pathResolve, "this.resolve(other)");
        return pathResolve;
    }

    public static /* synthetic */ Object q0(Path path, String str, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = "*";
        }
        DirectoryStream<Path> it = Files.newDirectoryStream(path, str);
        try {
            Csuper.m30696super(it, "it");
            Object objInvoke = function1.invoke(Cthrows.A0(it));
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(it, null);
            } else if (it != null) {
                it.close();
            }
            tm0.m7994for(1);
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(it, th);
                } else if (it != null) {
                    try {
                        it.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final Path r(Path div, Path path) {
        Csuper.m30700throw(div, "$this$div");
        Path pathResolve = div.resolve(path);
        Csuper.m30696super(pathResolve, "this.resolve(other)");
        return pathResolve;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final boolean s(Path path, LinkOption... linkOptionArr) {
        return Files.exists(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: synchronized, reason: not valid java name */
    private static final Path m30634synchronized(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        Path pathCopy = Files.copy(path, path2, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length));
        Csuper.m30696super(pathCopy, "Files.copy(this, target, *options)");
        return pathCopy;
    }

    @m41
    @wg1
    public static final Void t(@m41 Path path, @m41 Class<?> attributeViewClass) {
        Csuper.m30700throw(path, "path");
        Csuper.m30700throw(attributeViewClass, "attributeViewClass");
        throw new UnsupportedOperationException("The desired attribute view type " + attributeViewClass + " is not available for the file " + path + Ctry.f28883do);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    /* renamed from: transient, reason: not valid java name */
    private static final Path m30635transient(Path path) {
        Path absolutePath = path.toAbsolutePath();
        Csuper.m30696super(absolutePath, "toAbsolutePath()");
        return absolutePath;
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final /* synthetic */ <V extends FileAttributeView> V u(Path path, LinkOption... linkOptionArr) {
        Csuper.m30674default(4, ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        V v = (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
        if (v != null) {
            return v;
        }
        Csuper.m30674default(4, ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        t(path, FileAttributeView.class);
        throw new qr0();
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final /* synthetic */ <V extends FileAttributeView> V v(Path path, LinkOption... linkOptionArr) {
        Csuper.m30674default(4, ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        return (V) Files.getFileAttributeView(path, FileAttributeView.class, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length));
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final long w(Path path) throws IOException {
        return Files.size(path);
    }

    @gf2(markerClass = {k90.class})
    @iz1(version = "1.5")
    @um0
    private static final FileStore x(Path path) throws IOException {
        FileStore fileStore = Files.getFileStore(path);
        Csuper.m30696super(fileStore, "Files.getFileStore(this)");
        return fileStore;
    }

    @gf2(markerClass = {k90.class})
    @um0
    @iz1(version = "1.5")
    private static final void y(Path path, String str, Function1<? super Path, ub2> function1) throws IOException {
        DirectoryStream<Path> it = Files.newDirectoryStream(path, str);
        try {
            Csuper.m30696super(it, "it");
            Iterator<Path> it2 = it.iterator();
            while (it2.hasNext()) {
                function1.invoke(it2.next());
            }
            ub2 ub2Var = ub2.f6820do;
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(it, null);
            } else if (it != null) {
                it.close();
            }
            tm0.m7994for(1);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(it, th);
                } else if (it != null) {
                    try {
                        it.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }

    public static /* synthetic */ void z(Path path, String str, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = "*";
        }
        DirectoryStream<Path> it = Files.newDirectoryStream(path, str);
        try {
            Csuper.m30696super(it, "it");
            Iterator<Path> it2 = it.iterator();
            while (it2.hasNext()) {
                function1.invoke(it2.next());
            }
            ub2 ub2Var = ub2.f6820do;
            tm0.m7996new(1);
            if (ae1.m186do(1, 1, 0)) {
                qm.m6624do(it, null);
            } else if (it != null) {
                it.close();
            }
            tm0.m7994for(1);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                tm0.m7996new(1);
                if (ae1.m186do(1, 1, 0)) {
                    qm.m6624do(it, th);
                } else if (it != null) {
                    try {
                        it.close();
                    } catch (Throwable unused) {
                    }
                }
                tm0.m7994for(1);
                throw th2;
            }
        }
    }
}

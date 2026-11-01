package android.support.v4;

import android.content.Context;
import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.luck.picture.lib.R;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.tools.Cdo;
import java.io.File;

/* loaded from: classes2.dex */
public final class rd1 {

    /* renamed from: do, reason: not valid java name */
    public static final String f5752do = ".JPEG";

    /* renamed from: if, reason: not valid java name */
    public static final String f5753if = ".png";

    /* renamed from: break, reason: not valid java name */
    public static boolean m6904break(LocalMedia localMedia) {
        if (localMedia != null) {
            return localMedia.getHeight() > localMedia.getWidth() * 3;
        }
        return false;
    }

    @RequiresApi(api = 26)
    /* renamed from: case, reason: not valid java name */
    public static int m6905case(Context context, String str) {
        try {
            Cursor cursorQuery = context.getApplicationContext().getContentResolver().query(Uri.parse(str), null, null, null);
            if (cursorQuery == null) {
                return 0;
            }
            cursorQuery.moveToFirst();
            return cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("duration"));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* renamed from: catch, reason: not valid java name */
    public static int m6906catch(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1930021710:
                if (str.equals("audio/x-ms-wma")) {
                    c = 0;
                    break;
                }
                break;
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c = 1;
                    break;
                }
                break;
            case -1662382439:
                if (str.equals("video/mpeg")) {
                    c = 2;
                    break;
                }
                break;
            case -1662095187:
                if (str.equals("video/webm")) {
                    c = 3;
                    break;
                }
                break;
            case -1079884372:
                if (str.equals("video/x-msvideo")) {
                    c = 4;
                    break;
                }
                break;
            case -586683234:
                if (str.equals("audio/x-wav")) {
                    c = 5;
                    break;
                }
                break;
            case -107252314:
                if (str.equals("video/quicktime")) {
                    c = 6;
                    break;
                }
                break;
            case -48069494:
                if (str.equals("video/3gpp2")) {
                    c = 7;
                    break;
                }
                break;
            case 5703450:
                if (str.equals("video/mp2ts")) {
                    c = '\b';
                    break;
                }
                break;
            case 187078282:
                if (str.equals("audio/aac")) {
                    c = '\t';
                    break;
                }
                break;
            case 187078669:
                if (str.equals("audio/amr")) {
                    c = '\n';
                    break;
                }
                break;
            case 187090232:
                if (str.equals("audio/mp4")) {
                    c = 11;
                    break;
                }
                break;
            case 187099443:
                if (str.equals("audio/wav")) {
                    c = '\f';
                    break;
                }
                break;
            case 1331792072:
                if (str.equals("video/3gp")) {
                    c = wk.f7547for;
                    break;
                }
                break;
            case 1331836736:
                if (str.equals("video/avi")) {
                    c = 14;
                    break;
                }
                break;
            case 1331848029:
                if (str.equals("video/mp4")) {
                    c = 15;
                    break;
                }
                break;
            case 1338492737:
                if (str.equals("audio/quicktime")) {
                    c = 16;
                    break;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    c = 17;
                    break;
                }
                break;
            case 1504787571:
                if (str.equals("audio/lamr")) {
                    c = 18;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = 19;
                    break;
                }
                break;
            case 2039520277:
                if (str.equals("video/x-matroska")) {
                    c = 20;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 5:
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case 16:
            case 17:
            case 18:
            case 19:
                return 3;
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case '\b':
            case '\r':
            case 14:
            case 15:
            case 20:
                return 2;
            default:
                return 1;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m6907class(String str) {
        str.hashCode();
        switch (str) {
            case "video/3gpp":
            case "video/mpeg":
            case "video/webm":
            case "video/x-msvideo":
            case "video/quicktime":
            case "video/3gpp2":
            case "video/mp2ts":
            case "video/3gp":
            case "video/avi":
            case "video/mp4":
            case "video/x-matroska":
                return true;
            default:
                return false;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m6908const(String str, String str2) {
        return m6906catch(str) == m6906catch(str2);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m6909do(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "image/jpeg";
            }
            String name = new File(str).getName();
            return "image/" + name.substring(name.lastIndexOf(".") + 1);
        } catch (Exception e) {
            e.printStackTrace();
            return "image/jpeg";
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m6910else(String str) {
        str.hashCode();
        return str.equals("image/GIF") || str.equals("image/gif");
    }

    /* renamed from: final, reason: not valid java name */
    public static int m6911final() {
        return 0;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m6912for(File file) {
        if (file != null) {
            String name = file.getName();
            if (name.endsWith(Cdo.f18873for) || name.endsWith(".avi") || name.endsWith(".3gpp") || name.endsWith(".3gp") || name.startsWith(".mov")) {
                return "video/mp4";
            }
            if (name.endsWith(".PNG") || name.endsWith(f5753if) || name.endsWith(".jpeg") || name.endsWith(".gif") || name.endsWith(".GIF") || name.endsWith(".jpg") || name.endsWith(".webp") || name.endsWith(".WEBP") || name.endsWith(".JPEG") || name.endsWith(".bmp")) {
                return "image/jpeg";
            }
            if (name.endsWith(".mp3") || name.endsWith(".amr") || name.endsWith(".aac") || name.endsWith(".war") || name.endsWith(".flac") || name.endsWith(".lamr")) {
                return "audio/mpeg";
            }
        }
        return "image/jpeg";
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m6913goto(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http") || str.startsWith("https");
    }

    /* renamed from: if, reason: not valid java name */
    public static String m6914if(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "video/mp4";
            }
            String name = (ps1.m6218do() ? new File(Cdo.m23300final(context.getApplicationContext(), Uri.parse(str))) : new File(str)).getName();
            return "video/" + name.substring(name.lastIndexOf(".") + 1);
        } catch (Exception e) {
            e.printStackTrace();
            return "video/mp4";
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static int m6915import(String str) {
        if (TextUtils.isEmpty(str)) {
            return 1;
        }
        if (str.startsWith(od1.f4559final)) {
            return 2;
        }
        return str.startsWith("audio") ? 3 : 1;
    }

    /* renamed from: native, reason: not valid java name */
    public static String m6916native(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        return i != 1 ? i != 2 ? i != 3 ? applicationContext.getString(R.string.picture_error) : applicationContext.getString(R.string.picture_audio_error) : applicationContext.getString(R.string.picture_video_error) : applicationContext.getString(R.string.picture_error);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6917new(String str) {
        String strSubstring;
        try {
            int iLastIndexOf = str.lastIndexOf(".");
            if (iLastIndexOf > 0) {
                strSubstring = str.substring(iLastIndexOf);
                switch (strSubstring) {
                    case ".png":
                    case ".PNG":
                    case ".jpg":
                    case ".jpeg":
                    case ".JPEG":
                    case ".WEBP":
                    case ".bmp":
                    case ".BMP":
                    case ".webp":
                        return strSubstring;
                }
            }
            return f5753if;
        } catch (Exception e) {
            e.printStackTrace();
            return f5753if;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static int m6918super() {
        return 3;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m6919this(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strSubstring = str.substring(str.lastIndexOf("."), str.length());
        return strSubstring.startsWith(".gif") || strSubstring.startsWith(".GIF");
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m6920throw() {
        return 1;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6921try(String str) throws IllegalArgumentException {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(str);
            return Integer.parseInt(mediaMetadataRetriever.extractMetadata(9));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m6922while() {
        return 2;
    }
}

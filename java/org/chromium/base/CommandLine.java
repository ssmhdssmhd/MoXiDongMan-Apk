package org.chromium.base;

import android.support.v4.cx0;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

@cx0
/* loaded from: classes3.dex */
public abstract class CommandLine {

    /* renamed from: case, reason: not valid java name */
    public static final /* synthetic */ boolean f32967case = false;

    /* renamed from: do, reason: not valid java name */
    private static final AtomicReference<CommandLine> f32968do = new AtomicReference<>();

    /* renamed from: for, reason: not valid java name */
    private static final String f32969for = "--";

    /* renamed from: if, reason: not valid java name */
    private static final String f32970if = "CommandLine";

    /* renamed from: new, reason: not valid java name */
    private static final String f32971new = "--";

    /* renamed from: try, reason: not valid java name */
    private static final String f32972try = "=";

    public interface Natives {
        void appendSwitch(String str);

        void appendSwitchWithValue(String str, String str2);

        void appendSwitchesAndArguments(String[] strArr);

        String getSwitchValue(String str);

        String[] getSwitchesFlattened();

        boolean hasSwitch(String str);

        void init(String[] strArr);

        void removeSwitch(String str);
    }

    /* renamed from: org.chromium.base.CommandLine$for, reason: invalid class name */
    public static class Cfor extends CommandLine {

        /* renamed from: else, reason: not valid java name */
        public static final /* synthetic */ boolean f32973else = false;

        public Cfor(@Nullable String[] strArr) {
            super();
            Cnew.m37182if().init(strArr);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: case */
        public String[] mo36777case() {
            return null;
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: catch */
        public Map<String, String> mo36778catch() {
            HashMap map = new HashMap();
            String[] switchesFlattened = Cnew.m37182if().getSwitchesFlattened();
            for (int i = 0; i < switchesFlattened.length; i += 2) {
                map.put(switchesFlattened[i], switchesFlattened[i + 1]);
            }
            return map;
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: class */
        public boolean mo36779class(String str) {
            return Cnew.m37182if().hasSwitch(str);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: do */
        public void mo36780do(String str) {
            Cnew.m37182if().appendSwitch(str);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: for */
        public void mo36781for(String[] strArr) {
            Cnew.m37182if().appendSwitchesAndArguments(strArr);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: if */
        public void mo36782if(String str, String str2) {
            Natives nativesM37182if = Cnew.m37182if();
            if (str2 == null) {
                str2 = "";
            }
            nativesM37182if.appendSwitchWithValue(str, str2);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: import */
        public void mo36783import(String str) {
            Cnew.m37182if().removeSwitch(str);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: new */
        public void mo36784new() {
            throw new IllegalStateException("Can't destroy native command line after startup");
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: this */
        public String mo36785this(String str) {
            return Cnew.m37182if().getSwitchValue(str);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: throw */
        public boolean mo36786throw() {
            return true;
        }
    }

    /* renamed from: org.chromium.base.CommandLine$if, reason: invalid class name */
    public static class Cif extends CommandLine {

        /* renamed from: break, reason: not valid java name */
        public static final /* synthetic */ boolean f32974break = false;

        /* renamed from: else, reason: not valid java name */
        private HashMap<String, String> f32975else;

        /* renamed from: goto, reason: not valid java name */
        private ArrayList<String> f32976goto;

        /* renamed from: this, reason: not valid java name */
        private int f32977this;

        public Cif(@Nullable String[] strArr) {
            super();
            this.f32975else = new HashMap<>();
            ArrayList<String> arrayList = new ArrayList<>();
            this.f32976goto = arrayList;
            this.f32977this = 1;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                arrayList.add("");
            } else {
                arrayList.add(strArr[0]);
                m36787switch(strArr, 1);
            }
        }

        /* renamed from: switch, reason: not valid java name */
        private void m36787switch(String[] strArr, int i) {
            boolean z = true;
            for (String str : strArr) {
                if (i > 0) {
                    i--;
                } else {
                    if (str.equals("--")) {
                        z = false;
                    }
                    if (z && str.startsWith("--")) {
                        String[] strArrSplit = str.split(CommandLine.f32972try, 2);
                        mo36782if(strArrSplit[0].substring(2), strArrSplit.length > 1 ? strArrSplit[1] : null);
                    } else {
                        this.f32976goto.add(str);
                    }
                }
            }
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: case */
        public String[] mo36777case() {
            ArrayList<String> arrayList = this.f32976goto;
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: catch */
        public Map<String, String> mo36778catch() {
            return new HashMap(this.f32975else);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: class */
        public boolean mo36779class(String str) {
            return this.f32975else.containsKey(str);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: do */
        public void mo36780do(String str) {
            mo36782if(str, null);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: for */
        public void mo36781for(String[] strArr) {
            m36787switch(strArr, 0);
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: if */
        public void mo36782if(String str, String str2) {
            this.f32975else.put(str, str2 == null ? "" : str2);
            String str3 = "--" + str;
            if (str2 != null && !str2.isEmpty()) {
                str3 = str3 + CommandLine.f32972try + str2;
            }
            ArrayList<String> arrayList = this.f32976goto;
            int i = this.f32977this;
            this.f32977this = i + 1;
            arrayList.add(i, str3);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0049  */
        @Override // org.chromium.base.CommandLine
        /* renamed from: import */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void mo36783import(String str) {
            this.f32975else.remove(str);
            String str2 = "--" + str;
            for (int i = this.f32977this - 1; i > 0; i--) {
                if (!this.f32976goto.get(i).equals(str2)) {
                    if (this.f32976goto.get(i).startsWith(str2 + CommandLine.f32972try)) {
                        this.f32977this--;
                        this.f32976goto.remove(i);
                    }
                }
            }
        }

        @Override // org.chromium.base.CommandLine
        /* renamed from: this */
        public String mo36785this(String str) {
            String str2 = this.f32975else.get(str);
            if (str2 == null || str2.isEmpty()) {
                return null;
            }
            return str2;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m36765const(@Nullable String[] strArr) {
        m36770public(new Cif(strArr));
    }

    /* renamed from: else, reason: not valid java name */
    public static CommandLine m36766else() {
        return f32968do.get();
    }

    /* renamed from: final, reason: not valid java name */
    public static void m36767final(String str) {
        char[] cArrM36775while = m36775while(str);
        m36765const(cArrM36775while == null ? null : m36772static(cArrM36775while));
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public static String[] m36768goto() {
        CommandLine commandLine = f32968do.get();
        if (commandLine != null) {
            return commandLine.mo36777case();
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: native, reason: not valid java name */
    public static void m36769native() {
        m36770public(null);
    }

    /* renamed from: public, reason: not valid java name */
    private static void m36770public(CommandLine commandLine) {
        CommandLine andSet = f32968do.getAndSet(commandLine);
        if (andSet != null) {
            andSet.mo36784new();
        }
    }

    @VisibleForTesting
    /* renamed from: return, reason: not valid java name */
    public static void m36771return(CommandLine commandLine) {
        m36770public(commandLine);
    }

    @VisibleForTesting
    /* renamed from: static, reason: not valid java name */
    public static String[] m36772static(char[] cArr) {
        if (cArr.length > 65536) {
            throw new RuntimeException("Flags file too big: " + cArr.length);
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = null;
        char c = 0;
        for (char c2 : cArr) {
            if ((c == 0 && (c2 == '\'' || c2 == '\"')) || c2 == c) {
                if (sb == null || sb.length() <= 0 || sb.charAt(sb.length() - 1) != '\\') {
                    c = c == 0 ? c2 : (char) 0;
                } else {
                    sb.setCharAt(sb.length() - 1, c2);
                }
            } else if (c != 0 || !Character.isWhitespace(c2)) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(c2);
            } else if (sb != null) {
                arrayList.add(sb.toString());
                sb = null;
            }
        }
        if (sb != null) {
            if (c != 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unterminated quoted string: ");
                sb2.append((Object) sb);
            }
            arrayList.add(sb.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m36773super() {
        return f32968do.get() != null;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36774try() {
        f32968do.set(new Cfor(m36768goto()));
    }

    /* renamed from: while, reason: not valid java name */
    private static char[] m36775while(String str) {
        File file = new File(str);
        try {
            FileReader fileReader = new FileReader(file);
            try {
                char[] cArr = new char[(int) file.length()];
                char[] cArrCopyOfRange = Arrays.copyOfRange(cArr, 0, fileReader.read(cArr));
                fileReader.close();
                return cArrCopyOfRange;
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public String m36776break(String str, String str2) {
        String strMo36785this = mo36785this(str);
        return TextUtils.isEmpty(strMo36785this) ? str2 : strMo36785this;
    }

    /* renamed from: case, reason: not valid java name */
    public abstract String[] mo36777case();

    /* renamed from: catch, reason: not valid java name */
    public abstract Map mo36778catch();

    /* renamed from: class, reason: not valid java name */
    public abstract boolean mo36779class(String str);

    /* renamed from: do, reason: not valid java name */
    public abstract void mo36780do(String str);

    /* renamed from: for, reason: not valid java name */
    public abstract void mo36781for(String[] strArr);

    /* renamed from: if, reason: not valid java name */
    public abstract void mo36782if(String str, String str2);

    /* renamed from: import, reason: not valid java name */
    public abstract void mo36783import(String str);

    /* renamed from: new, reason: not valid java name */
    public void mo36784new() {
    }

    /* renamed from: this, reason: not valid java name */
    public abstract String mo36785this(String str);

    /* renamed from: throw, reason: not valid java name */
    public boolean mo36786throw() {
        return false;
    }

    private CommandLine() {
    }
}

package sun.misc;

import freemarker.core.b2;
import java.lang.Thread;
import java.util.Properties;

/* loaded from: classes4.dex */
public class VM {
    private static final int JVMTI_THREAD_STATE_ALIVE = 1;
    private static final int JVMTI_THREAD_STATE_BLOCKED_ON_MONITOR_ENTER = 1024;
    private static final int JVMTI_THREAD_STATE_RUNNABLE = 4;
    private static final int JVMTI_THREAD_STATE_TERMINATED = 2;
    private static final int JVMTI_THREAD_STATE_WAITING_INDEFINITELY = 16;
    private static final int JVMTI_THREAD_STATE_WAITING_WITH_TIMEOUT = 32;

    @Deprecated
    public static final int STATE_GREEN = 1;

    @Deprecated
    public static final int STATE_RED = 3;

    @Deprecated
    public static final int STATE_YELLOW = 2;
    private static boolean allowArraySyntax = false;
    private static boolean allowGetCallerClass = true;
    private static volatile boolean booted = false;
    private static boolean defaultAllowArraySyntax = false;
    private static long directMemory = 67108864;
    private static boolean pageAlignDirectMemory;
    private static boolean suspended;
    private static final Properties savedProps = new Properties();
    private static volatile int finalRefCount = 0;
    private static volatile int peakFinalRefCount = 0;

    static {
        initialize();
    }

    public static void addFinalRefCount(int i) {
        finalRefCount += i;
        if (finalRefCount > peakFinalRefCount) {
            peakFinalRefCount = finalRefCount;
        }
    }

    public static boolean allowArraySyntax() {
        return allowArraySyntax;
    }

    public static boolean allowGetCallerClass() {
        return allowGetCallerClass;
    }

    public static boolean allowThreadSuspension(ThreadGroup threadGroup, boolean z) {
        return threadGroup.allowThreadSuspension(z);
    }

    @Deprecated
    public static void asChange(int i, int i2) {
    }

    @Deprecated
    public static void asChange_otherthread(int i, int i2) {
    }

    public static void booted() {
        booted = true;
    }

    public static int getFinalRefCount() {
        return finalRefCount;
    }

    public static int getPeakFinalRefCount() {
        return peakFinalRefCount;
    }

    public static String getSavedProperty(String str) {
        Properties properties = savedProps;
        if (properties.isEmpty()) {
            throw new IllegalStateException("Should be non-empty if initialized");
        }
        return properties.getProperty(str);
    }

    @Deprecated
    public static final int getState() {
        return 1;
    }

    private static native void initialize();

    public static void initializeOSEnvironment() {
        if (booted) {
            return;
        }
        OSEnvironment.initialize();
    }

    public static boolean isBooted() {
        return booted;
    }

    public static boolean isDirectMemoryPageAligned() {
        return pageAlignDirectMemory;
    }

    public static native ClassLoader latestUserDefinedLoader();

    public static long maxDirectMemory() {
        return directMemory;
    }

    @Deprecated
    public static void registerVMNotification(VMNotification vMNotification) {
    }

    public static void saveAndRemoveProperties(Properties properties) throws NumberFormatException {
        if (booted) {
            throw new IllegalStateException("System initialization has completed");
        }
        savedProps.putAll(properties);
        String str = (String) properties.remove("sun.nio.MaxDirectMemorySize");
        if (str != null) {
            if (str.equals("-1")) {
                directMemory = Runtime.getRuntime().maxMemory();
            } else {
                long j = Long.parseLong(str);
                if (j > -1) {
                    directMemory = j;
                }
            }
        }
        boolean z = true;
        if (b2.f23511if.equals((String) properties.remove("sun.nio.PageAlignDirectMemory"))) {
            pageAlignDirectMemory = true;
        }
        String property = properties.getProperty("sun.lang.ClassLoader.allowArraySyntax");
        allowArraySyntax = property == null ? defaultAllowArraySyntax : Boolean.parseBoolean(property);
        String property2 = properties.getProperty("jdk.reflect.allowGetCallerClass");
        if (property2 != null && !property2.isEmpty() && !Boolean.parseBoolean(property2) && !Boolean.valueOf(properties.getProperty("jdk.logging.allowStackWalkSearch")).booleanValue()) {
            z = false;
        }
        allowGetCallerClass = z;
        properties.remove("java.lang.Integer.IntegerCache.high");
        properties.remove("sun.zip.disableMemoryMapping");
        properties.remove("sun.java.launcher.diag");
    }

    @Deprecated
    public static boolean suspendThreads() {
        suspended = true;
        return true;
    }

    @Deprecated
    public static boolean threadsSuspended() {
        return suspended;
    }

    public static Thread.State toThreadState(int i) {
        return (i & 4) != 0 ? Thread.State.RUNNABLE : (i & 1024) != 0 ? Thread.State.BLOCKED : (i & 16) != 0 ? Thread.State.WAITING : (i & 32) != 0 ? Thread.State.TIMED_WAITING : (i & 2) != 0 ? Thread.State.TERMINATED : (i & 1) == 0 ? Thread.State.NEW : Thread.State.RUNNABLE;
    }

    @Deprecated
    public static void unsuspendSomeThreads() {
    }

    @Deprecated
    public static void unsuspendThreads() {
        suspended = false;
    }
}

package android.support.v4;

import java.io.Serializable;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes2.dex */
public class tf1 implements Serializable {
    private long contentLength;
    private long currentBytes;
    private boolean done;

    public tf1(long j, long j2, boolean z) {
        this.currentBytes = j;
        this.contentLength = j2;
        this.done = z;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public long getCurrentBytes() {
        return this.currentBytes;
    }

    public boolean isDone() {
        return this.done;
    }

    public void setContentLength(long j) {
        this.contentLength = j;
    }

    public void setCurrentBytes(long j) {
        this.currentBytes = j;
    }

    public void setDone(boolean z) {
        this.done = z;
    }

    public String toString() {
        return "ProgressModel{currentBytes=" + this.currentBytes + ", contentLength=" + this.contentLength + ", done=" + this.done + MessageFormatter.DELIM_STOP;
    }
}

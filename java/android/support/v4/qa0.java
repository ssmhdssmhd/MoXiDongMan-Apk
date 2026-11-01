package android.support.v4;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class qa0 extends gp0 {
    private Drawable icon;
    private String name;
    private String path = on0.f4694final;
    private long size = 0;
    private boolean isDirectory = false;

    public Drawable getIcon() {
        return this.icon;
    }

    public String getName() {
        return this.name;
    }

    public String getPath() {
        return this.path;
    }

    public long getSize() {
        return this.size;
    }

    public boolean isDirectory() {
        return this.isDirectory;
    }

    public void setDirectory(boolean z) {
        this.isDirectory = z;
    }

    public void setIcon(Drawable drawable) {
        this.icon = drawable;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSize(long j) {
        this.size = j;
    }
}

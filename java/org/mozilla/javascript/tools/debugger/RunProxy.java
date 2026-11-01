package org.mozilla.javascript.tools.debugger;

import org.mozilla.javascript.tools.debugger.Dim;

/* loaded from: classes3.dex */
class RunProxy implements Runnable {
    public static final int ENTER_INTERRUPT = 4;
    public static final int LOAD_FILE = 2;
    public static final int OPEN_FILE = 1;
    public static final int UPDATE_SOURCE_TEXT = 3;
    public String alertMessage;
    private SwingGui debugGui;
    public String fileName;
    public Dim.StackFrame lastFrame;
    public Dim.SourceInfo sourceInfo;
    public String text;
    public String threadTitle;
    private int type;

    public RunProxy(SwingGui swingGui, int i) {
        this.debugGui = swingGui;
        this.type = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = this.type;
        if (i == 1) {
            try {
                this.debugGui.dim.compileScript(this.fileName, this.text);
                return;
            } catch (RuntimeException e) {
                MessageDialogWrapper.showMessageDialog(this.debugGui, e.getMessage(), "Error Compiling " + this.fileName, 0);
                return;
            }
        }
        if (i == 2) {
            try {
                this.debugGui.dim.evalScript(this.fileName, this.text);
                return;
            } catch (RuntimeException e2) {
                MessageDialogWrapper.showMessageDialog(this.debugGui, e2.getMessage(), "Run error for " + this.fileName, 0);
                return;
            }
        }
        if (i != 3) {
            if (i != 4) {
                throw new IllegalArgumentException(String.valueOf(this.type));
            }
            this.debugGui.enterInterruptImpl(this.lastFrame, this.threadTitle, this.alertMessage);
        } else {
            String strUrl = this.sourceInfo.url();
            if (this.debugGui.updateFileWindow(this.sourceInfo) || strUrl.equals("<stdin>")) {
                return;
            }
            this.debugGui.createFileWindow(this.sourceInfo, -1);
        }
    }
}

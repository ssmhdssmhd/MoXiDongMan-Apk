package com.wsw.cospa.widget;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes2.dex */
public abstract class LastMsgHandler extends Handler {
    private int count = 0;

    public final synchronized void clearAll() {
        this.count = 0;
        removeCallbacksAndMessages(null);
    }

    public abstract void handleLastMessage(Message message);

    @Override // android.os.Handler
    public final synchronized void handleMessage(Message message) {
        super.handleMessage(message);
        int i = this.count - 1;
        this.count = i;
        if (i < 0) {
            throw new IllegalStateException("count数异常");
        }
        if (i == 0) {
            handleLastMessage(message);
        }
    }

    public final synchronized void increaseCount() {
        this.count++;
    }

    public final void sendMsg() {
        sendMsgDelayed(0L);
    }

    public final void sendMsgDelayed(long j) {
        increaseCount();
        if (j <= 0) {
            sendEmptyMessage(0);
        } else {
            sendEmptyMessageDelayed(0, j);
        }
    }
}

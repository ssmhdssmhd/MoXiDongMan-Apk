package com.wsw.cospa.web;

import com.wsw.cospa.web.controller.SourceDebugWebSocket;
import fi.iki.elonen.Cdo;
import fi.iki.elonen.NanoHTTPD;

/* loaded from: classes2.dex */
public class WebSocketServer extends Cdo {
    public WebSocketServer(int i) {
        super(i);
    }

    @Override // fi.iki.elonen.Cdo
    public Cdo.Cfor openWebSocket(NanoHTTPD.IHTTPSession iHTTPSession) {
        if (iHTTPSession.getUri().equals("/sourceDebug")) {
            return new SourceDebugWebSocket(iHTTPSession);
        }
        return null;
    }
}

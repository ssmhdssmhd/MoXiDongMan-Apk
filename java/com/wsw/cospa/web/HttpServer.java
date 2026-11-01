package com.wsw.cospa.web;

import android.support.v4.on0;
import android.support.v4.pk0;
import com.google.gson.Gson;
import com.wsw.cospa.web.controller.BookshelfController;
import com.wsw.cospa.web.controller.SourceController;
import com.wsw.cospa.web.utils.AssetsWeb;
import com.wsw.cospa.web.utils.ReturnData;
import fi.iki.elonen.NanoHTTPD;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class HttpServer extends NanoHTTPD {
    private AssetsWeb assetsWeb;

    public HttpServer(int i) {
        super(i);
        this.assetsWeb = new AssetsWeb("web");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0114  */
    @Override // fi.iki.elonen.NanoHTTPD
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession iHTTPSession) {
        char c;
        ReturnData returnDataSaveSource;
        String uri = iHTTPSession.getUri();
        try {
            String strName = iHTTPSession.getMethod().name();
            int iHashCode = strName.hashCode();
            char c2 = 0;
            if (iHashCode != -531492226) {
                if (iHashCode != 70454) {
                    c = (iHashCode == 2461856 && strName.equals("POST")) ? (char) 1 : (char) 65535;
                } else if (strName.equals("GET")) {
                    c = 2;
                }
            } else if (strName.equals("OPTIONS")) {
                c = 0;
            }
            if (c == 0) {
                NanoHTTPD.Response responseNewFixedLengthResponse = NanoHTTPD.newFixedLengthResponse("");
                responseNewFixedLengthResponse.m27571if(pk0.e, "POST");
                responseNewFixedLengthResponse.m27571if(pk0.d, "content-type");
                responseNewFixedLengthResponse.m27571if(pk0.f, iHTTPSession.getHeaders().get(pk0.Cdo.f5085new));
                return responseNewFixedLengthResponse;
            }
            ReturnData source = null;
            if (c == 1) {
                HashMap map = new HashMap();
                iHTTPSession.parseBody(map);
                String str = map.get("postData");
                switch (uri.hashCode()) {
                    case -1786899097:
                        if (!uri.equals("/saveSource")) {
                            c2 = 65535;
                            break;
                        } else {
                            break;
                        }
                    case -1124152523:
                        if (uri.equals("/saveBook")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case -218100802:
                        if (uri.equals("/deleteSources")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 440702956:
                        if (uri.equals("/saveSources")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                if (c2 == 0) {
                    returnDataSaveSource = new SourceController().saveSource(str);
                } else if (c2 == 1) {
                    returnDataSaveSource = new SourceController().saveSources(str);
                } else if (c2 == 2) {
                    returnDataSaveSource = new BookshelfController().saveBook(str);
                } else if (c2 == 3) {
                    returnDataSaveSource = new SourceController().deleteSources(str);
                }
                source = returnDataSaveSource;
            } else if (c == 2) {
                Map<String, List<String>> parameters = iHTTPSession.getParameters();
                switch (uri.hashCode()) {
                    case -1791167991:
                        if (!uri.equals("/getBookContent")) {
                            c2 = 65535;
                            break;
                        } else {
                            c2 = 4;
                            break;
                        }
                    case 153309122:
                        if (uri.equals("/getSource")) {
                            break;
                        }
                        break;
                    case 457615601:
                        if (uri.equals("/getSources")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 1128280026:
                        if (uri.equals("/getBookshelf")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1995340612:
                        if (uri.equals("/getChapterList")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                if (c2 == 0) {
                    source = new SourceController().getSource(parameters);
                } else if (c2 == 1) {
                    source = new SourceController().getSources();
                } else if (c2 == 2) {
                    source = new BookshelfController().getBookshelf();
                } else if (c2 == 3) {
                    source = new BookshelfController().getChapterList(parameters);
                } else if (c2 == 4) {
                    source = new BookshelfController().getBookContent(parameters);
                }
            }
            if (source != null) {
                NanoHTTPD.Response responseNewFixedLengthResponse2 = NanoHTTPD.newFixedLengthResponse(new Gson().toJson(source));
                responseNewFixedLengthResponse2.m27571if(pk0.e, "GET, POST");
                responseNewFixedLengthResponse2.m27571if(pk0.f, iHTTPSession.getHeaders().get(pk0.Cdo.f5085new));
                return responseNewFixedLengthResponse2;
            }
            if (uri.endsWith(on0.f4694final)) {
                uri = uri + "index.html";
            }
            return this.assetsWeb.getResponse(uri);
        } catch (Exception e) {
            return NanoHTTPD.newFixedLengthResponse(e.getMessage());
        }
    }
}

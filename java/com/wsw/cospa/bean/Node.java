package com.wsw.cospa.bean;

import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;

/* loaded from: classes2.dex */
public class Node {
    public Map<String, Node> children = new HashMap();
    public boolean isDir;
    public String name;
    public Node parent;
    public String path;
    public boolean selected;
    public long size;
    public long time;
    public ZipEntry zipEntry;
}

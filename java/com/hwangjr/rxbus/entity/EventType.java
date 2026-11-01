package com.hwangjr.rxbus.entity;

import java.util.Objects;

/* loaded from: classes2.dex */
public class EventType {
    private final Class<?> clazz;
    private final int hashCode;
    private final String tag;

    public EventType(String str, Class<?> cls) {
        Objects.requireNonNull(str, "EventType Tag cannot be null.");
        Objects.requireNonNull(cls, "EventType Clazz cannot be null.");
        this.tag = str;
        this.clazz = cls;
        this.hashCode = ((str.hashCode() + 31) * 31) + cls.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EventType eventType = (EventType) obj;
        return this.tag.equals(eventType.tag) && this.clazz == eventType.clazz;
    }

    public int hashCode() {
        return this.hashCode;
    }

    public String toString() {
        return "[EventType " + this.tag + " && " + this.clazz + "]";
    }
}

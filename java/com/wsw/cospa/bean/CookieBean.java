package com.wsw.cospa.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class CookieBean implements Parcelable {
    public static final Parcelable.Creator<CookieBean> CREATOR = new Parcelable.Creator<CookieBean>() { // from class: com.wsw.cospa.bean.CookieBean.5
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CookieBean createFromParcel(Parcel parcel) {
            return new CookieBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CookieBean[] newArray(int i) {
            return new CookieBean[i];
        }
    };
    private String url;
    private Map<String, String> variable = new HashMap();
    private String variableStr;

    public CookieBean(Parcel parcel) {
        this.url = parcel.readString();
        this.variableStr = parcel.readString();
        initVariable();
    }

    private void initVariable() {
        String str = this.variableStr;
        if (str == null || str.isEmpty() || !this.variableStr.equals("null")) {
            return;
        }
        this.variable = (Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(this.variableStr, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.CookieBean.1
        }.getType());
    }

    public Object clone() throws CloneNotSupportedException {
        CookieBean cookieBean = (CookieBean) super.clone();
        cookieBean.url = this.url;
        cookieBean.variableStr = this.variableStr;
        return cookieBean;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getUrl() {
        return this.url;
    }

    public Map<String, String> getVariable() {
        Map<String, String> map = this.variable;
        if (map != null && !map.isEmpty()) {
            return this.variable;
        }
        String str = this.variableStr;
        if (str == null || str.isEmpty() || this.variableStr.equals("null")) {
            return new HashMap();
        }
        Map<String, String> map2 = (Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(this.variableStr, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.CookieBean.2
        }.getType());
        this.variable = map2;
        return map2;
    }

    public String getVariableStr() {
        return this.variableStr;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVariable(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        Map<String, String> map2 = this.variable;
        if (map2 == null || map2.isEmpty()) {
            String str = this.variableStr;
            if (str == null || str.isEmpty() || this.variableStr.equals("null")) {
                this.variable = map;
            } else {
                this.variable = (Map) new GsonBuilder().disableHtmlEscaping().create().fromJson(this.variableStr, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.CookieBean.3
                }.getType());
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    this.variable.put(entry.getKey(), entry.getValue());
                }
            }
        } else {
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                this.variable.put(entry2.getKey(), entry2.getValue());
            }
        }
        this.variableStr = new GsonBuilder().disableHtmlEscaping().create().toJson(this.variable, new TypeToken<Map<String, String>>() { // from class: com.wsw.cospa.bean.CookieBean.4
        }.getType());
    }

    public void setVariableStr(String str) {
        this.variableStr = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.url);
        parcel.writeString(this.variableStr);
    }

    public CookieBean() {
    }

    public CookieBean(String str, String str2) {
        this.url = str;
        this.variableStr = str2;
    }
}

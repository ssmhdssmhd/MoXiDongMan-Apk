package android.support.v4;

import java.io.Serializable;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class tl0 implements Serializable {
    private Map<String, String> headerMap;
    private String originUrl;
    private String thumbnailUrl;

    public Map<String, String> getHeaderMap() {
        return this.headerMap;
    }

    public String getOriginUrl() {
        return this.originUrl;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public void setHeaderMap(Map<String, String> map) {
        this.headerMap = map;
    }

    public void setOriginUrl(String str) {
        this.originUrl = str;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    public String toString() {
        return "ImageInfo{thumbnailUrl='" + this.thumbnailUrl + "', originUrl='" + this.originUrl + '\'' + MessageFormatter.DELIM_STOP;
    }
}

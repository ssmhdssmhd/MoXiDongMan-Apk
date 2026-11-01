package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.Predicate;
import com.jayway.jsonpath.internal.Path;
import com.jayway.jsonpath.spi.mapper.MappingException;
import java.util.HashMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
public class PredicateContextImpl implements Predicate.PredicateContext {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) PredicateContextImpl.class);
    private final Configuration configuration;
    private final Object contextDocument;
    private final HashMap<Path, Object> documentPathCache;
    private final Object rootDocument;

    public PredicateContextImpl(Object obj, Object obj2, Configuration configuration, HashMap<Path, Object> map) {
        this.contextDocument = obj;
        this.rootDocument = obj2;
        this.configuration = configuration;
        this.documentPathCache = map;
    }

    @Override // com.jayway.jsonpath.Predicate.PredicateContext
    public Configuration configuration() {
        return this.configuration;
    }

    public HashMap<Path, Object> documentPathCache() {
        return this.documentPathCache;
    }

    public Object evaluate(Path path) {
        if (!path.isRootPath()) {
            return path.evaluate(this.contextDocument, this.rootDocument, this.configuration).getValue();
        }
        if (!this.documentPathCache.containsKey(path)) {
            Object obj = this.rootDocument;
            Object value = path.evaluate(obj, obj, this.configuration).getValue();
            this.documentPathCache.put(path, value);
            return value;
        }
        logger.debug("Using cached result for root path: " + path.toString());
        return this.documentPathCache.get(path);
    }

    @Override // com.jayway.jsonpath.Predicate.PredicateContext
    public Object item() {
        return this.contextDocument;
    }

    @Override // com.jayway.jsonpath.Predicate.PredicateContext
    public Object root() {
        return this.rootDocument;
    }

    @Override // com.jayway.jsonpath.Predicate.PredicateContext
    public <T> T item(Class<T> cls) throws MappingException {
        return (T) configuration().mappingProvider().map(this.contextDocument, cls, this.configuration);
    }
}

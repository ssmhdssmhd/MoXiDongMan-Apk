package com.jayway.jsonpath.spi.mapper;

import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.TypeRef;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.concurrent.Callable;
import net.minidev.json.Cnew;
import net.minidev.json.writer.Ccase;
import net.minidev.json.writer.Ctry;

/* loaded from: classes2.dex */
public class JsonSmartMappingProvider implements MappingProvider {
    private static Ctry DEFAULT;
    private final Callable<Ctry> factory;

    public static class BigDecimalReader extends Ccase<BigDecimal> {
        public BigDecimalReader() {
            super(null);
        }

        @Override // net.minidev.json.writer.Ccase
        public BigDecimal convert(Object obj) {
            if (obj == null) {
                return null;
            }
            return new BigDecimal(obj.toString());
        }
    }

    public static class BigIntegerReader extends Ccase<BigInteger> {
        public BigIntegerReader() {
            super(null);
        }

        @Override // net.minidev.json.writer.Ccase
        public BigInteger convert(Object obj) {
            if (obj == null) {
                return null;
            }
            return new BigInteger(obj.toString());
        }
    }

    public static class BooleanReader extends Ccase<Boolean> {
        public BooleanReader() {
            super(null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.minidev.json.writer.Ccase
        public Boolean convert(Object obj) {
            if (obj == null) {
                return null;
            }
            if (Boolean.class.isAssignableFrom(obj.getClass())) {
                return (Boolean) obj;
            }
            throw new MappingException("can not map a " + obj.getClass() + " to " + Boolean.class.getName());
        }
    }

    public static class DateReader extends Ccase<Date> {
        public DateReader() {
            super(null);
        }

        @Override // net.minidev.json.writer.Ccase
        public Date convert(Object obj) {
            if (obj == null) {
                return null;
            }
            if (Date.class.isAssignableFrom(obj.getClass())) {
                return (Date) obj;
            }
            if (Long.class.isAssignableFrom(obj.getClass())) {
                return new Date(((Long) obj).longValue());
            }
            if (String.class.isAssignableFrom(obj.getClass())) {
                try {
                    return DateFormat.getInstance().parse(obj.toString());
                } catch (ParseException e) {
                    throw new MappingException(e);
                }
            }
            throw new MappingException("can not map a " + obj.getClass() + " to " + Date.class.getName());
        }
    }

    public static class DoubleReader extends Ccase<Double> {
        public DoubleReader() {
            super(null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.minidev.json.writer.Ccase
        public Double convert(Object obj) {
            if (obj == null) {
                return null;
            }
            if (Double.class.isAssignableFrom(obj.getClass())) {
                return (Double) obj;
            }
            if (Integer.class.isAssignableFrom(obj.getClass())) {
                return Double.valueOf(((Integer) obj).doubleValue());
            }
            if (Long.class.isAssignableFrom(obj.getClass())) {
                return Double.valueOf(((Long) obj).doubleValue());
            }
            if (BigDecimal.class.isAssignableFrom(obj.getClass())) {
                return Double.valueOf(((BigDecimal) obj).doubleValue());
            }
            if (Float.class.isAssignableFrom(obj.getClass())) {
                return Double.valueOf(((Float) obj).doubleValue());
            }
            if (String.class.isAssignableFrom(obj.getClass())) {
                return Double.valueOf(obj.toString());
            }
            throw new MappingException("can not map a " + obj.getClass() + " to " + Double.class.getName());
        }
    }

    public static class FloatReader extends Ccase<Float> {
        public FloatReader() {
            super(null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.minidev.json.writer.Ccase
        public Float convert(Object obj) {
            if (obj == null) {
                return null;
            }
            if (Float.class.isAssignableFrom(obj.getClass())) {
                return (Float) obj;
            }
            if (Integer.class.isAssignableFrom(obj.getClass())) {
                return Float.valueOf(((Integer) obj).floatValue());
            }
            if (Long.class.isAssignableFrom(obj.getClass())) {
                return Float.valueOf(((Long) obj).floatValue());
            }
            if (BigDecimal.class.isAssignableFrom(obj.getClass())) {
                return Float.valueOf(((BigDecimal) obj).floatValue());
            }
            if (Double.class.isAssignableFrom(obj.getClass())) {
                return Float.valueOf(((Double) obj).floatValue());
            }
            if (String.class.isAssignableFrom(obj.getClass())) {
                return Float.valueOf(obj.toString());
            }
            throw new MappingException("can not map a " + obj.getClass() + " to " + Float.class.getName());
        }
    }

    public static class IntegerReader extends Ccase<Integer> {
        public IntegerReader() {
            super(null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.minidev.json.writer.Ccase
        public Integer convert(Object obj) {
            if (obj == null) {
                return null;
            }
            if (Integer.class.isAssignableFrom(obj.getClass())) {
                return (Integer) obj;
            }
            if (Long.class.isAssignableFrom(obj.getClass())) {
                return Integer.valueOf(((Long) obj).intValue());
            }
            if (Double.class.isAssignableFrom(obj.getClass())) {
                return Integer.valueOf(((Double) obj).intValue());
            }
            if (BigDecimal.class.isAssignableFrom(obj.getClass())) {
                return Integer.valueOf(((BigDecimal) obj).intValue());
            }
            if (Float.class.isAssignableFrom(obj.getClass())) {
                return Integer.valueOf(((Float) obj).intValue());
            }
            if (String.class.isAssignableFrom(obj.getClass())) {
                return Integer.valueOf(obj.toString());
            }
            throw new MappingException("can not map a " + obj.getClass() + " to " + Integer.class.getName());
        }
    }

    public static class LongReader extends Ccase<Long> {
        public LongReader() {
            super(null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.minidev.json.writer.Ccase
        public Long convert(Object obj) {
            if (obj == null) {
                return null;
            }
            if (Long.class.isAssignableFrom(obj.getClass())) {
                return (Long) obj;
            }
            if (Integer.class.isAssignableFrom(obj.getClass())) {
                return Long.valueOf(((Integer) obj).longValue());
            }
            if (Double.class.isAssignableFrom(obj.getClass())) {
                return Long.valueOf(((Double) obj).longValue());
            }
            if (BigDecimal.class.isAssignableFrom(obj.getClass())) {
                return Long.valueOf(((BigDecimal) obj).longValue());
            }
            if (Float.class.isAssignableFrom(obj.getClass())) {
                return Long.valueOf(((Float) obj).longValue());
            }
            if (String.class.isAssignableFrom(obj.getClass())) {
                return Long.valueOf(obj.toString());
            }
            throw new MappingException("can not map a " + obj.getClass() + " to " + Long.class.getName());
        }
    }

    public static class StringReader extends Ccase<String> {
        public StringReader() {
            super(null);
        }

        @Override // net.minidev.json.writer.Ccase
        public String convert(Object obj) {
            if (obj == null) {
                return null;
            }
            return obj.toString();
        }
    }

    static {
        Ctry ctry = new Ctry();
        DEFAULT = ctry;
        ctry.m31743new(Long.class, new LongReader());
        DEFAULT.m31743new(Long.TYPE, new LongReader());
        DEFAULT.m31743new(Integer.class, new IntegerReader());
        DEFAULT.m31743new(Integer.TYPE, new IntegerReader());
        DEFAULT.m31743new(Double.class, new DoubleReader());
        DEFAULT.m31743new(Double.TYPE, new DoubleReader());
        DEFAULT.m31743new(Float.class, new FloatReader());
        DEFAULT.m31743new(Float.TYPE, new FloatReader());
        DEFAULT.m31743new(BigDecimal.class, new BigDecimalReader());
        DEFAULT.m31743new(String.class, new StringReader());
        DEFAULT.m31743new(Date.class, new DateReader());
        DEFAULT.m31743new(BigInteger.class, new BigIntegerReader());
        DEFAULT.m31743new(Boolean.TYPE, new BooleanReader());
    }

    public JsonSmartMappingProvider(final Ctry ctry) {
        this(new Callable<Ctry>() { // from class: com.jayway.jsonpath.spi.mapper.JsonSmartMappingProvider.1
            @Override // java.util.concurrent.Callable
            public Ctry call() {
                return ctry;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.jayway.jsonpath.spi.mapper.MappingProvider
    public <T> T map(Object obj, Class<T> cls, Configuration configuration) {
        if (obj == 0) {
            return null;
        }
        if (cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        try {
            return (configuration.jsonProvider().isMap(obj) || configuration.jsonProvider().isArray(obj)) ? (T) Cnew.m31614native(configuration.jsonProvider().toJson(obj), cls) : this.factory.call().m31740do(cls).convert(obj);
        } catch (Exception e) {
            throw new MappingException(e);
        }
    }

    public JsonSmartMappingProvider(Callable<Ctry> callable) {
        this.factory = callable;
    }

    public JsonSmartMappingProvider() {
        this(DEFAULT);
    }

    @Override // com.jayway.jsonpath.spi.mapper.MappingProvider
    public <T> T map(Object obj, TypeRef<T> typeRef, Configuration configuration) {
        throw new UnsupportedOperationException("Json-smart provider does not support TypeRef! Use a Jackson or Gson based provider");
    }
}

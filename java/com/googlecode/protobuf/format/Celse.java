package com.googlecode.protobuf.format;

import android.support.v4.i62;
import android.support.v4.np0;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.n;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* renamed from: com.googlecode.protobuf.format.else, reason: invalid class name */
/* loaded from: classes2.dex */
public class Celse extends Cgoto {

    /* renamed from: for, reason: not valid java name */
    private static final long f17997for = 4294967295L;

    /* renamed from: if, reason: not valid java name */
    private static JsonFactory f17998if = new JsonFactory();

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f17999new = BigInteger.valueOf(Long.MAX_VALUE).shiftLeft(1).add(BigInteger.ONE);

    /* renamed from: com.googlecode.protobuf.format.else$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18000do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f18000do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.INT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.SINT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.FIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.FIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f18000do[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m22563final(String str, JsonParser jsonParser, Cprotected cprotected, t1.Cif cif) throws IOException {
        JsonToken currentToken;
        JsonToken jsonTokenNextToken = jsonParser.nextToken();
        if (jsonTokenNextToken.equals(JsonToken.START_OBJECT)) {
            JsonToken jsonTokenNextToken2 = jsonParser.nextToken();
            while (jsonTokenNextToken2 != null && !jsonTokenNextToken2.equals(JsonToken.END_OBJECT)) {
                m22563final(str, jsonParser, cprotected, cif);
                jsonTokenNextToken2 = jsonParser.nextToken();
            }
            return;
        }
        if (jsonTokenNextToken.equals(JsonToken.START_ARRAY)) {
            do {
                m22563final(str, jsonParser, cprotected, cif);
                currentToken = jsonParser.getCurrentToken();
                if (currentToken == null) {
                    return;
                }
            } while (!currentToken.equals(JsonToken.END_ARRAY));
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m22564static(Descriptors.Celse celse, Object obj, JsonGenerator jsonGenerator) throws IOException {
        switch (Cdo.f18000do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
                jsonGenerator.writeNumber(((Integer) obj).intValue());
                break;
            case 4:
            case 5:
            case 6:
                jsonGenerator.writeNumber(((Long) obj).longValue());
                break;
            case 7:
                jsonGenerator.writeNumber(((Float) obj).floatValue());
                break;
            case 8:
                jsonGenerator.writeNumber(((Double) obj).doubleValue());
                break;
            case 9:
                jsonGenerator.writeBoolean(((Boolean) obj).booleanValue());
                break;
            case 10:
            case 11:
                jsonGenerator.writeNumber(np0.m5335do(((Integer) obj).intValue()));
                break;
            case 12:
            case 13:
                jsonGenerator.writeNumber(i62.m3292import(((Long) obj).longValue()));
                break;
            case 14:
                jsonGenerator.writeString((String) obj);
                break;
            case 15:
                jsonGenerator.writeBinary(((ByteString) obj).toByteArray());
                break;
            case 16:
                jsonGenerator.writeString(((Descriptors.Ccase) obj).mo19234for());
                break;
            case 17:
            case 18:
                jsonGenerator.writeStartObject();
                m22575switch((Message) obj, jsonGenerator);
                jsonGenerator.writeEndObject();
                break;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private Object m22565super(JsonParser jsonParser, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor, boolean z) throws IOException, JsonParseException {
        Message.Builder builderNewBuilderForField = cfor == null ? builder.newBuilderForField(celse) : cfor.f17161if.newBuilderForType();
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (!z) {
            if (currentToken.equals(JsonToken.START_OBJECT)) {
                JsonToken jsonTokenNextToken = jsonParser.nextToken();
                while (jsonTokenNextToken != null && !jsonTokenNextToken.equals(JsonToken.END_OBJECT)) {
                    m22572native(jsonParser, cprotected, builderNewBuilderForField);
                    jsonTokenNextToken = jsonParser.nextToken();
                }
            }
            return builderNewBuilderForField.build();
        }
        ByteString byteStringCopyFrom = ByteString.copyFrom(jsonParser.getBinaryValue());
        try {
            builderNewBuilderForField.mergeFrom(byteStringCopyFrom);
            return builderNewBuilderForField.build();
        } catch (n unused) {
            throw new RuntimeException("Failed to build " + celse.mo19235if() + " from " + byteStringCopyFrom);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private Object m22566throw(JsonParser jsonParser, Descriptors.Celse celse) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken.equals(JsonToken.VALUE_NULL)) {
            return null;
        }
        switch (Cdo.f18000do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
                return Integer.valueOf(jsonParser.getIntValue());
            case 4:
            case 5:
            case 6:
                return Long.valueOf(jsonParser.getLongValue());
            case 7:
                return Float.valueOf(jsonParser.getFloatValue());
            case 8:
                return Double.valueOf(jsonParser.getDoubleValue());
            case 9:
                return Boolean.valueOf(jsonParser.getBooleanValue());
            case 10:
            case 11:
                long longValue = jsonParser.getLongValue();
                if (longValue >= 0 && longValue <= 4294967295L) {
                    return Integer.valueOf((int) longValue);
                }
                throw new NumberFormatException("Number must be positive: " + longValue);
            case 12:
            case 13:
                BigInteger bigIntegerValue = jsonParser.getBigIntegerValue();
                if (bigIntegerValue.compareTo(BigInteger.ZERO) != -1 && bigIntegerValue.compareTo(f17999new) != 1) {
                    return Long.valueOf(bigIntegerValue.longValue());
                }
                throw new NumberFormatException("Number must be positive: " + bigIntegerValue);
            case 14:
                return jsonParser.getText();
            case 15:
                return ByteString.copyFrom(jsonParser.getBinaryValue());
            case 16:
                Descriptors.Ctry enumType = celse.getEnumType();
                if (currentToken.equals(JsonToken.VALUE_NUMBER_INT)) {
                    int intValue = jsonParser.getIntValue();
                    Descriptors.Ccase ccaseFindValueByNumber = enumType.findValueByNumber(intValue);
                    if (ccaseFindValueByNumber != null) {
                        return ccaseFindValueByNumber;
                    }
                    throw new RuntimeException("Enum type \"" + enumType.mo19235if() + "\" has no value with number " + intValue + ".");
                }
                String text = jsonParser.getText();
                Descriptors.Ccase ccaseM19353case = enumType.m19353case(text);
                if (ccaseM19353case != null) {
                    return ccaseM19353case;
                }
                throw new RuntimeException("Enum type \"" + enumType.mo19235if() + "\" has no value named \"" + text + "\".");
            case 17:
            case 18:
                throw new RuntimeException("Can't get here.");
            default:
                return null;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m22567throws(Descriptors.Celse celse, Object obj, JsonGenerator jsonGenerator) throws IOException {
        if (celse.m19286extends()) {
            if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                jsonGenerator.writeFieldName(celse.m19291native().mo19235if());
            } else {
                jsonGenerator.writeFieldName(celse.mo19235if());
            }
        } else if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
            jsonGenerator.writeFieldName(celse.m19291native().mo19234for());
        } else {
            jsonGenerator.writeFieldName(celse.mo19234for());
        }
        if (!celse.isRepeated()) {
            m22564static(celse, obj, jsonGenerator);
            return;
        }
        jsonGenerator.writeStartArray();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            m22564static(celse, it.next(), jsonGenerator);
        }
        jsonGenerator.writeEndArray();
    }

    /* renamed from: while, reason: not valid java name */
    private void m22568while(JsonParser jsonParser, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor, boolean z) throws IOException {
        Object objM22565super = celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE ? m22565super(jsonParser, cprotected, builder, celse, cfor, z) : m22566throw(jsonParser, celse);
        if (objM22565super != null) {
            if (celse.isRepeated()) {
                builder.addRepeatedField(celse, objM22565super);
            } else {
                builder.setField(celse, objM22565super);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public JsonGenerator mo22569const(OutputStream outputStream) throws IOException {
        JsonGenerator jsonGeneratorCreateJsonGenerator = f17998if.createJsonGenerator(outputStream, JsonEncoding.UTF8);
        jsonGeneratorCreateJsonGenerator.disable(JsonGenerator.Feature.AUTO_CLOSE_TARGET);
        return jsonGeneratorCreateJsonGenerator;
    }

    /* renamed from: default, reason: not valid java name */
    public void m22570default(t1 t1Var, JsonGenerator jsonGenerator) throws IOException {
        for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
            t1.Cfor value = entry.getValue();
            jsonGenerator.writeArrayFieldStart(entry.getKey().toString());
            Iterator<Long> it = value.m21225public().iterator();
            while (it.hasNext()) {
                jsonGenerator.writeNumber(it.next().longValue());
            }
            Iterator<Integer> it2 = value.m21219const().iterator();
            while (it2.hasNext()) {
                jsonGenerator.writeNumber(it2.next().intValue());
            }
            Iterator<Long> it3 = value.m21221final().iterator();
            while (it3.hasNext()) {
                jsonGenerator.writeNumber(it3.next().longValue());
            }
            Iterator<ByteString> it4 = value.m21229while().iterator();
            while (it4.hasNext()) {
                jsonGenerator.writeBinary(it4.next().toByteArray());
            }
            for (t1 t1Var2 : value.m21226super()) {
                jsonGenerator.writeStartObject();
                m22570default(t1Var2, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndArray();
        }
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: else */
    public void mo22553else(Message message, OutputStream outputStream, Charset charset) throws IOException {
        JsonGenerator jsonGeneratorMo22569const = mo22569const(outputStream);
        m22573public(message, jsonGeneratorMo22569const);
        jsonGeneratorMo22569const.close();
    }

    /* renamed from: import, reason: not valid java name */
    public void m22571import(JsonParser jsonParser, Cprotected cprotected, Message.Builder builder) throws IOException, JsonParseException {
        JsonToken jsonTokenNextToken = jsonParser.nextToken();
        if (jsonTokenNextToken.equals(JsonToken.START_OBJECT)) {
            jsonTokenNextToken = jsonParser.nextToken();
        }
        while (jsonTokenNextToken != null && !jsonTokenNextToken.equals(JsonToken.END_OBJECT)) {
            m22572native(jsonParser, cprotected, builder);
            jsonTokenNextToken = jsonParser.nextToken();
        }
        if (jsonParser.nextToken() != null) {
            throw new RuntimeException("Expecting the end of the stream, but there seems to be more data!  Check the input for a valid JSON format.");
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m22572native(JsonParser jsonParser, Cprotected cprotected, Message.Builder builder) throws IOException, JsonParseException {
        Cprotected.Cfor cforM20979final;
        Descriptors.Celse celseM19334this;
        Descriptors.Cif descriptorForType = builder.getDescriptorForType();
        boolean z = false;
        if (jsonParser.getCurrentToken() != null) {
            String currentName = jsonParser.getCurrentName();
            if (currentName.contains(".")) {
                cforM20979final = cprotected.m20979final(currentName);
                if (cforM20979final == null) {
                    throw new RuntimeException("Extension \"" + currentName + "\" not found in the ExtensionRegistry.");
                }
                if (cforM20979final.f17160do.m19282class() != descriptorForType) {
                    throw new RuntimeException("Extension \"" + currentName + "\" does not extend message type \"" + descriptorForType.mo19235if() + "\".");
                }
                celseM19334this = cforM20979final.f17160do;
            } else {
                celseM19334this = descriptorForType.m19334this(currentName);
                cforM20979final = null;
            }
            if (celseM19334this == null && (celseM19334this = descriptorForType.m19334this(currentName.toLowerCase(Locale.US))) != null && celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP) {
                celseM19334this = null;
            }
            celseM19320break = (celseM19334this == null || celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP || celseM19334this.m19291native().mo19234for().equals(currentName) || celseM19334this.m19291native().mo19235if().equalsIgnoreCase(currentName)) ? celseM19334this : null;
            if (celseM19320break == null && i62.m3289for(currentName)) {
                celseM19320break = descriptorForType.m19320break(Integer.parseInt(currentName));
                z = true;
            }
            if (celseM19320break == null) {
                t1.Cif cifM21191this = t1.m21191this();
                m22563final(currentName, jsonParser, cprotected, cifM21191this);
                builder.setUnknownFields(cifM21191this.build());
            }
        } else {
            cforM20979final = null;
        }
        if (celseM19320break != null) {
            if (!jsonParser.nextToken().equals(JsonToken.START_ARRAY)) {
                m22568while(jsonParser, cprotected, builder, celseM19320break, cforM20979final, z);
                return;
            }
            JsonToken jsonTokenNextToken = jsonParser.nextToken();
            while (!jsonTokenNextToken.equals(JsonToken.END_ARRAY)) {
                m22568while(jsonParser, cprotected, builder, celseM19320break, cforM20979final, z);
                jsonTokenNextToken = jsonParser.nextToken();
            }
        }
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: new */
    public void mo22557new(InputStream inputStream, Charset charset, Cprotected cprotected, Message.Builder builder) throws IOException, JsonParseException {
        m22571import(f17998if.createJsonParser(inputStream), cprotected, builder);
    }

    /* renamed from: public, reason: not valid java name */
    public void m22573public(Message message, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeStartObject();
        m22575switch(message, jsonGenerator);
        jsonGenerator.writeEndObject();
        jsonGenerator.flush();
    }

    /* renamed from: return, reason: not valid java name */
    public void m22574return(Descriptors.Celse celse, Object obj, JsonGenerator jsonGenerator) throws IOException {
        m22567throws(celse, obj, jsonGenerator);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m22575switch(Message message, JsonGenerator jsonGenerator) throws IOException {
        for (Map.Entry<Descriptors.Celse, Object> entry : message.getAllFields().entrySet()) {
            m22574return(entry.getKey(), entry.getValue(), jsonGenerator);
        }
        m22570default(message.getUnknownFields(), jsonGenerator);
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: this */
    public void mo22561this(t1 t1Var, OutputStream outputStream, Charset charset) throws IOException {
        JsonGenerator jsonGeneratorMo22569const = mo22569const(outputStream);
        jsonGeneratorMo22569const.writeStartObject();
        m22570default(t1Var, jsonGeneratorMo22569const);
        jsonGeneratorMo22569const.writeEndObject();
        jsonGeneratorMo22569const.close();
    }
}

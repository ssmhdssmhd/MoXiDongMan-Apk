package com.googlecode.protobuf.format;

import android.support.v4.i62;
import com.google.protobuf.ByteString;
import com.google.protobuf.Cprotected;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Message;
import com.google.protobuf.t1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import javax.xml.stream.events.XMLEvent;

/* renamed from: com.googlecode.protobuf.format.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccatch extends Cgoto {

    /* renamed from: case, reason: not valid java name */
    private static final String f17988case = "type";

    /* renamed from: else, reason: not valid java name */
    private static final String f17989else = "unknown-field";

    /* renamed from: goto, reason: not valid java name */
    private static final String f17990goto = "index";

    /* renamed from: new, reason: not valid java name */
    private static final String f17991new = "message";

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ boolean f17992this = false;

    /* renamed from: try, reason: not valid java name */
    private static final String f17993try = "extension";

    /* renamed from: if, reason: not valid java name */
    private XMLOutputFactory f17995if = XMLOutputFactory.newFactory();

    /* renamed from: for, reason: not valid java name */
    private XMLInputFactory f17994for = XMLInputFactory.newFactory();

    /* renamed from: com.googlecode.protobuf.format.catch$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17996do;

        static {
            int[] iArr = new int[Descriptors.Celse.Cif.values().length];
            f17996do = iArr;
            try {
                iArr[Descriptors.Celse.Cif.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.INT64.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.SINT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.SINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.SFIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.FIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.FIXED64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17996do[Descriptors.Celse.Cif.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    private void m22545default(String str, String str2, XMLStreamWriter xMLStreamWriter) throws XMLStreamException {
        xMLStreamWriter.writeStartElement(f17989else);
        xMLStreamWriter.writeAttribute(f17990goto, str);
        xMLStreamWriter.writeCharacters(str2);
        xMLStreamWriter.writeEndElement();
    }

    /* renamed from: final, reason: not valid java name */
    private Message.Builder m22546final(Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor) {
        return cfor == null ? builder.newBuilderForField(celse) : cfor.f17161if.newBuilderForType();
    }

    /* renamed from: static, reason: not valid java name */
    private void m22547static(Descriptors.Celse celse, Object obj, XMLStreamWriter xMLStreamWriter) throws XMLStreamException, IOException {
        switch (Cdo.f17996do[celse.m19296static().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                xMLStreamWriter.writeCharacters(obj.toString());
                break;
            case 11:
            case 12:
                xMLStreamWriter.writeCharacters(i62.m3293native(((Integer) obj).intValue()));
                break;
            case 13:
            case 14:
                xMLStreamWriter.writeCharacters(i62.m3295public(((Long) obj).longValue()));
                break;
            case 15:
                xMLStreamWriter.writeCharacters(i62.m3291if((ByteString) obj));
                break;
            case 16:
                xMLStreamWriter.writeCharacters(((Descriptors.Ccase) obj).mo19234for());
                break;
            case 17:
            case 18:
                m22560switch((Message) obj, xMLStreamWriter);
                break;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m22548super(String str, XMLEventReader xMLEventReader, XMLEvent xMLEvent, Cprotected cprotected, t1.Cif cif) throws XMLStreamException {
        if (!xMLEvent.isStartElement()) {
            xMLEvent.isCharacters();
            return;
        }
        int i = 1;
        while (xMLEventReader.hasNext()) {
            XMLEvent xMLEventNextEvent = xMLEventReader.nextEvent();
            if (xMLEventNextEvent.isEndElement()) {
                i--;
                if (i <= 0 && xMLEventReader.peek().isEndElement()) {
                    return;
                }
            } else if (xMLEventNextEvent.isStartElement()) {
                i++;
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private Object m22549throw(XMLEventReader xMLEventReader, XMLEvent xMLEvent, Cprotected cprotected, Message.Builder builder, Descriptors.Celse celse, Cprotected.Cfor cfor) throws XMLStreamException, NumberFormatException {
        Message.Builder builderM22546final = m22546final(builder, celse, cfor);
        int i = 0;
        while (xMLEvent.isStartElement()) {
            i++;
            m22556native(xMLEventReader, xMLEvent, cprotected, builderM22546final);
            XMLEvent xMLEventNextTag = xMLEventReader.nextTag();
            if (xMLEventNextTag.isEndElement()) {
                i--;
                if (i <= 0 && xMLEventReader.peek().isEndElement()) {
                    break;
                }
            } else if (xMLEventNextTag.isStartElement()) {
                i++;
            }
            if (!xMLEventReader.hasNext() || (xMLEvent = xMLEventReader.nextTag()) == null) {
                break;
            }
        }
        return builderM22546final.build();
    }

    /* renamed from: throws, reason: not valid java name */
    private void m22550throws(Descriptors.Celse celse, Object obj, XMLStreamWriter xMLStreamWriter) throws XMLStreamException, IOException {
        if (celse.m19286extends()) {
            xMLStreamWriter.writeStartElement(f17993try);
            if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
                xMLStreamWriter.writeAttribute("type", celse.m19291native().mo19235if());
            } else {
                xMLStreamWriter.writeAttribute("type", celse.mo19235if());
            }
        } else if (celse.m19296static() == Descriptors.Celse.Cif.GROUP) {
            xMLStreamWriter.writeStartElement(celse.m19291native().mo19234for());
        } else {
            xMLStreamWriter.writeStartElement(celse.mo19234for());
        }
        m22547static(celse, obj, xMLStreamWriter);
        xMLStreamWriter.writeEndElement();
    }

    /* renamed from: while, reason: not valid java name */
    private Object m22551while(XMLEventReader xMLEventReader, Descriptors.Celse celse, String str) throws NumberFormatException {
        if (str == null) {
            return null;
        }
        switch (Cdo.f17996do[celse.m19296static().ordinal()]) {
            case 1:
            case 3:
            case 5:
                return Integer.valueOf(i62.m3297this(str));
            case 2:
            case 4:
            case 6:
                return Long.valueOf(i62.m3281break(str));
            case 7:
                return Float.valueOf(i62.m3290goto(str));
            case 8:
                return Double.valueOf(i62.m3287else(str));
            case 9:
                return Boolean.valueOf(i62.m3282case(str));
            case 10:
                return str;
            case 11:
            case 12:
                return Integer.valueOf(i62.m3284class(str));
            case 13:
            case 14:
                return Long.valueOf(i62.m3285const(str));
            case 15:
                return i62.m3300while(str);
            case 16:
                Descriptors.Ctry enumType = celse.getEnumType();
                if (!i62.m3289for(str)) {
                    Descriptors.Ccase ccaseM19353case = enumType.m19353case(str);
                    if (ccaseM19353case != null) {
                        return ccaseM19353case;
                    }
                    throw new RuntimeException("Enum type \"" + enumType.mo19235if() + "\" has no value named \"" + str + "\".");
                }
                int iM3297this = i62.m3297this(str);
                Descriptors.Ccase ccaseFindValueByNumber = enumType.findValueByNumber(iM3297this);
                if (ccaseFindValueByNumber != null) {
                    return ccaseFindValueByNumber;
                }
                throw new RuntimeException("Enum type \"" + enumType.mo19235if() + "\" has no value with number " + iM3297this + ".");
            case 17:
            case 18:
                throw new RuntimeException("Can't get here.");
            default:
                return null;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public XMLStreamWriter m22552const(OutputStream outputStream) throws XMLStreamException {
        XMLStreamWriter xMLStreamWriterCreateXMLStreamWriter = this.f17995if.createXMLStreamWriter(outputStream);
        xMLStreamWriterCreateXMLStreamWriter.writeStartDocument();
        return xMLStreamWriterCreateXMLStreamWriter;
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: else, reason: not valid java name */
    public void mo22553else(Message message, OutputStream outputStream, Charset charset) throws IOException {
        try {
            XMLStreamWriter xMLStreamWriterM22552const = m22552const(outputStream);
            m22558public(message, xMLStreamWriterM22552const);
            xMLStreamWriterM22552const.writeEndDocument();
        } catch (XMLStreamException e) {
            throw new IOException((Throwable) e);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void m22554extends(t1 t1Var, XMLStreamWriter xMLStreamWriter) throws XMLStreamException {
        for (Map.Entry<Integer, t1.Cfor> entry : t1Var.m21196if().entrySet()) {
            t1.Cfor value = entry.getValue();
            String string = entry.getKey().toString();
            Iterator<Long> it = value.m21225public().iterator();
            while (it.hasNext()) {
                m22545default(string, i62.m3295public(it.next().longValue()), xMLStreamWriter);
            }
            Iterator<Integer> it2 = value.m21219const().iterator();
            while (it2.hasNext()) {
                m22545default(string, String.format(null, "0x%08x", Integer.valueOf(it2.next().intValue())), xMLStreamWriter);
            }
            Iterator<Long> it3 = value.m21221final().iterator();
            while (it3.hasNext()) {
                m22545default(string, String.format(null, "0x%016x", Long.valueOf(it3.next().longValue())), xMLStreamWriter);
            }
            Iterator<ByteString> it4 = value.m21229while().iterator();
            while (it4.hasNext()) {
                m22545default(string, i62.m3291if(it4.next()), xMLStreamWriter);
            }
            for (t1 t1Var2 : value.m21226super()) {
                xMLStreamWriter.writeStartElement(f17989else);
                xMLStreamWriter.writeAttribute(f17990goto, string);
                m22554extends(t1Var2, xMLStreamWriter);
                xMLStreamWriter.writeEndElement();
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m22555import(XMLEventReader xMLEventReader, Cprotected cprotected, Message.Builder builder) throws NumberFormatException, IOException {
        try {
            XMLEvent xMLEventNextTag = xMLEventReader.nextTag();
            if (xMLEventNextTag.isStartElement()) {
                xMLEventNextTag.asStartElement().getName().getLocalPart();
                while (xMLEventReader.hasNext() && !xMLEventReader.peek().isEndDocument()) {
                    XMLEvent xMLEventNextTag2 = xMLEventReader.nextTag();
                    if (!xMLEventNextTag2.isStartElement()) {
                        if (xMLEventNextTag2.isEndElement()) {
                            return;
                        } else {
                            throw new RuntimeException("Expecting the end of the stream, but there seems to be more data!  Check the input for a valid XML format.");
                        }
                    } else {
                        m22556native(xMLEventReader, xMLEventNextTag2, cprotected, builder);
                        xMLEventReader.nextTag();
                    }
                }
            }
        } catch (XMLStreamException e) {
            throw new IOException((Throwable) e);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m22556native(XMLEventReader xMLEventReader, XMLEvent xMLEvent, Cprotected cprotected, Message.Builder builder) throws XMLStreamException, NumberFormatException {
        Cprotected.Cfor cforM20979final;
        Descriptors.Celse celseM19320break;
        String value;
        Descriptors.Cif descriptorForType = builder.getDescriptorForType();
        String localPart = xMLEvent.asStartElement().getName().getLocalPart();
        XMLEvent xMLEventNextEvent = xMLEventReader.nextEvent();
        Object objM22549throw = null;
        if (xMLEventNextEvent == null) {
            cforM20979final = null;
            celseM19320break = null;
        } else if (localPart.equalsIgnoreCase(f17993try)) {
            cforM20979final = cprotected.m20979final(xMLEvent.asStartElement().getAttributeByName(new QName("type")).getValue());
            if (cforM20979final == null) {
                throw new RuntimeException("Extension \"" + localPart + "\" not found in the ExtensionRegistry.");
            }
            if (cforM20979final.f17160do.m19282class() != descriptorForType) {
                throw new RuntimeException("Extension \"" + localPart + "\" does not extend message type \"" + descriptorForType.mo19235if() + "\".");
            }
            celseM19320break = cforM20979final.f17160do;
        } else {
            Descriptors.Celse celseM19334this = descriptorForType.m19334this(localPart);
            if (celseM19334this == null && (celseM19334this = descriptorForType.m19334this(localPart.toLowerCase(Locale.US))) != null && celseM19334this.m19296static() != Descriptors.Celse.Cif.GROUP) {
                celseM19334this = null;
            }
            if (celseM19334this != null && celseM19334this.m19296static() == Descriptors.Celse.Cif.GROUP && !celseM19334this.m19291native().mo19234for().equals(localPart) && !celseM19334this.m19291native().mo19235if().equalsIgnoreCase(localPart)) {
                celseM19334this = null;
            }
            String str = (!localPart.equalsIgnoreCase(f17989else) || (value = xMLEvent.asStartElement().getAttributeByName(new QName(f17990goto)).getValue()) == null) ? localPart : value;
            celseM19320break = (celseM19334this == null && i62.m3289for(str)) ? descriptorForType.m19320break(Integer.parseInt(str)) : celseM19334this;
            if (celseM19320break == null) {
                t1.Cif cifM21191this = t1.m21191this();
                m22548super(str, xMLEventReader, xMLEventNextEvent, cprotected, cifM21191this);
                builder.setUnknownFields(cifM21191this.build());
            }
            cforM20979final = null;
        }
        if (celseM19320break != null) {
            if (xMLEventNextEvent.isCharacters()) {
                objM22549throw = m22551while(xMLEventReader, celseM19320break, xMLEventNextEvent.asCharacters().getData());
            } else if ((xMLEventNextEvent.isStartElement() || xMLEventNextEvent.isEndElement()) && celseM19320break.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
                objM22549throw = m22549throw(xMLEventReader, xMLEventNextEvent, cprotected, builder, celseM19320break, cforM20979final);
            }
            if (objM22549throw != null) {
                if (celseM19320break.isRepeated()) {
                    builder.addRepeatedField(celseM19320break, objM22549throw);
                } else {
                    builder.setField(celseM19320break, objM22549throw);
                }
            }
        }
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: new, reason: not valid java name */
    public void mo22557new(InputStream inputStream, Charset charset, Cprotected cprotected, Message.Builder builder) throws NumberFormatException, IOException {
        try {
            m22555import(this.f17994for.createXMLEventReader(inputStream), cprotected, builder);
        } catch (XMLStreamException e) {
            throw new IOException((Throwable) e);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m22558public(Message message, XMLStreamWriter xMLStreamWriter) throws IOException {
        try {
            xMLStreamWriter.writeStartElement(message.getDescriptorForType().mo19234for());
            m22560switch(message, xMLStreamWriter);
            xMLStreamWriter.writeEndElement();
            xMLStreamWriter.flush();
        } catch (XMLStreamException e) {
            throw new IOException((Throwable) e);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m22559return(Descriptors.Celse celse, Object obj, XMLStreamWriter xMLStreamWriter) throws IOException {
        try {
            if (!celse.isRepeated()) {
                m22550throws(celse, obj, xMLStreamWriter);
                return;
            }
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m22550throws(celse, it.next(), xMLStreamWriter);
            }
        } catch (XMLStreamException e) {
            throw new IOException((Throwable) e);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m22560switch(Message message, XMLStreamWriter xMLStreamWriter) throws XMLStreamException, IOException {
        for (Map.Entry<Descriptors.Celse, Object> entry : message.getAllFields().entrySet()) {
            m22559return(entry.getKey(), entry.getValue(), xMLStreamWriter);
        }
        m22554extends(message.getUnknownFields(), xMLStreamWriter);
    }

    @Override // com.googlecode.protobuf.format.Cgoto
    /* renamed from: this, reason: not valid java name */
    public void mo22561this(t1 t1Var, OutputStream outputStream, Charset charset) throws IOException {
        try {
            XMLStreamWriter xMLStreamWriterM22552const = m22552const(outputStream);
            xMLStreamWriterM22552const.writeStartElement(f17991new);
            m22554extends(t1Var, xMLStreamWriterM22552const);
            xMLStreamWriterM22552const.writeEndElement();
            xMLStreamWriterM22552const.close();
        } catch (XMLStreamException e) {
            throw new IOException((Throwable) e);
        }
    }
}
